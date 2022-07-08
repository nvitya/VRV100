
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity VRV1_104_test_top is
port
(
	LED 	: out std_logic_vector(3 downto 0);
	KEY 	: in  std_logic_vector(3 downto 0);

	UART0_TXD_O : out std_logic;
	UART0_RXD_I : in  std_logic := '0';

	SPIM1_SS    : out std_logic;
	SPIM1_SCLK  : out std_logic;
	SPIM1_MOSI  : out std_logic;
	SPIM1_MISO  : in  std_logic;

	JTAG_TRST	: in std_logic;
	JTAG_TCK		: in std_logic;
	JTAG_TDI		: in std_logic;
	JTAG_TDO		: out std_logic;
	JTAG_TMS		: in std_logic;

	RESET_N     : in  std_ulogic := '0'; 	-- global reset, low-active, async

	CLKIN_50 	: in std_logic -- 50 MHz clock
);
end entity;

architecture behavioral of VRV1_104_test_top
is
	signal CLKCNT : unsigned(31 downto 0);
	signal CLK : std_logic;

	signal RESET : std_logic;

	signal CLK_100 			: std_logic;
	signal CLK_100_SDRAM 	: std_logic;

	signal GPIO_OUT 		: std_logic_vector(31 downto 0);

	signal GPIOA_IO      : std_logic_vector(31 downto 0);

	signal APB_PADDR		: std_logic_vector(19 downto 0);
	signal APB_PSEL		: std_logic;
	signal APB_PENABLE	: std_logic;
	signal APB_PREADY		: std_logic;
	signal APB_PWRITE		: std_logic;
	signal APB_PWDATA		: std_logic_vector(31 downto 0);
	signal APB_PRDATA		: std_logic_vector(31 downto 0);
	signal APB_PSLVERROR	: std_logic;

begin
	RESET <= not RESET_N;
	CLK 	 <= CLK_100;

	LED(0) <= not GPIO_OUT(0);
	LED(1) <= not GPIO_OUT(1);
	LED(2) <= not GPIO_OUT(2);
	LED(3) <= CLKCNT(24);

	clockgen : entity work.clock_pll
	port map
	(
		INCLK0 	=> CLKIN_50,
		C0			=> CLK_100,
		C1			=> CLK_100_SDRAM
	);

	u0 : entity work.VRV1_104_vhdl
	port map
	(
		GPIOA_IO					=>	GPIOA_IO,

		UART1_TXD_O 			=> UART0_TXD_O,
		UART1_RXD_I 			=> UART0_RXD_I,

		SPIM1_SS(0)   			=> SPIM1_SS,
		SPIM1_SS(3 downto 1) => open,
		SPIM1_SCLK  			=> SPIM1_SCLK,
		SPIM1_MOSI  			=> SPIM1_MOSI,
		SPIM1_MISO  			=> SPIM1_MISO,

		JTAG_TMS            	=> JTAG_TMS,
		JTAG_TDI            	=> JTAG_TDI,
		JTAG_TDO            	=> JTAG_TDO,
		JTAG_TCK            	=> JTAG_TCK,

		APB_PADDR				=> APB_PADDR,
		APB_PSEL					=> APB_PSEL,
		APB_PENABLE				=> APB_PENABLE,
		APB_PREADY				=> APB_PREADY,
		APB_PWRITE				=> APB_PWRITE,
		APB_PWDATA				=> APB_PWDATA,
		APB_PRDATA				=> APB_PRDATA,
		APB_PSLVERROR			=> APB_PSLVERROR,

		CLK_100	            => CLK,
		RESET						=> RESET
	);

	periph : entity work.apb_periph
	port map
	(
		APB_PADDR		=> APB_PADDR,
		APB_PSEL			=> APB_PSEL,
		APB_PENABLE		=> APB_PENABLE,
		APB_PREADY		=> APB_PREADY,
		APB_PWRITE		=> APB_PWRITE,
		APB_PWDATA		=> APB_PWDATA,
		APB_PRDATA		=> APB_PRDATA,
		APB_PSLVERROR	=> APB_PSLVERROR,

		GPIO_OUT			=> GPIO_OUT,
		GPIO_IN			=> std_logic_vector(CLKCNT(31 downto 0)),

		RESET     		=> RESET,
		CLK		 		=> CLK
	);

	process (CLK)
	begin
	 if rising_edge(CLK)
	 then
		CLKCNT <= CLKCNT + 1;
	 end if;
	end process;

end architecture;
