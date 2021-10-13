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
-- file:     gfx_display_uc1701.vhd
-- brief:    driver for the UC1701 graphichal LCD
-- created:  2021-06-05
-- authors:  nvitya

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity gfx_display_uc1701 is
generic
(
	-- system clock divisor:
	CLOCK_IN_MHZ		: integer range 1 to 600;
	PIXWIDTH				: integer range 32 to 256;
	PIXHEIGHT			: integer range 8 to 256
);
port
(
	-- HW Interface

	PIN_RST 		: out std_logic;
	PIN_CS      : out std_logic;
	PIN_RS      : out std_logic;  -- or PIN_CD: 0 = Command, 1 = Data
	PIN_SDA     : out std_logic;
	PIN_SCK     : out std_logic;

	-- User interface:

	REFRESH 		: in std_logic;  -- '1' starts refreshing the display, can be tied fix '1' for continuous refreshing
	DISP_READY  : out std_logic;

	DRAM_WADDR	: in integer range 0 to (PIXWIDTH * PIXHEIGHT / 8)-1;
	DRAM_WDATA  : in unsigned(7 downto 0);
	DRAM_WR		: in std_logic;

	CLKIN : in std_logic -- Any high speed system clock
);
end entity;

architecture behavioral of gfx_display_uc1701
is
	constant DRAM_BYTES : integer := (PIXWIDTH * PIXHEIGHT / 8);

	constant CLK_STATE_CLOCKS : integer := CLOCK_IN_MHZ * 2;  -- low or high clock state held for this amount of clocks

	constant INITSQ_LENGTH : integer := 19;
	type T_INITSQ_ARRAY is array(0 to INITSQ_LENGTH-1) of unsigned(7 DownTo 0);

	constant INITSQ_ARRAY : T_INITSQ_ARRAY :=
	(
		X"E2",	-- System Reset
		X"40",	-- Set display start line to 0
		X"A2",	-- Set Bias = 1/9
		X"2C",	-- Boost ON
		X"2E",	-- Voltage Regular On
		X"2F",	-- Voltage Follower On
		X"F8",	-- Set booster ratio to
		X"00",	-- 4x
		X"23",	-- Set Resistor Ratio = 3
		X"81",
		X"28",	-- Set Electronic Volume = 40
		X"AC",	--Set Static indicator off
		X"00",
		X"A6",	-- Disable inverse

		X"C8",   -- set com scan direction to remap
		X"A0",   -- set segment re-map to remap


		X"AF",	-- Set Display Enable
		-- delay_us(1000);
		X"A5",	-- display all points
		-- delay_us(2000);
		X"A4"		-- normal display
	);

	type T_DISP_RAM is array(0 to DRAM_BYTES-1) of unsigned(7 DownTo 0);

	type TSTATE is
	(
		RESET1, RESET2, RESET3,
		INITSQ_START, INITSQ1, INITSQ2,
		IDLE,
		SETYPOS, SETXPOS1, SETXPOS2,
		DRAM_READ1, DRAM_READ2, NEXT_BYTE
	);
	signal STATE : TSTATE := RESET1;

	type   TBUSSTATE 	is (IDLE, CLK_LOW, CLK_HIGH, FINISH);
	signal BUSSTATE : TBUSSTATE := IDLE;

	signal INITSQ_IDX : integer range 0 to INITSQ_LENGTH;

	signal READY		: std_logic := '0';

	signal PINC_CS    : std_logic := '0';
	signal PINC_SDA   : std_logic := '0';
	signal PINC_SCK	: std_logic;
	signal PINC_RS		: std_logic;

	signal BUS_ACTIVE : std_logic := '0';
	signal BUS_DATA   : unsigned(8 downto 0);  -- upper bit: 0 = command, 1 = data
	signal BUS_WAIT_CLOCKS : integer range 0 to CLOCK_IN_MHZ * 40000;
	signal BIT_CNT    : integer range 0 to 9;

	signal BUS_CNT    : integer range 0 to CLK_STATE_CLOCKS * 2;

	-- display RAM (inferred ram block)
	signal DISP_RAM	: T_DISP_RAM;
	signal DRAM_RADDR : integer range 0 to DRAM_BYTES-1;
	signal DRAM_RDATA : unsigned(7 downto 0);
	signal DISP_ROW   : integer range 0 to 31;
	signal DISP_COL   : integer range 0 to 255;
