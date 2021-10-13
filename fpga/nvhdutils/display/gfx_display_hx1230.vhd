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
-- file:     gfx_display_hx1230.vhd
-- brief:    driver for the HX1230 graphichal lcd
-- created:  2021-06-05
-- authors:  nvitya

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity gfx_display_hx1230 is
generic
(
	-- system clock divisor:
	CLOCK_IN_MHZ		: integer range 1 to 600;
	PIXWIDTH				: integer range 32 to 256;
	PIXHEIGHT			: integer range 8 to 256;
	CONTRAST				: integer range 0 to 31 := 16
);
port
(
	-- HW Interface

	PIN_RST 		: out std_logic;
	PIN_CE      : out std_logic;
	PIN_DIN     : out std_logic;
	PIN_CLK     : out std_logic;

	-- User interface:

	REFRESH 		: in std_logic;  -- '1' starts refreshing the display, can be tied fix '1' for continuous refreshing
	DISP_READY  : out std_logic;

	DRAM_WADDR	: in integer range 0 to (PIXWIDTH * PIXHEIGHT / 8)-1;
	DRAM_WDATA  : in unsigned(7 downto 0);
	DRAM_WR		: in std_logic;

	CLKIN : in std_logic -- Any high speed system clock
);
end entity;

architecture behavioral of gfx_display_hx1230
is
	constant DRAM_BYTES : integer := (PIXWIDTH * PIXHEIGHT / 8);

	constant CLK_STATE_CLOCKS : integer := CLOCK_IN_MHZ * 2;  -- low or high clock state held for this amount of clocks

	constant INITSQ_LENGTH : integer := 8;
	type T_INITSQ_ARRAY is array(0 to INITSQ_LENGTH-1) of unsigned(7 DownTo 0);

	-- HX1230 Command/Control table:
	-----------------------------------------
	-- D/C | D7  D6  D5  D4  D3  D2  D1  D0 |
	-------|--------------------------------|
	--   0 |  0   0   1   0  W3  W2  W1  W0 |  W(4): internal power supply, 1111 = turn on, 1000 = turn off
	--   0 |  1   0   0  B4  B3  B2  B1  B0 |  B(5): contrast, not supported by HX1230
	--   0 |  1   0   1   0   0   1   1   R |  R: 0 = normal, 1 = inverted display
	--   0 |  1   0   1   0   0   1   0   O |  O: all display points ???, 0 = full display off, 1 = full display on ???
	--   0 |  1   0   1   0   1   1   1   S |  S: display switch ???, 0 = turn off display, 1 =
	--   0 |  1   0   1   1   0  Y2  Y1  Y0 |  Y(3): set write row address
	--   0 |  0   0   0   0  X3  X2  X1  X0 |  X(7): set write column address (low bits)
	--   0 |  0   0   0   1   0  X6  X5  X4 |  X(7): set write column address (high bits)
	--   0 |  0   1  S5  S4  S3  S2  S1  S0 |  S(6): set start scan line
	-----------------------------------------
	--   1 | D7  D6  D5  D4  D3  D2  D1  D0 |  Pixel data
	-----------------------------------------
	-- non documented:
	--   0 |  1   1   0   0   V   0   0   0 |  V: flip vertical
	--   0 |  1   0   1   0   0   0   0   H |  H: flip horizontal, does not work with my panel

	constant INITSQ_ARRAY : T_INITSQ_ARRAY :=
	(
		 X"2F"  -- 1  turn on internal power supply

		,X"90"  -- 2  set contrast, not supported by the HX1230
		,X"A6"  -- 3  A6 = normal display, A7 = inverted display
		,X"A4"  -- 4  A4 = display on, A5 = display off
		,X"AF"  -- 5  AF = turn on display ???, AE = ???
		,X"40"  -- 6  set start scan line to 0

		,X"A0"  -- 7  A0 = normal, A1 = flip horiz
		,X"C0"  -- 8  C8 = flip vertical, C0 = normal
	);

	type T_DISP_RAM is array(0 to DRAM_BYTES-1) of unsigned(7 DownTo 0);

	type TSTATE is
	(
		RESET1, RESET2, RESET3,
		INITSQ_START, INITSQ1, INITSQ2, SETCONTRAST,
		IDLE,
		SETYPOS, SETXPOS1, SETXPOS2,
		DRAM_READ1, DRAM_READ2, NEXT_BYTE
	);
	signal STATE : TSTATE := RESET1;

	type   TBUSSTATE 	is (IDLE, CLK_LOW, CLK_HIGH, FINISH);
	signal BUSSTATE : TBUSSTATE := IDLE;

	signal INITSQ_IDX : integer range 0 to INITSQ_LENGTH;

	signal READY		: std_logic := '0';

	signal PINC_CE    : std_logic := '0';
	signal PINC_DIN   : std_logic := '0';
	signal PINC_CLK	: std_logic;

	signal BUS_ACTIVE : std_logic := '0';
	signal BUS_DATA   : unsigned(8 downto 0);  -- upper bit: 0 = command, 1 = data
	signal BUS_WAIT_CLOCKS : integer range 0 to CLOCK_IN_MHZ * 40000;
	signal BIT_CNT    : integer range 0 to 9;

	signal BUS_CNT    : integer range 0 to CLK_STATE_CLOCKS * 2;

	-- display RAM (inferred ram block)
	signal DISP_RAM	: T_DISP_RAM;
	signal DRAM_RADDR : integer range 0 to DRAM_BYTES-1;
	signal DRAM_RDATA : unsigned(7 downto 0);
