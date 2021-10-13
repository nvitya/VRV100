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
-- file:     multidigit_7seg.vhd
-- brief:    driver for multi-digit multiplexed 7+1 segment displays
-- created:  2021-06-05
-- authors:  nvitya

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity multidigit_7seg is
generic
(
	DCOUNT       : integer range 1 to 8;       -- must be set
	CLOCK_DIV_2N : integer range 0 to 31 := 12  -- multiplexing clock divider
);
port
(
	INPUTNUM : in unsigned(31 downto 0); -- up to 8 digits, will be displayed as hex
	DOTS     : in unsigned(DCOUNT-1 downto 0);

	SEGMENTS : out  unsigned(7 downto 0);  -- bit7 = dot
	DIGITSEL	: out  unsigned(DCOUNT - 1 downto 0);

	CLKIN : in std_logic -- Any high speed system clock
);
end entity;

architecture behavioral of multidigit_7seg
is
	signal CLKCNT : unsigned(31 downto 0);
	signal DIGITCNT : natural range 0 to DCOUNT - 1 := 0;
	signal DCLK   : std_logic;
	signal NUMLATCH : unsigned(31 downto 0);
	signal DOTLATCH : unsigned(DCOUNT-1 downto 0);
	signal DSEL : unsigned(DCOUNT-1 downto 0);
	signal NUMDIG : unsigned(3 downto 0);
begin
	DCLK <= CLKCNT(CLOCK_DIV_2N);
	DIGITSEL <= DSEL;

	sequencer : process(DCLK)
	begin
		if rising_edge(DCLK)
		then
			if DIGITCNT = DCOUNT - 1
			then
				DIGITCNT <= 0;
				DSEL(DCOUNT-1 downto 1) <= (others => '0');
				DSEL(0) <= '1';
				NUMLATCH <= INPUTNUM;
				DOTLATCH <= DOTS;
				NUMDIG <= INPUTNUM(3 downto 0);
				SEGMENTS(7) <= DOTS(0);
			else
				DIGITCNT <= DIGITCNT + 1;
				DSEL <= DSEL(DCOUNT - 2 downto 0) & '0'; -- shift right
				NUMDIG <= NUMLATCH(7 downto 4);
				NUMLATCH <= "0000" & NUMLATCH(31 downto 4);  -- shift the num latch
				SEGMENTS(7) <= DOTLATCH(1);
				DOTLATCH <= "0" & DOTLATCH(DCOUNT-1 downto 1);
			end if;
		end if;
	end process;

	decoder : entity work.sevenseg_digit
	port map
	(
		INPUTNUM => NUMDIG,
		SEGMENTS => SEGMENTS(6 downto 0)  -- without dot
	);

	process (CLKIN)  -- high speed clock counter for clock division
	begin
		if rising_edge(CLKIN)
		then
			CLKCNT <= CLKCNT + 1;
		end if;
	end process;

end behavioral;

