
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity VRV1_543_vhdl is
port
(
	GPIOA_IO  		: inout  std_logic_vector(31 downto 0);
	GPIOB_IO  		: inout  std_logic_vector(31 downto 0);

	UART1_TXD_O 	: out std_ulogic;
	UART1_RXD_I 	: in  std_ulogic := '0';

	UART2_TXD_O 	: out std_ulogic;
	UART2_RXD_I 	: in  std_ulogic := '0';

	SPIM1_SS    	: out std_logic_vector(3 downto 0);
	SPIM1_SCLK  	: out std_logic;
	SPIM1_MOSI  	: out std_logic;
	SPIM1_MISO  	: in  std_logic;

	SPIM2_SS    	: out std_logic_vector(3 downto 0);
	SPIM2_SCLK  	: out std_logic;
	SPIM2_MOSI  	: out std_logic;
	SPIM2_MISO  	: in  std_logic;

	VGA_CLOCK   	: in  std_logic;
	VGA_VSYNC   	: out std_logic;
	VGA_HSYNC   	: out std_logic;
	--VGA_COLOREN 	: out std_logic;
	VGA_COLOR_R 	: out std_logic_vector(4 downto 0);
	VGA_COLOR_G 	: out std_logic_vector(5 downto 0);
	VGA_COLOR_B 	: out std_logic_vector(4 downto 0);

	SDRAM_ADDR  	: out   std_logic_vector(12 downto 0);
	SDRAM_BA    	: out   std_logic_vector(1 downto 0);
	SDRAM_CAS   	: out   std_logic;
	SDRAM_CKE   	: out   std_logic;
	SDRAM_CS    	: out   std_logic;
	SDRAM_DQ    	: inout std_logic_vector(15 downto 0);
	SDRAM_DQM   	: out   std_logic_vector(1 downto 0);
	SDRAM_RAS   	: out   std_logic;
	SDRAM_WE    	: out   std_logic;
	-- the SDRAM_CLK must be provided separately, with phase shift, -45 degrees was working well on my board

	JTAG_TCK			: in std_logic;
	JTAG_TDI			: in std_logic;
	JTAG_TDO			: out std_logic;
	JTAG_TMS			: in std_logic;

	APB_PADDR		: out std_logic_vector(19 downto 0);
	APB_PSEL			: out std_logic;
	APB_PENABLE		: out std_logic;
	APB_PREADY		: in  std_logic;
	APB_PWRITE		: out std_logic;
	APB_PWDATA		: out std_logic_vector(31 downto 0);
	APB_PRDATA		: in  std_logic_vector(31 downto 0);
	APB_PSLVERROR	: in  std_logic;

	RESET	      	: in std_ulogic := '0'; 	-- async reset, positive logic
	CLK_100	 		: in std_logic 				-- 100 MHz clock, fixed for the used SDRAM
);
end entity;

architecture behavioral of VRV1_543_vhdl
is
	signal SDRAM_DQ_Z  : std_logic_vector(15 downto 0);
	signal SDRAM_DQ_WE : std_logic_vector(15 downto 0);
	signal SDRAM_DQ_WR : std_logic_vector(15 downto 0);

	signal GPIOA_WRITE   : std_logic_vector(31 downto 0);
	signal GPIOA_WRITEEN : std_logic_vector(31 downto 0);

	signal GPIOB_WRITE   : std_logic_vector(31 downto 0);
	signal GPIOB_WRITEEN : std_logic_vector(31 downto 0);

	signal VGA_EN : std_logic;
	signal VGA_R  : std_logic_vector(4 downto 0);
	signal VGA_G  : std_logic_vector(5 downto 0);
	signal VGA_B  : std_logic_vector(4 downto 0);

	component VRV1_543 is
	port
	(
		io_gpioA_read  			: in  std_logic_vector(31 downto 0);
		io_gpioA_write  			: out std_logic_vector(31 downto 0);
		io_gpioA_writeEnable  	: out std_logic_vector(31 downto 0);

		io_gpioB_read  			: in  std_logic_vector(31 downto 0);
		io_gpioB_write  			: out std_logic_vector(31 downto 0);
		io_gpioB_writeEnable  	: out std_logic_vector(31 downto 0);

		io_uart1_rxd       		: in  std_logic;
		io_uart1_txd       		: out std_logic;

		io_uart2_rxd       		: in  std_logic;
		io_uart2_txd       		: out std_logic;

		io_spim1_ss   				: out std_logic_vector(3 downto 0);
		io_spim1_sclk 				: out std_logic;
		io_spim1_mosi 				: out std_logic;
		io_spim1_miso 				: in  std_logic;

		io_spim2_ss   				: out std_logic_vector(3 downto 0);
		io_spim2_sclk 				: out std_logic;
		io_spim2_mosi 				: out std_logic;
		io_spim2_miso 				: in  std_logic;

		io_vga_vSync   			: out std_logic;
		io_vga_hSync   			: out std_logic;
		io_vga_colorEn 			: out std_logic;
		io_vga_color_r 			: out std_logic_vector(4 downto 0);
		io_vga_color_g 			: out std_logic_vector(5 downto 0);
		io_vga_color_b 			: out std_logic_vector(4 downto 0);

		io_sdram_ADDR         	: out std_logic_vector(12 downto 0);
		io_sdram_BA           	: out std_logic_vector(1 downto 0);
		io_sdram_CASn        	: out std_logic;
		io_sdram_CKE          	: out std_logic;
		io_sdram_CSn         	: out std_logic;
		io_sdram_DQM          	: out std_logic_vector(1 downto 0);
		io_sdram_RASn        	: out std_logic;
		io_sdram_WEn         	: out std_logic;
		io_sdram_DQ_read			: in  std_logic_vector(15 downto 0);
		io_sdram_DQ_write			: out std_logic_vector(15 downto 0);
		io_sdram_DQ_writeEnable : out std_logic_vector(15 downto 0);

		io_jtag_tms            	: in  std_logic;
		io_jtag_tdi            	: in  std_logic;
		io_jtag_tdo            	: out std_logic;
		io_jtag_tck            	: in  std_logic;

		io_apb2_PADDR				: out std_logic_vector(19 downto 0);
		io_apb2_PSEL				: out std_logic_vector(0 downto 0);
		io_apb2_PENABLE			: out std_logic;
		io_apb2_PREADY				: in  std_logic;
		io_apb2_PWRITE				: out std_logic;
		io_apb2_PWDATA				: out std_logic_vector(31 downto 0);
		io_apb2_PRDATA				: in  std_logic_vector(31 downto 0);
		io_apb2_PSLVERROR			: in  std_logic;

		io_timerExternal_clear  : in  std_logic;
		io_timerExternal_tick	: in  std_logic;
		io_coreInterrupt			: in  std_logic;

		io_axiClk               : in  std_logic;
		io_vgaClk               : in  std_logic;
		io_asyncReset           : in  std_logic
	);
	end component;

