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
-- file:     sevenseg_digit.vhd
-- brief:    hexadecimal digit to 7 segment display encoder
-- created:  2021-06-05
-- authors:  nvitya

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sevenseg_digit is
port
(
	INPUTNUM : in  unsigned(3 downto 0);
	SEGMENTS : out unsigned(6 downto 0)
);
end entity;

architecture behavioral of sevenseg_digit is
begin

	with INPUTNUM
	select
		--           GFEDCBA
		SEGMENTS <= "0111111" when "0000",
						"0000110" when "0001",
						"1011011" when "0010",
						"1001111" when "0011",
						"1100110" when "0100",
						"1101101" when "0101",
						"1111101" when "0110",
						"0000111" when "0111",
						"1111111" when "1000",
						"1101111" when "1001",
						"1110111" when "1010",
						"1111100" when "1011",
						"0111001" when "1100",
						"1011110" when "1101",
						"1111001" when "1110",
						"1110001" when "1111",

						"0111111" when others;

end behavioral;