begin

	PIN_CE 	<= PINC_CE;
	PIN_DIN 	<= PINC_DIN;
	PIN_CLK	<= PINC_CLK;

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

						PINC_CE <= '1';
						PINC_CLK <= '0';
						PINC_DIN <= '0';

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
							STATE <= SETCONTRAST;
						else
							STATE <= INITSQ1;
						end if;
					--
					when SETCONTRAST
					=>
						BUS_DATA <= "0" & "100" & to_unsigned(CONTRAST, 5);
						BUS_ACTIVE <= '1';
						STATE <= IDLE;
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
							STATE <= SETYPOS;
						end if;
					--
					when SETYPOS
					=>
						BUS_DATA <= "0" & X"B0";		-- set Y to 0
						BUS_ACTIVE <= '1';
						STATE <= SETXPOS1;
					--
					when SETXPOS1
					=>
						BUS_DATA <= "0" & X"10";		-- set X to 0 (low byte)
						BUS_ACTIVE <= '1';
						STATE <= SETXPOS2;
					--
					when SETXPOS2
					=>
						BUS_DATA <= "0" & X"00";		-- set X to 0 (high byte)
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
						if DRAM_RADDR = DRAM_BYTES
						then
							STATE <= IDLE;
						else
							DRAM_RADDR <= DRAM_RADDR + 1;
							STATE <= DRAM_READ1;
						end if;
					--
				end case; -- STATE
			end if; -- BUS_ACTIVE = '0'

			-- bus control state machine
			case BUSSTATE
			is
				when IDLE
				=>
					PINC_CE <= '0';
					if BUS_ACTIVE = '1'
					then
						PINC_CE <= '0';
						PINC_CLK <= '0';
						BIT_CNT <= 9;

						BUS_CNT <= 0; -- single clock state, reusing existing
						BUSSTATE <= CLK_HIGH;
					end if;
				--
				when CLK_LOW
				=>
					if BUS_CNT = 0
					then
						PINC_CLK <= '1';
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
						PINC_CLK <= '0';

						if BIT_CNT = 0
						then
							PINC_CE <= '1';
							BUS_CNT <= CLK_STATE_CLOCKS;
							BUSSTATE <= FINISH;
						else
							PINC_DIN <= BUS_DATA(8);
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