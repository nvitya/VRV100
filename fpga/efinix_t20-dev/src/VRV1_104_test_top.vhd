
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity VRV1_104_test_top is
port
(
	LED 				: out std_logic_vector(7 downto 0);
	KEY 				: in  std_logic_vector(2 downto 0);
	SW 					: in  std_logic_vector(2 downto 0);

	UART0_TXD_O : out std_logic;
	UART0_RXD_I : in  std_logic := '0';

	SPIM1_SS    : out std_logic;
	SPIM1_SCLK  : out std_logic;
	SPIM1_MOSI  : out std_logic;
	SPIM1_MISO  : in  std_logic;

	JTAG_TCK		: in std_logic;
	JTAG_TDI		: in std_logic;
	JTAG_TDO		: out std_logic;
	JTAG_TMS		: in std_logic;

	PLL_LOCKED  : in std_logic;
	PLL_RST     : out std_logic;
	PLLCLK_100_SD	: in std_logic;
	PLLCLK_100		: in std_logic
);
end entity;

architecture behavioral of VRV1_104_test_top
is
	signal CLKCNT : unsigned(31 downto 0);
	signal CLK 		: std_logic;

	signal RESET 	 : std_logic;
	signal RESET_N : std_ulogic;

	signal GPIO_OUT 			: std_logic_vector(31 downto 0);

	signal GPIOA_OUT      : std_logic_vector(31 downto 0);

	signal APB_PADDR			: std_logic_vector(19 downto 0);
	signal APB_PSEL				: std_logic;
	signal APB_PENABLE		: std_logic;
	signal APB_PREADY			: std_logic;
	signal APB_PWRITE			: std_logic;
	signal APB_PWDATA			: std_logic_vector(31 downto 0);
	signal APB_PRDATA			: std_logic_vector(31 downto 0);
	signal APB_PSLVERROR	: std_logic;

begin
	RESET_N <= not KEY(0);
	RESET		<= RESET_N;

	PLL_RST <= '1';	

	CLK 	<= PLLCLK_100;

	LED(0) 					<= CLKCNT(25);
	LED(1) 					<= not GPIOA_OUT(0);
	LED(3 downto 2) <= "11";
	LED(7 downto 4) <= not GPIO_OUT(3 downto 0);

	u0 : entity work.VRV1_104_vhdl
	port map
	(
		GPIOA_OUT					=> GPIOA_OUT,
		GPIOA_IN          => X"00000000",
		GPIOA_OE					=> open,

		UART1_TXD_O 			=> UART0_TXD_O,
		UART1_RXD_I 			=> UART0_RXD_I,

		SPIM1_SS(0)   		=> SPIM1_SS,
		SPIM1_SS(3 downto 1) => open,
		SPIM1_SCLK  			=> SPIM1_SCLK,
		SPIM1_MOSI  			=> SPIM1_MOSI,
		SPIM1_MISO  			=> SPIM1_MISO,

		JTAG_TMS          => JTAG_TMS,
		JTAG_TDI          => JTAG_TDI,
		JTAG_TDO          => JTAG_TDO,
		JTAG_TCK          => JTAG_TCK,

		APB_PADDR					=> APB_PADDR,
		APB_PSEL					=> APB_PSEL,
		APB_PENABLE				=> APB_PENABLE,
		APB_PREADY				=> APB_PREADY,
		APB_PWRITE				=> APB_PWRITE,
		APB_PWDATA				=> APB_PWDATA,
		APB_PRDATA				=> APB_PRDATA,
		APB_PSLVERROR			=> APB_PSLVERROR,

		CLK_100	          => CLK,
		RESET							=> RESET
	);

	periph : entity work.apb_periph
	port map
	(
		APB_PADDR			=> APB_PADDR,
		APB_PSEL			=> APB_PSEL,
		APB_PENABLE		=> APB_PENABLE,
		APB_PREADY		=> APB_PREADY,
		APB_PWRITE		=> APB_PWRITE,
		APB_PWDATA		=> APB_PWDATA,
		APB_PRDATA		=> APB_PRDATA,
		APB_PSLVERROR	=> APB_PSLVERROR,

		GPIO_OUT			=> GPIO_OUT,
		GPIO_IN				=> std_logic_vector(CLKCNT(31 downto 0)),

		RESET     		=> RESET,
		CLK		 				=> CLK
	);

	process (CLK)
	begin
	  if rising_edge(CLK)
	  then
		  CLKCNT <= CLKCNT + 1;
	  end if;
	end process;

end architecture;
