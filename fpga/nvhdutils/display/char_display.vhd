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
-- file:     char_display.vhd
-- brief:    driver for the 2x16 characted display with HD44780 or ST7066U
-- created:  2021-06-05
-- authors:  nvitya

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity char_display is
generic
(
	-- system clock divisor:
	CLOCK_IN_MHZ		: integer range 1 to 600;

	CONTRAST_LOW	 	: integer range 0 to 16383 := 8000;
	CONTRAST_HIGH	 	: integer range 0 to 16383 := 1200
);
port
(
	-- HW Interface

	PIN_CONTRAST : out std_logic;

	PIN_EN       : out std_logic;
	PIN_RS       : out std_logic;
	PIN_RW       : out std_logic; -- fix zero

	PIN_DATA     : out unsigned(3 downto 0);  -- D7..D4 !!

	-- User interface:

	DISP_READY   : out std_logic;
	DISP_WR      : in std_logic;  -- should be set to 0 when DISP_READY goes low
	DISP_ADDR    : in unsigned(4 downto 0);  -- 0..31 characters
	DISP_CHAR    : in unsigned(7 downto 0);

	CLKIN : in std_logic -- Any high speed system clock
);
end entity;

architecture behavioral of char_display
is
	constant EN_STATE_CLOCKS : integer := CLOCK_IN_MHZ * 2;  -- low or high state held for this amount of clocks

	type TSTATE is
	(
		INITSTART, INITWAIT,
		INIT1, INIT2, INIT3, INIT4,
		PINIT1, PINIT2, PINIT3,
		IDLE,
		EXEC1, EXEC2, EXECFINISH
	);
	signal STATE : TSTATE := INITSTART;

	type   TBUSSTATE 	is (IDLE, EN_LOW, EN_HIGH, EN_LOW2, EXECWAIT);
	signal BUSSTATE : TBUSSTATE := IDLE;

	signal READY		: std_logic := '0';

	signal BUS_RW     : std_logic := '0';
	signal BUS_RS		: std_logic := '0';
	signal BUS_EN     : std_logic := '0';
	signal BUS_DATA   : unsigned(7 downto 0);
	signal BUS_8BIT   : std_logic;

	signal BUS_ACTIVE : std_logic := '0';
	signal BUS_WAIT_CLOCKS : integer range 0 to CLOCK_IN_MHZ * 40000;

	signal BUS_CNT    : integer range 0 to EN_STATE_CLOCKS * 2;

	signal CONTR_CNT : integer range 0 to 16383 := 0;
	signal CONTR_OUTLEVEL : std_logic := '0';