begin

	gen_sdram_dq_z : for i in 0 to 15
	generate
		SDRAM_DQ(i) <= SDRAM_DQ_WR(i) when SDRAM_DQ_WE(i) = '1' else 'Z';
	end generate;

	VGA_COLOR_R <= VGA_R when VGA_EN = '1' else "00000";
	VGA_COLOR_G <= VGA_G when VGA_EN = '1' else "000000";
	VGA_COLOR_B <= VGA_B when VGA_EN = '1' else "00000";

	gpioa_z : for i in 0 to 31
	generate
		GPIOA_IO(i) <= GPIOA_WRITE(i) when GPIOA_WRITEEN(i) = '1' else 'Z';
	end generate;


	u0 : component VRV1_543
	port map
	(
		io_gpioA_read  			=> GPIOA_IO,
		io_gpioA_write  			=> GPIOA_WRITE,
		io_gpioA_writeEnable  	=> GPIOA_WRITEEN,

		io_gpioB_read  			=> GPIOB_IO,
		io_gpioB_write  			=> GPIOB_WRITE,
		io_gpioB_writeEnable  	=> GPIOB_WRITEEN,

		io_uart1_rxd       		=> UART1_RXD_I,
		io_uart1_txd       		=> UART1_TXD_O,

		io_uart2_rxd       		=> UART2_RXD_I,
		io_uart2_txd       		=> UART2_TXD_O,

		io_spim1_ss   				=> SPIM1_SS,
		io_spim1_sclk 				=> SPIM1_SCLK,
		io_spim1_mosi 				=> SPIM1_MOSI,
		io_spim1_miso 				=> SPIM1_MISO,

		io_spim2_ss   				=> SPIM2_SS,
		io_spim2_sclk 				=> SPIM2_SCLK,
		io_spim2_mosi 				=> SPIM2_MOSI,
		io_spim2_miso 				=> SPIM2_MISO,

		io_vga_vSync   			=> VGA_VSYNC,
		io_vga_hSync   			=> VGA_HSYNC,
		io_vga_colorEn 			=> VGA_EN,
		io_vga_color_r 			=> VGA_R,
		io_vga_color_g 			=> VGA_G,
		io_vga_color_b 			=> VGA_B,

		io_sdram_ADDR         	=> SDRAM_ADDR,
		io_sdram_BA           	=> SDRAM_BA,
		io_sdram_CASn        	=> SDRAM_CAS,
		io_sdram_CKE          	=> SDRAM_CKE,
		io_sdram_CSn         	=> SDRAM_CS,
		io_sdram_RASn        	=> SDRAM_RAS,
		io_sdram_WEn         	=> SDRAM_WE,
		io_sdram_DQM          	=> SDRAM_DQM,
		io_sdram_DQ_read			=> SDRAM_DQ,
		io_sdram_DQ_write			=> SDRAM_DQ_WR,
		io_sdram_DQ_writeEnable =>	SDRAM_DQ_WE,

		io_jtag_tms            	=> JTAG_TMS,
		io_jtag_tdi            	=> JTAG_TDI,
		io_jtag_tdo            	=> JTAG_TDO,
		io_jtag_tck            	=> JTAG_TCK,

		io_apb2_PADDR				=> APB_PADDR,
		io_apb2_PSEL(0)			=> APB_PSEL,
		io_apb2_PENABLE			=> APB_PENABLE,
		io_apb2_PREADY				=> APB_PREADY,
		io_apb2_PWRITE				=> APB_PWRITE,
		io_apb2_PWDATA				=> APB_PWDATA,
		io_apb2_PRDATA				=> APB_PRDATA,
		io_apb2_PSLVERROR			=> APB_PSLVERROR,

		io_timerExternal_clear  => '0',
		io_timerExternal_tick	=> '0',
		io_coreInterrupt			=> '0',

		io_axiClk               => CLK_100,
		io_vgaClk               => VGA_CLOCK,
		io_asyncReset           => RESET
	);

end architecture;
