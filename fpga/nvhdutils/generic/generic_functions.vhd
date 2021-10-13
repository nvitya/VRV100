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
-- file:     generic_functions.vhd
-- brief:    Generic definitions
-- created:  2021-06-05
-- authors:  nvitya

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package generic_functions is

	function BIT_REVERSE(A : in unsigned)  return unsigned;

	function MAX(LEFT, RIGHT : integer)  return integer;
	function MIN(LEFT, RIGHT : integer)  return integer;

	function IIF_INT(COND : boolean; A : integer; B : integer) return integer;
	function IIF_STDL(COND : boolean; A : std_logic; B : std_logic) return std_logic;

end package;

---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------

package body generic_functions is

	function BIT_REVERSE(A : in unsigned)  return unsigned is

		variable RESULT : unsigned(A'range);
		alias AA : unsigned(A'reverse_range) is A;

	begin

		for i in AA'range loop
			RESULT(i) := AA(i);
		end loop;

		return RESULT;

	end;

	function MAX(LEFT, RIGHT : integer) return integer is
	begin
		if LEFT > RIGHT then return LEFT;
							 else return RIGHT;
		end if;
	end;

	function MIN(LEFT, RIGHT : integer) return integer is
	begin
		if LEFT < RIGHT then return LEFT;
							 else return RIGHT;
		end if;
	end;

	function IIF_INT(COND : boolean; A : integer; B : integer) return integer is
	begin
		if COND
		then
			return A;
		else
			return B;
		end if;
	end;

	function IIF_STDL(COND : boolean; A : std_logic; B : std_logic) return std_logic is
	begin
		if COND
		then
			return A;
		else
			return B;
		end if;
	end;

end generic_functions;
