
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity VRV1_104_test_top is
port
(
	FLED 			: out std_logic;
	FKEY 			: in  std_logic;

	BLED 			: out unsigned(4 downto 0);
	BKEY 			: in  unsigned(4 downto 0);

	D7S_SEGMENT : out unsigned(7 downto 0);
   D7S_SEL 		: out unsigned(2 downto 0);

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

	CLKIN_50 	: in std_logic -- 50 MHz clock
);
end entity;

architecture behavioral of VRV1_104_test_top
is
	signal CLKCNT : unsigned(31 downto 0);
	signal CLK : std_logic;

	signal RESET 		: std_logic;
	signal RESET_N    : std_ulogic;

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
	
   component clock_pll
   port
   (
     clk_out1  : out    std_logic;
     clk_in1   : in     std_logic
   );
   end component;	
   
begin
	RESET_N <= FKEY;
	RESET <= not RESET_N;

	CLK 	 <= CLK_100;

	FLED <= GPIOA_IO(0);
	
   clockgen : component clock_pll
   port map 
   (       
      clk_out1 => CLK_100,     
      clk_in1  => CLKIN_50
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
