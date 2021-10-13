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
-- file:     tm1637.vhd
-- brief:    driver for the TM1637 (I2C like protocol)
-- created:  2021-06-05
-- authors:  nvitya

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.generic_functions.all;

-- the IC has 8 x 10 bit outputs and 3 x 8 bit inputs
-- the state machine continously sends the outputs and reads the inputs

entity tm1637 is
generic
(
	-- system clock divisor:
	CLOCK_DIV_2N : integer range 0 to 31 := 12   -- 8 = 1/256
);
port
(
	-- HW Interface

	PIN_DIO : inout std_logic;
	PIN_CLK : inout std_logic;

	-- User interface:

	CTRLBITS : in unsigned(3 downto 0);  	-- abbb: a = display on, bbb = brightness
	OUTDATA 	: in unsigned(47 downto 0);   -- 6x8 bytes
	INDATA  	: out unsigned(7 downto 0);   -- specially coded, contains the pressed key index (no multi press support)

	CLKIN : in std_logic -- Any high speed system clock
);
end entity;

architecture behavioral of tm1637
is
	type TCTRLSTATE 	is (STARTOUTPREP, WAITOUTPREP, STARTOUT, WAITOUT, STARTCTRL, WAITCTRL, STARTIN, WAITIN);

	signal CTRLSTATE : TCTRLSTATE := STARTOUTPREP;

	signal STARTSHIFTING : std_logic := '0';
	signal SHIFTFINISHED : std_logic := '1';

	signal OUTSHR	: unsigned(55 downto 0);
	signal INSHR	: unsigned(7 downto 0);

	signal OUTBITCNT : integer range 0 to 56;  -- including the command
	signal INBITCNT  : integer range 0 to 8;

	signal CLKCNT : unsigned(31 downto 0);
	signal DCLK   : std_logic;
	signal BITCNT : integer range 0 to 9;

   type TSHSTATE 		is (IDLE, START, TXLOW, TXHIGH, WAITACK, RXLOW, RXHIGH, STOP, STOP2, FINISHED);
	signal SHSTATE : TSHSTATE := IDLE;

