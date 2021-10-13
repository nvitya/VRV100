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
-- file:     led_and_key.vhd
-- brief:    driver for the TM1638 based "LED & KEY" module
-- created:  2021-06-05
-- authors:  nvitya

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity led_and_key is
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
	PIN_CLK : out std_logic;
	PIN_STB : out std_logic;

	-- User interface:

	DISPON : in std_logic;
	LED  : in  unsigned(7 downto 0);  -- "9th segment"
	DOT  : in  unsigned(7 downto 0);  -- 8th segment

	HEXNUM : in unsigned(31 downto 0);

	KEY  : out unsigned(7 downto 0);

	CLKIN : in std_logic -- Any high speed system clock
);
end entity;

architecture behavioral of led_and_key
is
	signal DISPBITS : unsigned(127 downto 0);
	--signal INDATADBG : unsigned(31 downto 0);
begin

	digits : for i in 0 to 7
	generate
		constant irev : natural := 7 - i;
	begin
		DISPBITS(  7 + i * 16) <= DOT(7 - i);
		DISPBITS(  8 + i * 16) <= LED(7 - i);

		ssdigit : entity work.sevenseg_digit
		port map
		(
			INPUTNUM	=> HEXNUM(3 + (irev *4) downto (irev * 4)),
			--INPUTNUM	=> INDATADBG(3 + (irev *4) downto (irev * 4)),
			SEGMENTS => DISPBITS(6 + (i *16) downto (i * 16))
		);
	end generate;

	lkctrl : entity work.tm1638
	generic map
	(
		CLOCK_DIV_2N => CLOCK_DIV_2N
	)
	port map
	(
		PIN_DIO => PIN_DIO,
		PIN_CLK => PIN_CLK,
		PIN_STB => PIN_STB,

		CTRLBITS => DISPON & to_unsigned(DISP_BRIGHTNESS, 3),
		OUTDATA 	=> DISPBITS,

		-- the key mapping is preatty "special"
		INDATA(28) => KEY(0),
		INDATA(20) => KEY(1),
		INDATA(12) => KEY(2),
		INDATA( 4) => KEY(3),
		INDATA(24) => KEY(4),
		INDATA(16) => KEY(5),
		INDATA( 8) => KEY(6),
		INDATA( 0) => KEY(7),

		--INDATA => INDATADBG,

		CLKIN => CLKIN
	);

end behavioral;