begin

	PIN_RW <= BUS_RW;
	PIN_EN <= BUS_EN;
	PIN_RS <= BUS_RS;
	DISP_READY <= READY;

	PIN_CONTRAST <= CONTR_OUTLEVEL;

	main : process(CLKIN)
	begin
		if rising_edge(CLKIN)
		then
			-- main control state machine
			if BUS_ACTIVE = '0'
			then
				case STATE
				is
					-- wait for start
					--
					when INITSTART  -- 40 ms wait for start
					=>
						READY <= '0';
						BUS_RS <= '0';
						BUS_WAIT_CLOCKS <= CLOCK_IN_MHZ * 40000;
						STATE <= INITWAIT;
					--
					when INITWAIT
					=>
						if BUS_WAIT_CLOCKS = 0
						then
							STATE <= INIT1;
						else
							BUS_WAIT_CLOCKS <= BUS_WAIT_CLOCKS - 1;
						end if;
					--

					-- set 4-bit mode
					--
					when INIT1
					=>
						BUS_RS <= '0';
						BUS_DATA <= "00110000";  -- force 8-bit mode
						BUS_8BIT <= '0';  -- send only the upper 4 bits
						BUS_WAIT_CLOCKS <= CLOCK_IN_MHZ * 4500;
						BUS_ACTIVE <= '1';
						STATE <= INIT2;
					--
					when INIT2 -- repeat the previous
					=>
						BUS_RS <= '0';
						BUS_DATA <= "00110000";  -- force 8-bit mode
						BUS_8BIT <= '0';  -- send only the upper 4 bits
						BUS_WAIT_CLOCKS <= CLOCK_IN_MHZ * 4500;
						BUS_ACTIVE <= '1';
						STATE <= INIT3;
					--
					when INIT3 -- third time with shorter wait
					=>
						BUS_RS <= '0';
						BUS_DATA <= "00110000";  -- force 8-bit mode
						BUS_8BIT <= '0';  -- send only the upper 4 bits
						BUS_WAIT_CLOCKS <= CLOCK_IN_MHZ * 150;
						BUS_ACTIVE <= '1';
						STATE <= INIT4;
					--
					when INIT4 -- finally set 4-bit mode
					=>
						BUS_RS <= '0';
						BUS_DATA <= "00100000";  -- sets 4 bit mode
						BUS_8BIT <= '0';  -- send only the upper 4 bits
						BUS_WAIT_CLOCKS <= CLOCK_IN_MHZ * 50;
						BUS_ACTIVE <= '1';
						STATE <= PINIT1;
					--

					-- panel initialization
					--
					when PINIT1 -- set 2 line mode
					=>
						BUS_RS <= '0';
						BUS_DATA <= "00101000";  -- sets 4 bit mode + 2 line mode with 5x8 font
						BUS_8BIT <= '1';
						BUS_WAIT_CLOCKS <= CLOCK_IN_MHZ * 100;
						BUS_ACTIVE <= '1';
						STATE <= PINIT2;
					--
					when PINIT2 -- clear the screen
					=>
						BUS_RS <= '0';
						BUS_DATA <= "00000001";
						BUS_8BIT <= '1';
						BUS_WAIT_CLOCKS <= CLOCK_IN_MHZ * 2000; -- takes long time
						BUS_ACTIVE <= '1';
						STATE <= PINIT3;
					--
					when PINIT3 -- set display on without cursor
					=>
						BUS_RS <= '0';
						BUS_DATA <= "00001100";
						BUS_8BIT <= '1';
						BUS_WAIT_CLOCKS <= CLOCK_IN_MHZ * 2000;
						BUS_ACTIVE <= '1';
						STATE <= IDLE;
					--

					-- IDLE, wait for commands
					--
					when IDLE -- wait for commands
					=>
						READY <= '1';
						if DISP_WR = '1'
						then
							READY <= '0';
							STATE <= EXEC1;
						end if;
					--
					when EXEC1 -- write character offset, second line starts at 0x40
					=>
						BUS_RS <= '0';
						BUS_DATA <= "1" & DISP_ADDR(4) & "00" & DISP_ADDR(3 downto 0);
						BUS_8BIT <= '1';
						BUS_WAIT_CLOCKS <= CLOCK_IN_MHZ * 50;
						BUS_ACTIVE <= '1';
						STATE <= EXEC2;
					--
					when EXEC2 -- write character data
					=>
						BUS_RS <= '1';
						BUS_DATA <= DISP_CHAR;
						BUS_8BIT <= '1';
						BUS_WAIT_CLOCKS <= CLOCK_IN_MHZ * 50;
						BUS_ACTIVE <= '1';
						STATE <= EXECFINISH;
					--
					when EXECFINISH -- wait until the DISP_WR goes back, if not happened yet
					=>
						if DISP_WR = '0'
						then
							STATE <= IDLE;
						end if;
					--
				end case;
			end if;

			-- bus control state machine
			case BUSSTATE
			is
				when IDLE
				=>
					BUS_EN <= '0';
					if BUS_ACTIVE = '1'
					then
						PIN_DATA <= BUS_DATA(7 downto 4); -- high part first
						BUS_CNT <= EN_STATE_CLOCKS;
						BUSSTATE <= EN_LOW;
					end if;
				--
				when EN_LOW
				=>
					if BUS_CNT = 0
					then
						BUS_EN <= '1';
						BUS_CNT <= EN_STATE_CLOCKS;
						BUSSTATE <= EN_HIGH;
					else
						BUS_CNT <= BUS_CNT - 1;
					end if;
				--
				when EN_HIGH
				=>
					if BUS_CNT = 0
					then
						BUS_EN <= '0';
						BUS_CNT <= EN_STATE_CLOCKS * 2;
						BUSSTATE <= EN_LOW2;
					else
						BUS_CNT <= BUS_CNT - 1;
					end if;
				--
				when EN_LOW2
				=>
					if BUS_CNT = 0
					then
						if BUS_8BIT = '1'
						then
							BUS_8BIT <= '0';

							BUS_EN <= '0';
							PIN_DATA <= BUS_DATA(3 downto 0); -- the low part
							BUS_CNT <= EN_STATE_CLOCKS;
							BUSSTATE <= EN_LOW;
						else
							BUSSTATE <= EXECWAIT;
						end if;
					else
						BUS_CNT <= BUS_CNT - 1;
					end if;
				--
				when EXECWAIT
				=>
					if BUS_WAIT_CLOCKS = 0
					then
						BUS_ACTIVE <= '0';
						BUSSTATE <= IDLE;
					else
						BUS_WAIT_CLOCKS <= BUS_WAIT_CLOCKS - 1;
					end if;
				--
			end case; -- BUSSTATE
		end if;
	end process;

	contrast : process(CLKIN)
	begin
		if rising_edge(CLKIN)
		then
			if CONTR_CNT = 0
			then
				if CONTR_OUTLEVEL = '0'
				then
					CONTR_CNT <= CONTRAST_HIGH;
				else
					CONTR_CNT <= CONTRAST_LOW;
				end if;
				CONTR_OUTLEVEL <= not CONTR_OUTLEVEL;
			else
				CONTR_CNT <= CONTR_CNT - 1;
			end if;
		end if;
	end process;

end behavioral;