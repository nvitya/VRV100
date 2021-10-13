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
-- file:     chargen_6x8.vhd
-- brief:    6x8 pixel Character generator for graphical LCD display
-- created:  2021-06-05
-- authors:  nvitya

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity chargen_6x8 is
port
(
	CHARCODE			: in  integer range 0 to 127;
	COLUMN 			: in  integer range 0 to 7;

	--ADDR	 			: in  integer range 0 to 1023; --unsigned(9 downto 0);

	COLUMNBITS 	: out unsigned(7 downto 0);

	CLKIN : in std_logic
);
end entity;

architecture behavioral of chargen_6x8
is
	-- for ram inferring (with Intel Quartus) power of two index range required, so padding added from 768 to 1024

	constant FONT_TABLE_LENGTH : integer := 1024;

	type T_FONT_TABLE is array(0 to 1023) of unsigned(7 downto 0);

	constant FONT_TABLE : T_FONT_TABLE :=
	(
		X"00", X"00", X"00", X"00", X"00", X"00",      -- char 0
      X"3E", X"45", X"51", X"45", X"3E", X"00",      -- char 1
      X"3E", X"6B", X"6F", X"6B", X"3E", X"00",      -- char 2
      X"1C", X"3E", X"7C", X"3E", X"1C", X"00",      -- char 3
      X"18", X"3C", X"7E", X"3C", X"18", X"00",      -- char 4
      X"30", X"36", X"7F", X"36", X"30", X"00",      -- char 5
      X"18", X"5C", X"7E", X"5C", X"18", X"00",      -- char 6
      X"00", X"00", X"18", X"18", X"00", X"00",      -- char 7
      X"FF", X"FF", X"E7", X"E7", X"FF", X"FF",      -- char 8
      X"00", X"3C", X"24", X"24", X"3C", X"00",      -- char 9
      X"FF", X"C3", X"DB", X"DB", X"C3", X"FF",      -- char 10
      X"30", X"48", X"4D", X"4B", X"37", X"00",      -- char 11
      X"06", X"29", X"79", X"29", X"06", X"00",      -- char 12
      X"60", X"70", X"3F", X"02", X"04", X"00",      -- char 13
      X"60", X"7E", X"0A", X"35", X"3F", X"00",      -- char 14
      X"2A", X"1C", X"36", X"1C", X"2A", X"00",      -- char 15
      X"7F", X"3E", X"1C", X"08", X"08", X"00",      -- char 16
      X"08", X"08", X"1C", X"3E", X"7F", X"00",      -- char 17
      X"14", X"36", X"7F", X"36", X"14", X"00",      -- char 18
      X"00", X"5F", X"00", X"5F", X"00", X"00",      -- char 19
      X"06", X"09", X"7F", X"01", X"7F", X"00",      -- char 20
      X"00", X"4A", X"55", X"55", X"29", X"00",      -- char 21
      X"60", X"60", X"60", X"60", X"60", X"00",      -- char 22
      X"54", X"76", X"7F", X"76", X"54", X"00",      -- char 23
      X"04", X"06", X"7F", X"06", X"04", X"00",      -- char 24
      X"10", X"30", X"7F", X"30", X"10", X"00",      -- char 25
      X"08", X"08", X"2A", X"1C", X"08", X"00",      -- char 26
      X"08", X"1C", X"2A", X"08", X"08", X"00",      -- char 27
      X"78", X"40", X"40", X"40", X"40", X"00",      -- char 28
      X"08", X"3E", X"08", X"3E", X"08", X"00",      -- char 29
      X"20", X"38", X"3E", X"38", X"20", X"00",      -- char 30
      X"02", X"0E", X"3E", X"0E", X"02", X"00",      -- char 31
      X"00", X"00", X"00", X"00", X"00", X"00",      -- char 32
      X"00", X"00", X"5F", X"00", X"00", X"00",      -- char 33
      X"00", X"07", X"00", X"07", X"00", X"00",      -- char 34
      X"14", X"7F", X"14", X"7F", X"14", X"00",      -- char 35
      X"24", X"2A", X"6B", X"2A", X"12", X"00",      -- char 36
      X"23", X"13", X"08", X"64", X"62", X"00",      -- char 37
      X"36", X"49", X"55", X"22", X"50", X"00",      -- char 38
      X"00", X"00", X"05", X"03", X"00", X"00",      -- char 39
      X"00", X"1C", X"22", X"41", X"00", X"00",      -- char 40
      X"00", X"41", X"22", X"1C", X"00", X"00",      -- char 41
      X"14", X"08", X"3E", X"08", X"14", X"00",      -- char 42
      X"08", X"08", X"3E", X"08", X"08", X"00",      -- char 43
      X"00", X"00", X"50", X"30", X"00", X"00",      -- char 44
      X"08", X"08", X"08", X"08", X"08", X"00",      -- char 45
      X"00", X"00", X"60", X"60", X"00", X"00",      -- char 46
      X"20", X"10", X"08", X"04", X"02", X"00",      -- char 47
      X"3E", X"51", X"49", X"45", X"3E", X"00",      -- char 48
      X"00", X"42", X"7F", X"40", X"00", X"00",      -- char 49
      X"42", X"61", X"51", X"49", X"46", X"00",      -- char 50
      X"21", X"41", X"45", X"4B", X"31", X"00",      -- char 51
      X"18", X"14", X"12", X"7F", X"10", X"00",      -- char 52
      X"27", X"45", X"45", X"45", X"39", X"00",      -- char 53
      X"3C", X"4A", X"49", X"49", X"30", X"00",      -- char 54
      X"01", X"01", X"79", X"05", X"03", X"00",      -- char 55
      X"36", X"49", X"49", X"49", X"36", X"00",      -- char 56
      X"06", X"49", X"49", X"29", X"1E", X"00",      -- char 57
      X"00", X"00", X"36", X"36", X"00", X"00",      -- char 58
      X"00", X"00", X"56", X"36", X"00", X"00",      -- char 59
      X"08", X"14", X"22", X"41", X"00", X"00",      -- char 60
      X"24", X"24", X"24", X"24", X"24", X"00",      -- char 61
      X"41", X"22", X"14", X"08", X"00", X"00",      -- char 62
      X"02", X"01", X"51", X"09", X"06", X"00",      -- char 63
      X"3E", X"41", X"49", X"55", X"0E", X"00",      -- char 64
      X"7E", X"11", X"11", X"11", X"7E", X"00",      -- char 65
      X"7F", X"49", X"49", X"49", X"36", X"00",      -- char 66
      X"3E", X"41", X"41", X"41", X"22", X"00",      -- char 67
      X"7F", X"41", X"41", X"22", X"1C", X"00",      -- char 68
      X"7F", X"49", X"49", X"49", X"41", X"00",      -- char 69
      X"7F", X"09", X"09", X"09", X"01", X"00",      -- char 70
      X"3E", X"41", X"51", X"51", X"72", X"00",      -- char 71
      X"7F", X"08", X"08", X"08", X"7F", X"00",      -- char 72
      X"00", X"41", X"7F", X"41", X"00", X"00",      -- char 73
      X"30", X"40", X"40", X"40", X"3F", X"00",      -- char 74
      X"7F", X"08", X"14", X"22", X"41", X"00",      -- char 75
      X"7F", X"40", X"40", X"40", X"40", X"00",      -- char 76
      X"7F", X"02", X"04", X"02", X"7F", X"00",      -- char 77
      X"7F", X"04", X"08", X"10", X"7F", X"00",      -- char 78
      X"3E", X"41", X"41", X"41", X"3E", X"00",      -- char 79
      X"7F", X"09", X"09", X"09", X"06", X"00",      -- char 80
      X"3E", X"41", X"51", X"21", X"5E", X"00",      -- char 81
      X"7F", X"09", X"19", X"29", X"46", X"00",      -- char 82
      X"26", X"49", X"49", X"49", X"32", X"00",      -- char 83
      X"01", X"01", X"7F", X"01", X"01", X"00",      -- char 84
      X"3F", X"40", X"40", X"40", X"3F", X"00",      -- char 85
      X"1F", X"20", X"40", X"20", X"1F", X"00",      -- char 86
      X"7F", X"20", X"1C", X"20", X"7F", X"00",      -- char 87
      X"63", X"14", X"08", X"14", X"63", X"00",      -- char 88
      X"07", X"08", X"70", X"08", X"07", X"00",      -- char 89
      X"61", X"51", X"49", X"45", X"43", X"00",      -- char 90
      X"00", X"7F", X"41", X"41", X"00", X"00",      -- char 91
      X"02", X"04", X"08", X"10", X"20", X"00",      -- char 92
      X"00", X"41", X"41", X"7F", X"00", X"00",      -- char 93
      X"04", X"02", X"01", X"02", X"04", X"00",      -- char 94
      X"80", X"80", X"80", X"80", X"80", X"80",      -- char 95
      X"00", X"07", X"0B", X"00", X"00", X"00",      -- char 96
      X"20", X"54", X"54", X"54", X"78", X"00",      -- char 97
      X"7F", X"48", X"44", X"44", X"38", X"00",      -- char 98
      X"38", X"44", X"44", X"44", X"20", X"00",      -- char 99
      X"38", X"44", X"44", X"48", X"7F", X"00",      -- char 100
      X"38", X"54", X"54", X"54", X"58", X"00",      -- char 101
      X"08", X"7E", X"09", X"09", X"02", X"00",      -- char 102
      X"08", X"54", X"54", X"54", X"3C", X"00",      -- char 103
      X"7F", X"08", X"04", X"04", X"78", X"00",      -- char 104
      X"00", X"44", X"7D", X"40", X"00", X"00",      -- char 105
      X"20", X"40", X"44", X"3D", X"00", X"00",      -- char 106
      X"7F", X"20", X"10", X"28", X"44", X"00",      -- char 107
      X"00", X"41", X"7F", X"40", X"00", X"00",      -- char 108
      X"7C", X"04", X"18", X"04", X"78", X"00",      -- char 109
      X"7C", X"08", X"04", X"04", X"78", X"00",      -- char 110
      X"38", X"44", X"44", X"44", X"38", X"00",      -- char 111
      X"7C", X"14", X"14", X"14", X"08", X"00",      -- char 112
      X"08", X"14", X"14", X"14", X"7C", X"00",      -- char 113
      X"7C", X"08", X"04", X"04", X"08", X"00",      -- char 114
      X"48", X"54", X"54", X"54", X"24", X"00",      -- char 115
      X"04", X"3F", X"44", X"44", X"20", X"00",      -- char 116
      X"3C", X"40", X"40", X"20", X"7C", X"00",      -- char 117
      X"1C", X"20", X"40", X"20", X"1C", X"00",      -- char 118
      X"3C", X"40", X"30", X"40", X"3C", X"00",      -- char 119
      X"44", X"28", X"10", X"28", X"44", X"00",      -- char 120
      X"4C", X"50", X"50", X"50", X"3C", X"00",      -- char 121
      X"44", X"64", X"54", X"4C", X"44", X"00",      -- char 122
      X"08", X"3E", X"41", X"41", X"00", X"00",      -- char 123
      X"00", X"00", X"77", X"00", X"00", X"00",      -- char 124
      X"41", X"41", X"3E", X"08", X"00", X"00",      -- char 125
      X"02", X"01", X"03", X"02", X"01", X"00",      -- char 126
      X"30", X"28", X"24", X"28", X"30", X"00",      -- char 127

		-- padding to 1024
		X"00", X"00", X"00", X"00", X"00", X"00",
      X"00", X"00", X"00", X"00", X"00", X"00",
      X"00", X"00", X"00", X"00", X"00", X"00",
      X"00", X"00", X"00", X"00", X"00", X"00",
      X"00", X"00", X"00", X"00", X"00", X"00",
      X"00", X"00", X"00", X"00", X"00", X"00",
      X"00", X"00", X"00", X"00", X"00", X"00",
      X"00", X"00", X"00", X"00", X"00", X"00",
      X"00", X"00", X"00", X"00", X"00", X"00",
      X"00", X"00", X"00", X"00", X"00", X"00",
      X"00", X"00", X"00", X"00", X"00", X"00",
      X"00", X"00", X"00", X"00", X"00", X"00",
      X"00", X"00", X"00", X"00", X"00", X"00",
      X"00", X"00", X"00", X"00", X"00", X"00",
      X"00", X"00", X"00", X"00", X"00", X"00",
      X"00", X"00", X"00", X"00", X"00", X"00",
      X"00", X"00", X"00", X"00", X"00", X"00",
      X"00", X"00", X"00", X"00", X"00", X"00",
      X"00", X"00", X"00", X"00", X"00", X"00",
      X"00", X"00", X"00", X"00", X"00", X"00",
      X"00", X"00", X"00", X"00", X"00", X"00",
      X"00", X"00", X"00", X"00", X"00", X"00",
      X"00", X"00", X"00", X"00", X"00", X"00",
      X"00", X"00", X"00", X"00", X"00", X"00",
      X"00", X"00", X"00", X"00", X"00", X"00",
      X"00", X"00", X"00", X"00", X"00", X"00",
      X"00", X"00", X"00", X"00", X"00", X"00",
      X"00", X"00", X"00", X"00", X"00", X"00",
      X"00", X"00", X"00", X"00", X"00", X"00",
      X"00", X"00", X"00", X"00", X"00", X"00",
      X"00", X"00", X"00", X"00", X"00", X"00",
      X"00", X"00", X"00", X"00", X"00", X"00",
      X"00", X"00", X"00", X"00", X"00", X"00",
      X"00", X"00", X"00", X"00", X"00", X"00",
      X"00", X"00", X"00", X"00", X"00", X"00",
      X"00", X"00", X"00", X"00", X"00", X"00",
      X"00", X"00", X"00", X"00", X"00", X"00",
      X"00", X"00", X"00", X"00", X"00", X"00",
      X"00", X"00", X"00", X"00", X"00", X"00",
      X"00", X"00", X"00", X"00", X"00", X"00",
      X"00", X"00", X"00", X"00", X"00", X"00",
      X"00", X"00", X"00", X"00", X"00", X"00",
		X"00", X"00", X"00", X"00"
	);

	signal FT_ADDR : unsigned(9 downto 0);

begin

	-- 6 * CHARCODE + COLUMN:
	FT_ADDR 	<= (to_unsigned(CHARCODE, 8) & "00") + (to_unsigned(CHARCODE, 9) & "0") + to_unsigned(COLUMN, 10);

	-- for RAM inferring synchronous logic is required
	cgen : process(CLKIN)
	begin
		if rising_edge(CLKIN)
		then
			COLUMNBITS <= FONT_TABLE(to_integer(FT_ADDR));
		end if;
	end process;

end behavioral;