begin

	PIN_CS 	<= PINC_CS;
	PIN_RS	<= PINC_RS;
	PIN_SDA 	<= PINC_SDA;
	PIN_SCK	<= PINC_SCK;

	DISP_READY <= READY;

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
					when RESET1  -- 40 ms wait for start
					=>
						READY <= '0';

						PIN_RST <= '0';

						PINC_CS <= '1';
						PINC_SCK <= '0';
						PINC_SDA <= '0';

						BUS_WAIT_CLOCKS <= CLOCK_IN_MHZ * 10000;
						STATE <= RESET2;
					--
					when RESET2
					=>
						if BUS_WAIT_CLOCKS = 0
						then
							PIN_RST <= '1';  -- release the reset
							BUS_WAIT_CLOCKS <= CLOCK_IN_MHZ * 10000;
							STATE <= RESET3;
						else
							BUS_WAIT_CLOCKS <= BUS_WAIT_CLOCKS - 1;
						end if;
					--
					when RESET3 -- wait after reset release
					=>
						if BUS_WAIT_CLOCKS = 0
						then
							STATE <= INITSQ_START;
						else
							BUS_WAIT_CLOCKS <= BUS_WAIT_CLOCKS - 1;
						end if;
					--

					--
					--
					when INITSQ_START
					=>
						INITSQ_IDX <= 0;
						STATE <= INITSQ1;
					--
					when INITSQ1
					=>
						BUS_DATA <= "0" & INITSQ_ARRAY(INITSQ_IDX);
						INITSQ_IDX <= INITSQ_IDX + 1;
						BUS_ACTIVE <= '1';
						STATE <= INITSQ2;
					--
					when INITSQ2
					=>
						if INITSQ_IDX = INITSQ_LENGTH
						then
							STATE <= IDLE;
						else
							STATE <= INITSQ1;
						end if;
					--

					-- IDLE, wait for refresh
					--
					when IDLE -- wait for commands
					=>
						READY <= '1';
						if REFRESH = '1'
						then
							READY <= '0';
							DRAM_RADDR <= 0;				-- reset read address
							DISP_ROW <= 0;
							STATE <= SETYPOS;
						end if;
					--
					when SETYPOS
					=>
						BUS_DATA <= "0" & X"B" & to_unsigned(DISP_ROW, 4);		-- set Y
						DISP_COL <= 0;
						BUS_ACTIVE <= '1';
						STATE <= SETXPOS1;
					--
					when SETXPOS1
					=>
						BUS_DATA <= "0" & X"00";		-- set X to 0 (low byte)
						BUS_ACTIVE <= '1';
						STATE <= SETXPOS2;
					--
					when SETXPOS2
					=>
						BUS_DATA <= "0" & X"10";		-- set X to 0 (high byte)
						BUS_ACTIVE <= '1';
						STATE <= DRAM_READ2;
					--
					when DRAM_READ1 -- extra cycle for DRAM read
					=>
						STATE <= DRAM_READ2;
					--
					when DRAM_READ2 -- get the display data and send to the display
					=>
						BUS_DATA <= "1" & DISP_RAM(DRAM_RADDR);
						BUS_ACTIVE <= '1';
						STATE <= NEXT_BYTE;
					--
					when NEXT_BYTE -- get the display data and send to the display
					=>
						if DRAM_RADDR = DRAM_BYTES-1
						then
							STATE <= IDLE;
						else
							DRAM_RADDR <= DRAM_RADDR + 1;

							if DISP_COL = PIXWIDTH - 1
							then
								DISP_ROW <= DISP_ROW + 1;
								STATE <= SETYPOS;
							else
								DISP_COL <= DISP_COL + 1;
								STATE <= DRAM_READ1;
							end if;
						end if;
					--
				end case; -- STATE
			end if; -- BUS_ACTIVE = '0'

			-- bus control state machine
			case BUSSTATE
			is
				when IDLE
				=>
					PINC_CS <= '0';
					if BUS_ACTIVE = '1'
					then
						PINC_RS <= BUS_DATA(8); -- take the bit 8 as RS control

						PINC_CS <= '0';
						PINC_SCK <= '0';
						BIT_CNT <= 8;

						BUS_CNT <= 0; -- single clock state, reusing existing
						BUSSTATE <= CLK_HIGH;
					end if;
				--
				when CLK_LOW
				=>
					if BUS_CNT = 0
					then
						PINC_SCK <= '1';
						BUS_DATA <= BUS_DATA(7 downto 0) & '0'; -- shift once
						BUS_CNT <= CLK_STATE_CLOCKS;
						BUSSTATE <= CLK_HIGH;
					else
						BUS_CNT <= BUS_CNT - 1;
					end if;
				--
				when CLK_HIGH -- prepare the next bit
				=>
					if BUS_CNT = 0
					then
						PINC_SCK <= '0';

						if BIT_CNT = 0
						then
							PINC_CS <= '1';
							BUS_CNT <= CLK_STATE_CLOCKS;
							BUSSTATE <= FINISH;
						else
							PINC_SDA <= BUS_DATA(7);
							BIT_CNT <= BIT_CNT - 1;
							BUS_CNT <= CLK_STATE_CLOCKS;
							BUSSTATE <= CLK_LOW;
						end if;
					else
						BUS_CNT <= BUS_CNT - 1;
					end if;
				--
				when FINISH -- hold CE high for one clock
				=>
					if BUS_CNT = 0
					then
						BUS_ACTIVE <= '0';
						BUSSTATE <= IDLE;
					else
						BUS_CNT <= BUS_CNT - 1;
					end if;
				--
			end case; -- BUSSTATE
		end if;
	end process;

	dispram_write : process(CLKIN)
	begin
		if rising_edge(CLKIN)
		then
			if DRAM_WR = '1'
			then
				DISP_RAM(DRAM_WADDR) <= DRAM_WDATA;
			end if;
		end if;
	end process;

end behavioral;