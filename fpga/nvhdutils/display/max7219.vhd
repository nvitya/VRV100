-------------------------------------------------------------------------------
-- This file is a part of the project at https://github.com/nvitya/nvhdutils
-- Copyright (c) 2021 Viktor Nagy, nvitya
--
-- This software is provided 'as-is', without any express or implied warranty.
-- In no event will the authors be held liable for any damages arising from
-- the use of this software. Permission is granted to anyone to use this
-- software for any purpose, including commercial applications, and to alter
-- it and redistribute it freely, subject to the following restrictions:
--
-- 1. The origin of this software must not be misrepresented; you must not
--    claim that you wrote the original software. If you use this software in
--    a product, an acknowledgment in the product documentation would be
--    appreciated but is not required.
--
-- 2. Altered source versions must be plainly marked as such, and must not be
--    misrepresented as being the original software.
--
-- 3. This notice may not be removed or altered from any source distribution.
-----------------------------------------------------------------------------
-- file:     max7219.vhd
-- brief:    driver for the MAX7219 multiplexed 8x8 LED driver
--           cascading not implemented yet
-- created:  2021-06-05
-- authors:  nvitya

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.generic_functions.all;

entity max7219 is
generic
(
	-- system clock divisor:
	CLOCK_DIV_2N : integer range 0 to 31 := 8   -- 8 = 1/256
);
port
(
	-- HW Interface

	PIN_DIN 	: out std_logic;
	PIN_CLK 	: out std_logic;
	PIN_CS 	: out std_logic;

	-- User interface:

	DISPDATA : in unsigned(63 downto 0); -- contents of all the 8 registers

	DECODEMODE 	: in unsigned(7 downto 0);
	INTENSITY 	: in unsigned(3 downto 0);
	SCANLIMIT 	: in unsigned(2 downto 0);
	DISPON	 	: in std_logic;

	CLKIN : in std_logic -- Any high speed system clock
);
end entity;

architecture behavioral of max7219
is
	type TSTATE 	is (START, BEGINTRA, CLK_LOW, CLK_HIGH, ENDTRA);

	signal STATE : TSTATE := START;

	signal DATASHR	: unsigned(103 downto 0);  -- skip registers: 0, d, e
	signal REGSHR  : unsigned(15 downto 0);

	signal REGIDX 	: integer range 0 to 15;

	signal BITCNT 	: integer range 0 to 16;

	signal CLKCNT : unsigned(31 downto 0);
	signal DCLK   : std_logic;


begin

	DCLK <= CLKCNT(CLOCK_DIV_2N);

	transaction_control : process (DCLK)
	begin
		if rising_edge(DCLK)
		then
			case STATE
			is
				when START
				=>
					PIN_CLK <= '0';
					PIN_CS  <= '1';

					 -- latch the output data to the shift reg
					DATASHR(63 downto 0) <= DISPDATA;	-- reg 1..8

					DATASHR(71 downto 64) <= DECODEMODE;  				-- reg 9
					DATASHR(79 downto 72) <= "0000" & INTENSITY;  	-- reg 10
					DATASHR(87 downto 80) <= "00000" & SCANLIMIT;  	-- reg 11
					DATASHR(95 downto 88) <= "0000000" & DISPON;  	-- reg 12

					DATASHR(103 downto 96) <= X"00"; 	-- reg 15 (clear test register)

					REGIDX <= 1;
					STATE <= BEGINTRA;
				--
				when BEGINTRA --
				=>
					PIN_CLK <= '0';
					PIN_CS  <= '0';

					REGSHR(15 downto 8) <= "0000" & to_unsigned(REGIDX, 4);
					REGSHR( 7 downto 0) <= DATASHR(7 downto 0);
					BITCNT <= 16;

					STATE <= CLK_LOW;
				--
				when CLK_LOW -- prepare data
				=>
					PIN_CLK <= '0';
					PIN_DIN <= REGSHR(15);
					BITCNT <= BITCNT - 1;
					STATE <= CLK_HIGH;
				--
				when CLK_HIGH
				=>
					PIN_CLK <= '1';
					REGSHR <= REGSHR(14 downto 0) & '0';

					if BITCNT = 0
					then
						STATE <= ENDTRA;
					else
						STATE <= CLK_LOW;
					end if;
				--
				when ENDTRA
				=>
					PIN_CLK <= '0';
					PIN_CS <= '1';
					if REGIDX = 15
					then
						STATE <= START;
					else
						-- send the next register

						if REGIDX = 12  -- skip 13, 14
						then
							REGIDX <= 15;
						else
							REGIDX <= REGIDX + 1;
						end if;

						DATASHR <= X"00" & DATASHR(103 downto 8);
						STATE <= BEGINTRA;
					end if;
				--
			end case; -- STATE
		end if;
	end process;

	process (CLKIN)  -- high speed clock counter for clock division
	begin
		if rising_edge(CLKIN)
		then
			CLKCNT <= CLKCNT + 1;
		end if;
	end process;

end behavioral;