begin

	DCLK <= CLKCNT(CLOCK_DIV_2N);

	transaction_control : process (DCLK)
	begin
		if rising_edge(DCLK)
		then
			STARTSHIFTING <= '0';

			case CTRLSTATE
			is
				when STARTOUTPREP
				=>
					OUTSHR(7 downto 0) <= X"40";  -- prepare write data with autoincrement address
					OUTBITCNT <= 8;
					INBITCNT  <= 0;
					STARTSHIFTING <= '1';
					SHIFTFINISHED <= '0';

					CTRLSTATE <= WAITOUTPREP;
				--
				when WAITOUTPREP
				=>
					if SHIFTFINISHED = '1'
					then
						CTRLSTATE <= STARTOUT;
					end if;
				--
				when STARTOUT
				=>
					OUTSHR(7 downto 0) <= X"C0";  -- set start address + send data
					OUTSHR(55 downto 8) <= OUTDATA;
					--OUTBITCNT <= 40;
					OUTBITCNT <= 56;
					INBITCNT  <= 0;
					STARTSHIFTING <= '1';
					SHIFTFINISHED <= '0';

					CTRLSTATE <= WAITOUT;
				--
				when WAITOUT
				=>
					if SHIFTFINISHED = '1'
					then
						CTRLSTATE <= STARTCTRL;
					end if;
				--
				when STARTCTRL
				=>
					OUTSHR(7 downto 0) <= "1000" & CTRLBITS;  -- prepare the control register (display on + intensity)
					OUTBITCNT <= 8;
					INBITCNT  <= 0;
					STARTSHIFTING <= '1';
					SHIFTFINISHED <= '0';

					CTRLSTATE <= WAITCTRL;
				--
				when WAITCTRL
				=>
					if SHIFTFINISHED = '1'
					then
						CTRLSTATE <= STARTIN;
					end if;
				--
				------------------------------------------------------------
				when STARTIN
				=>
					OUTSHR(7 downto 0) <= X"42"; -- read data
					OUTBITCNT <= 8;
					INBITCNT  <= 8;
					STARTSHIFTING <= '1';
					SHIFTFINISHED <= '0';

					CTRLSTATE <= WAITIN;
				--
				when WAITIN
				=>
					if SHIFTFINISHED = '1'
					then
						CTRLSTATE <= STARTOUTPREP; -- back to the start
					end if;
				--
			end case; -- CTRLSTATE

			-- shifting process (in the same process to manipulate the shift registers)

			case SHSTATE  -- IDLE, TXLOW, TXHIGH, RXSTART, RXLOW, RXHIGH, FINISHED
			is
				when IDLE
				=>
					-- set the default states
					PIN_DIO <= 'Z';
					PIN_CLK <= 'Z';

					if STARTSHIFTING = '1'
					then
						PIN_DIO <= '0';
						SHSTATE <= START;
					end if;
				--
				when START -- start condition: CLK=1, DIO=0
				=>
					PIN_CLK <= '0';
					PIN_DIO <= '0';
					BITCNT <= 8;
					SHSTATE <= TXLOW;
				--
				when TXLOW -- start of CLK low
				=>
					PIN_CLK <= '0';

					if BITCNT = 0
					then
						-- ACK bit
						PIN_DIO <= 'Z';
						SHSTATE <= WAITACK;
					else
						if OUTSHR(0) = '1'
						then
							PIN_DIO <= 'Z';
						else
							PIN_DIO <= '0';
						end if;
						OUTSHR <= "0" & OUTSHR(55 downto 1); -- shift the out register
						OUTBITCNT <= OUTBITCNT - 1;
						BITCNT <= BITCNT - 1;
						SHSTATE <= TXHIGH;
					end if;
				--
				when TXHIGH -- start of CLK high
				=>
					PIN_CLK <= 'Z';
					SHSTATE <= TXLOW;
				--
				when WAITACK -- tm1637 ACK bit (ignored)
				=>
					PIN_CLK <= 'Z';
					PIN_DIO <= 'Z';

					if OUTBITCNT = 0
					then
						-- TX finished
						if INBITCNT /= 0
						then
							SHSTATE <= RXLOW;
						else
							SHSTATE <= STOP;
						end if;
					else
						BITCNT <= 8;
						SHSTATE <= TXLOW;
					end if;
				--

				when RXLOW -- start of CLK low
				=>
					PIN_CLK <= '0';
					if INBITCNT = 0
					then
						INDATA <= INSHR;
						SHSTATE <= WAITACK;
					else
						SHSTATE <= RXHIGH;
					end if;
				--
				when RXHIGH -- start of CLK high
				=>
					PIN_CLK <= 'Z';
					INSHR <= PIN_DIO & INSHR(7 downto 1);
					SHSTATE <= RXLOW;
					INBITCNT <= INBITCNT - 1;
				--

				when STOP
				=>
					PIN_CLK <= '0';
					PIN_DIO <= '0';
					SHSTATE <= STOP2;
				--
				when STOP2
				=>
					PIN_CLK <= 'Z';
					PIN_DIO <= '0';
					BITCNT <= 8;
					SHSTATE <= FINISHED;
				--
				when FINISHED
				=>
					PIN_CLK <= 'Z';
					PIN_DIO <= 'Z';
					if BITCNT = 0
					then
						SHIFTFINISHED <= '1';
						SHSTATE <= IDLE;
					else
						BITCNT <= BITCNT - 1;
					end if;
				--
			end case;
		end if;
	end process;

	process (CLKIN)  -- high speed clock counter for clock division
	begin
		if rising_edge(CLKIN)
		then
			CLKCNT <= CLKCNT + 1;
		end if;
	end process;

end behavioral;