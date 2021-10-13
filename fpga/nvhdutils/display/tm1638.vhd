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
-- file:     tm1638.vhd
-- brief:    driver for the TM1638
-- created:  2021-06-05
-- authors:  nvitya

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- the IC has 8 x 10 bit outputs and 3 x 8 bit inputs
-- the state machine continously sends the outputs and reads the inputs

entity tm1638 is
generic
(
	-- system clock divisor:
	CLOCK_DIV_2N : integer range 0 to 31 := 8   -- 8 = 1/256
);
port
(
	-- HW Interface

	PIN_DIO : inout std_logic;
	PIN_CLK : out std_logic;
	PIN_STB : out std_logic;

	-- User interface:

	CTRLBITS : in unsigned(3 downto 0);  -- abbb: a = display on, bbb = brightness
	OUTDATA 	: in unsigned(127 downto 0);
	INDATA  	: out unsigned(31 downto 0);

	CLKIN : in std_logic -- Any high speed system clock
);
end entity;

architecture behavioral of tm1638
is
	type TCTRLSTATE 	is (STARTOUTPREP, WAITOUTPREP, STARTOUT, WAITOUT, STARTCTRL, WAITCTRL, STARTIN, WAITIN);

	signal CTRLSTATE : TCTRLSTATE := STARTOUTPREP;

	signal STARTSHIFTING : std_logic := '0';
	signal SHIFTFINISHED : std_logic := '1';

	signal OUTSHR	: unsigned(135 downto 0);
	signal INSHR	: unsigned(31 downto 0);

	signal OUTBITCNT : integer range 0 to 136;  -- including the command
	signal INBITCNT  : integer range 0 to 32;

	signal CLKCNT : unsigned(31 downto 0);
	signal DCLK   : std_logic;

   type TSHSTATE 		is (IDLE, TXLOW, TXHIGH, RXSTART, RXLOW, RXHIGH, FINISHED);
	signal SHSTATE : TSHSTATE := IDLE;

begin

	DCLK <= CLKCNT(CLOCK_DIV_2N);

	transaction_control : process (DCLK)
	begin
		if rising_edge(DCLK)
		then
			STARTSHIFTING <= '0';

			case CTRLSTATE
			is
				when STARTOUTPREP
				=>
					OUTSHR(7 downto 0) <= X"40";  -- set write data with autoincrement address
					OUTBITCNT <= 8;
					INBITCNT  <= 0;
					STARTSHIFTING <= '1';
					SHIFTFINISHED <= '0';

					CTRLSTATE <= WAITOUTPREP;
				--
				when WAITOUTPREP
				=>
					if SHIFTFINISHED = '1'
					then
						CTRLSTATE <= STARTOUT;
					end if;
				--
				when STARTOUT
				=>
					OUTSHR(7 downto 0) <= X"C0";  -- set start address
					OUTSHR(135 downto 8) <= OUTDATA;
					OUTBITCNT <= 136;
					INBITCNT  <= 0;
					STARTSHIFTING <= '1';
					SHIFTFINISHED <= '0';

					CTRLSTATE <= WAITOUT;
				--
				when WAITOUT
				=>
					if SHIFTFINISHED = '1'
					then
						CTRLSTATE <= STARTCTRL;
					end if;
				--
				when STARTCTRL
				=>
					OUTSHR(7 downto 0) <= "1000" & CTRLBITS;  -- prepare the control register (display on + intensity)
					OUTBITCNT <= 8;
					INBITCNT  <= 0;
					STARTSHIFTING <= '1';
					SHIFTFINISHED <= '0';

					CTRLSTATE <= WAITCTRL;
				--
				when WAITCTRL
				=>
					if SHIFTFINISHED = '1'
					then
						CTRLSTATE <= STARTIN;
					end if;
				--
				when STARTIN
				=>
					OUTSHR(7 downto 0) <= X"42"; -- read data
					OUTBITCNT <= 8;
					INBITCNT  <= 32;
					STARTSHIFTING <= '1';
					SHIFTFINISHED <= '0';

					CTRLSTATE <= WAITIN;
				--
				when WAITIN
				=>
					if SHIFTFINISHED = '1'
					then
						CTRLSTATE <= STARTOUTPREP; -- back to the start
					end if;
				--
			end case; -- CTRLSTATE

			-- shifting process (in the same process to manipulate the shift registers)

			case SHSTATE  -- IDLE, TXLOW, TXHIGH, RXSTART, RXLOW, RXHIGH, FINISHED
			is
				when IDLE
				=>
					-- set the default states
					PIN_DIO <= 'Z';
					PIN_CLK <= '1';
					PIN_STB <= '1';

					if STARTSHIFTING = '1'
					then
						PIN_STB <= '0';
						SHSTATE <= TXLOW;
					end if;
				--
				when TXLOW -- start of CLK low
				=>
					PIN_CLK <= '0';
					PIN_DIO <= OUTSHR(0);
					OUTSHR <= "0" & OUTSHR(135 downto 1); -- shift the out register
					OUTBITCNT <= OUTBITCNT - 1;
					SHSTATE <= TXHIGH;
				--
				when TXHIGH -- start of CLK high
				=>
					PIN_CLK <= '1';
					if OUTBITCNT = 0
					then
						-- TX finished
						if INBITCNT /= 0
						then
							--PIN_STB <= '1'; -- pull back the STB for short
							SHSTATE <= RXSTART;
						else
							SHSTATE <= FINISHED;
						end if;
					else
						SHSTATE <= TXLOW;
					end if;
				--

				when RXSTART
				=>
					PIN_CLK <= '1';
					PIN_DIO <= 'Z';
					PIN_STB <= '0';
					SHSTATE <= RXLOW;
				--
				when RXLOW -- start of CLK low
				=>
					PIN_CLK <= '0';
					if INBITCNT = 0
					then
						INDATA <= INSHR;
						SHSTATE <= FINISHED;
					else
						SHSTATE <= RXHIGH;
					end if;
				--
				when RXHIGH -- start of CLK high
				=>
					PIN_CLK <= '1';
					INSHR <= PIN_DIO & INSHR(31 downto 1);
					SHSTATE <= RXLOW;
					INBITCNT <= INBITCNT - 1;
				--
				when FINISHED
				=>
					PIN_CLK <= '1';
					SHIFTFINISHED <= '1';
					SHSTATE <= IDLE;
				--
			end case;
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