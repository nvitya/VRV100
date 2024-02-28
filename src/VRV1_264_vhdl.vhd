
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity VRV1_264_vhdl is
port
(
	GPIOA_IO  		: inout  std_logic_vector(31 downto 0);

	UART1_TXD_O 	: out std_ulogic;
	UART1_RXD_I 	: in  std_ulogic := '0';

	SPIM1_SS    	: out std_logic_vector(3 downto 0);
	SPIM1_SCLK  	: out std_logic;
	SPIM1_MOSI  	: out std_logic;
	SPIM1_MISO  	: in  std_logic;

	AXI_AW_VALID 				: out std_logic;
	AXI_AW_READY 				: in  std_logic;
	AXI_AW_PAYLOAD_ADDR 	   : out std_logic_vector(27 downto 0);
	AXI_AW_PAYLOAD_ID 		: out std_logic_vector( 3 downto 0);
	AXI_AW_PAYLOAD_LEN 		: out std_logic_vector( 7 downto 0);
	AXI_AW_PAYLOAD_SIZE 	   : out std_logic_vector( 2 downto 0);
	AXI_AW_PAYLOAD_BURST 	: out std_logic_vector( 1 downto 0);
	AXI_AW_PAYLOAD_LOCK 	   : out std_logic_vector( 0 downto 0);
	AXI_AW_PAYLOAD_CACHE 	: out std_logic_vector( 3 downto 0);
	AXI_AW_PAYLOAD_QOS 		: out std_logic_vector( 3 downto 0);
	AXI_AW_PAYLOAD_PROT 		: out std_logic_vector( 2 downto 0);
	AXI_W_VALID 				: out std_logic;
	AXI_W_READY 				: in  std_logic;
	AXI_W_PAYLOAD_DATA 		: out std_logic_vector(31 downto 0);
	AXI_W_PAYLOAD_STRB 		: out std_logic_vector( 3 downto 0);
	AXI_W_PAYLOAD_LAST 		: out std_logic;
	AXI_B_VALID 				: in  std_logic;
	AXI_B_READY 				: out std_logic;
	AXI_B_PAYLOAD_ID 			: in  std_logic_vector( 3 downto 0);
	AXI_B_PAYLOAD_RESP 		: in  std_logic_vector( 1 downto 0);
	AXI_AR_VALID 				: out std_logic;
	AXI_AR_READY 				: in  std_logic;
	AXI_AR_PAYLOAD_ADDR 		: out std_logic_vector(27 downto 0);
	AXI_AR_PAYLOAD_ID 		: out std_logic_vector( 3 downto 0);
	AXI_AR_PAYLOAD_LEN 		: out std_logic_vector( 7 downto 0);
	AXI_AR_PAYLOAD_SIZE 		: out std_logic_vector( 2 downto 0);
	AXI_AR_PAYLOAD_BURST 	: out std_logic_vector( 1 downto 0);
	AXI_AR_PAYLOAD_LOCK 		: out std_logic_vector( 0 downto 0);
	AXI_AR_PAYLOAD_CACHE 	: out std_logic_vector( 3 downto 0);
	AXI_AR_PAYLOAD_QOS 		: out std_logic_vector( 3 downto 0);
	AXI_AR_PAYLOAD_PROT 		: out std_logic_vector( 2 downto 0);
	AXI_R_VALID 				: in  std_logic;
	AXI_R_READY 				: out std_logic;
	AXI_R_PAYLOAD_DATA 		: in  std_logic_vector(31 downto 0);
	AXI_R_PAYLOAD_ID 			: in  std_logic_vector( 3 downto 0);
	AXI_R_PAYLOAD_RESP 		: in  std_logic_vector( 1 downto 0);
	AXI_R_PAYLOAD_LAST 		: in  std_logic;

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

architecture behavioral of VRV1_264_vhdl
is

	signal GPIOA_WRITE   : std_logic_vector(31 downto 0);
	signal GPIOA_WRITEEN : std_logic_vector(31 downto 0);

	signal GPIOB_WRITE   : std_logic_vector(31 downto 0);
	signal GPIOB_WRITEEN : std_logic_vector(31 downto 0);

	component VRV1_264 is
	port
	(
		io_gpioA_read  			: in  std_logic_vector(31 downto 0);
		io_gpioA_write  			: out std_logic_vector(31 downto 0);
		io_gpioA_writeEnable  	: out std_logic_vector(31 downto 0);

		io_uart1_rxd       		: in  std_logic;
		io_uart1_txd       		: out std_logic;

		io_spim1_ss   				: out std_logic_vector(3 downto 0);
		io_spim1_sclk 				: out std_logic;
		io_spim1_mosi 				: out std_logic;
		io_spim1_miso 				: in  std_logic;

		io_axi2_aw_valid 				: out std_logic;
		io_axi2_aw_ready 				: in  std_logic;
		io_axi2_aw_payload_addr 	: out std_logic_vector(27 downto 0);
		io_axi2_aw_payload_id 		: out std_logic_vector( 3 downto 0);
		io_axi2_aw_payload_region 	: out std_logic_vector( 3 downto 0);
		io_axi2_aw_payload_len 		: out std_logic_vector( 7 downto 0);
		io_axi2_aw_payload_size 	: out std_logic_vector( 2 downto 0);
		io_axi2_aw_payload_burst 	: out std_logic_vector( 1 downto 0);
		io_axi2_aw_payload_lock 	: out std_logic_vector( 0 downto 0);
		io_axi2_aw_payload_cache 	: out std_logic_vector( 3 downto 0);
		io_axi2_aw_payload_qos 		: out std_logic_vector( 3 downto 0);
		io_axi2_aw_payload_prot 	: out std_logic_vector( 2 downto 0);
		io_axi2_w_valid 				: out std_logic;
		io_axi2_w_ready 				: in  std_logic;
		io_axi2_w_payload_data 		: out std_logic_vector(31 downto 0);
		io_axi2_w_payload_strb 		: out std_logic_vector( 3 downto 0);
		io_axi2_w_payload_last 		: out std_logic;
		io_axi2_b_valid 				: in  std_logic;
		io_axi2_b_ready 				: out std_logic;
		io_axi2_b_payload_id 		: in  std_logic_vector( 3 downto 0);
		io_axi2_b_payload_resp 		: in  std_logic_vector( 1 downto 0);
		io_axi2_ar_valid 				: out std_logic;
		io_axi2_ar_ready 				: in  std_logic;
		io_axi2_ar_payload_addr 	: out std_logic_vector(27 downto 0);
		io_axi2_ar_payload_id 		: out std_logic_vector( 3 downto 0);
		io_axi2_ar_payload_region 	: out std_logic_vector( 3 downto 0);
		io_axi2_ar_payload_len 		: out std_logic_vector( 7 downto 0);
		io_axi2_ar_payload_size 	: out std_logic_vector( 2 downto 0);
		io_axi2_ar_payload_burst 	: out std_logic_vector( 1 downto 0);
		io_axi2_ar_payload_lock 	: out std_logic_vector( 0 downto 0);
		io_axi2_ar_payload_cache 	: out std_logic_vector( 3 downto 0);
		io_axi2_ar_payload_qos 		: out std_logic_vector( 3 downto 0);
		io_axi2_ar_payload_prot 	: out std_logic_vector( 2 downto 0);
		io_axi2_r_valid 				: in  std_logic;
		io_axi2_r_ready 				: out std_logic;
		io_axi2_r_payload_data 		: in  std_logic_vector(31 downto 0);
		io_axi2_r_payload_id 		: in  std_logic_vector( 3 downto 0);
		io_axi2_r_payload_resp 		: in  std_logic_vector( 1 downto 0);
		io_axi2_r_payload_last 		: in  std_logic;

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
		io_asyncReset           : in  std_logic
	);
	end component;

begin

	gpioa_z : for i in 0 to 31
	generate
		GPIOA_IO(i) <= GPIOA_WRITE(i) when GPIOA_WRITEEN(i) = '1' else 'Z';
	end generate;

	u0 : component VRV1_264
	port map
	(
		io_gpioA_read  			=> GPIOA_IO,
		io_gpioA_write  			=> GPIOA_WRITE,
		io_gpioA_writeEnable  	=> GPIOA_WRITEEN,

		io_uart1_rxd       		=> UART1_RXD_I,
		io_uart1_txd       		=> UART1_TXD_O,

		io_spim1_ss   				=> SPIM1_SS,
		io_spim1_sclk 				=> SPIM1_SCLK,
		io_spim1_mosi 				=> SPIM1_MOSI,
		io_spim1_miso 				=> SPIM1_MISO,

		io_axi2_aw_valid   			=> AXI_AW_VALID,
		io_axi2_aw_ready   			=> AXI_AW_READY,
		io_axi2_aw_payload_addr		=> AXI_AW_PAYLOAD_ADDR,
		io_axi2_aw_payload_id		=> AXI_AW_PAYLOAD_ID,
		io_axi2_aw_payload_region	=> open,
		io_axi2_aw_payload_len		=> AXI_AW_PAYLOAD_LEN,
		io_axi2_aw_payload_size		=> AXI_AW_PAYLOAD_SIZE,
		io_axi2_aw_payload_burst	=> AXI_AW_PAYLOAD_BURST,
		io_axi2_aw_payload_lock		=> AXI_AW_PAYLOAD_LOCK,
		io_axi2_aw_payload_cache	=> AXI_AW_PAYLOAD_CACHE,
		io_axi2_aw_payload_qos		=> AXI_AW_PAYLOAD_QOS,
		io_axi2_aw_payload_prot		=> AXI_AW_PAYLOAD_PROT,

		io_axi2_w_valid				=> AXI_W_VALID,
		io_axi2_w_ready				=> AXI_W_READY,
		io_axi2_w_payload_data		=> AXI_W_PAYLOAD_DATA,
		io_axi2_w_payload_strb		=> AXI_W_PAYLOAD_STRB,
		io_axi2_w_payload_last		=> AXI_W_PAYLOAD_LAST,

		io_axi2_b_valid				=> AXI_B_VALID,
		io_axi2_b_ready				=> AXI_B_READY,
		io_axi2_b_payload_id			=> AXI_B_PAYLOAD_ID,
		io_axi2_b_payload_resp		=> AXI_B_PAYLOAD_RESP,

		io_axi2_ar_valid				=> AXI_AR_VALID,
		io_axi2_ar_ready				=> AXI_AR_READY,
		io_axi2_ar_payload_addr		=> AXI_AR_PAYLOAD_ADDR,
		io_axi2_ar_payload_id		=> AXI_AR_PAYLOAD_ID,
		io_axi2_ar_payload_region	=> open,
		io_axi2_ar_payload_len		=> AXI_AR_PAYLOAD_LEN,
		io_axi2_ar_payload_size		=> AXI_AR_PAYLOAD_SIZE,
		io_axi2_ar_payload_burst	=> AXI_AR_PAYLOAD_BURST,
		io_axi2_ar_payload_lock		=> AXI_AR_PAYLOAD_LOCK,
		io_axi2_ar_payload_cache	=> AXI_AR_PAYLOAD_CACHE,
		io_axi2_ar_payload_qos		=> AXI_AR_PAYLOAD_QOS,
		io_axi2_ar_payload_prot		=> AXI_AR_PAYLOAD_PROT,

		io_axi2_r_valid				=> AXI_R_VALID,
		io_axi2_r_ready				=> AXI_R_READY,
		io_axi2_r_payload_data		=> AXI_R_PAYLOAD_DATA,
		io_axi2_r_payload_id			=> AXI_R_PAYLOAD_ID,
		io_axi2_r_payload_resp		=> AXI_R_PAYLOAD_RESP,
		io_axi2_r_payload_last		=> AXI_R_PAYLOAD_LAST,

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
		io_asyncReset           => RESET
	);

end architecture;
