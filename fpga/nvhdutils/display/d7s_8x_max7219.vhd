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
-- file:     d7s_8x_max7219.vhd
-- brief:    driver for 8 x 7 segment display driven by max7219
-- created:  2021-06-05
-- authors:  nvitya

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity d7s_8x_max7219 is
generic
(
	-- system clock divisor:
	CLOCK_DIV_2N 		: integer range 0 to 31 := 8;   -- 8 = 1/256
	DISP_BRIGHTNESS 	: integer range 0 to 15 := 8
);
port
(
	-- HW Interface

	PIN_DIN	: out std_logic;
	PIN_CLK	: out std_logic;
	PIN_CS	: out std_logic;

	-- User interface:

	DISPON 	: in std_logic;
	DOT  		: in  unsigned(7 downto 0);  -- 8th segment
	HEXNUM 	: in unsigned(31 downto 0);

	CLKIN 	: in std_logic -- Any high speed system clock
);
end entity;

architecture behavioral of d7s_8x_max7219
is
	signal DISPBITS : unsigned(63 downto 0);
begin

	digits : for i in 0 to 7
	generate
		DISPBITS(  7 + i * 8) <= DOT(i);

		ssdigit : entity work.sevenseg_digit
		port map
		(
			INPUTNUM	=> HEXNUM(3 + i*4 downto i*4),

			SEGMENTS(0) => DISPBITS(i*8 + 6),
			SEGMENTS(1) => DISPBITS(i*8 + 5),
			SEGMENTS(2) => DISPBITS(i*8 + 4),
			SEGMENTS(3) => DISPBITS(i*8 + 3),
			SEGMENTS(4) => DISPBITS(i*8 + 2),
			SEGMENTS(5) => DISPBITS(i*8 + 1),
			SEGMENTS(6) => DISPBITS(i*8 + 0)
		);
	end generate;

	dctrl : entity work.max7219
	generic map
	(
		CLOCK_DIV_2N => CLOCK_DIV_2N
	)
	port map
	(
		PIN_DIN 	=> PIN_DIN,
		PIN_CLK 	=> PIN_CLK,
		PIN_CS 	=> PIN_CS,

		DISPDATA => DISPBITS,

		DECODEMODE 	=> X"00",
		INTENSITY 	=> to_unsigned(DISP_BRIGHTNESS, 4),
		SCANLIMIT 	=> "111",
		DISPON	 	=> DISPON,

		CLKIN => CLKIN
	);

end behavioral;