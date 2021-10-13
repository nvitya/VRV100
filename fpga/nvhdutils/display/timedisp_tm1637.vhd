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
-- file:     timedisp_tm1637.vhd
-- brief:    "00:00" format 7-seg display driven by TM1637
--           the ":" colon is at output bit 15 (8th segment of digit 2)
-- created:  2021-06-05
-- authors:  nvitya

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity timedisp_tm1637 is
generic
(
	-- system clock divisor:
	CLOCK_DIV_2N 		: integer range 0 to 31 := 8;   -- 8 = 1/256
	DISP_BRIGHTNESS 	: integer range 0 to 7 := 4
);
port
(
	-- HW Interface

	PIN_DIO : inout std_logic;
	PIN_CLK : inout std_logic;  -- I2C requires inout

	-- User interface:

	DISPON : in std_logic;
	COLON  : in std_logic;

	HEXNUM : in unsigned(15 downto 0);

	CLKIN : in std_logic -- Any high speed system clock
);
end entity;

architecture behavioral of timedisp_tm1637
is
	signal DISPBITS : unsigned(31 downto 0);
begin

	DISPBITS( 7) <= '0';
	DISPBITS(15) <= COLON;
	DISPBITS(23) <= '0';
	DISPBITS(31) <= '0';

	digits : for i in 0 to 3
	generate
		constant irev : natural := 3 - i;
	begin
		ssdigit : entity work.sevenseg_digit
		port map
		(
			INPUTNUM	=> HEXNUM(3 + (irev *4) downto (irev * 4)),
			SEGMENTS => DISPBITS(6 + i*8 downto i*8)
		);
	end generate;

	dispctrl : entity work.tm1637
	generic map
	(
		CLOCK_DIV_2N => CLOCK_DIV_2N
	)
	port map
	(
		PIN_DIO => PIN_DIO,
		PIN_CLK => PIN_CLK,

		CTRLBITS => DISPON & to_unsigned(DISP_BRIGHTNESS, 3),
		OUTDATA(31 downto 0)	=> DISPBITS,
		OUTDATA(47 downto 32) => X"0000",
		INDATA => open,

		CLKIN => CLKIN
	);

end behavioral;