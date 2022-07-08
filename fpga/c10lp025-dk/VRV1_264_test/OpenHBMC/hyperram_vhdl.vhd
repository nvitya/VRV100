
-- set_location_assignment PIN_T12 -to HBUS_DQ[0]
-- set_location_assignment PIN_T13 -to HBUS_DQ[1]
-- set_location_assignment PIN_T11 -to HBUS_DQ[2]
-- set_location_assignment PIN_R10 -to HBUS_DQ[3]
-- set_location_assignment PIN_T10 -to HBUS_DQ[4]
-- set_location_assignment PIN_R11 -to HBUS_DQ[5]
-- set_location_assignment PIN_R12 -to HBUS_DQ[6]
-- set_location_assignment PIN_R13 -to HBUS_DQ[7]
-- set_location_assignment PIN_P9  -to HBUS_CS2N
-- set_location_assignment PIN_N9  -to HBUS_RSTN
-- set_location_assignment PIN_T14 -to HBUS_RWDS
-- set_location_assignment PIN_P14 -to HBUS_CLK0P
-- set_location_assignment PIN_R14 -to HBUS_CLK0N

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity hyperram_vhdl is
port
(
	HB_CK_P        : out std_logic;
	HB_CK_N        : out std_logic;
	HB_RESET_N     : out std_logic;
	HB_CS_N        : out std_logic;
	HB_RWDS        : inout std_logic;
	HB_DQ          : inout std_logic_vector(7 downto 0);

	-- clock inputs
	CLK_HBMC_0		: in std_logic;
	CLK_HBMC_90    : in std_logic;
	CLK_ISERDES    : in std_logic;
	CLK_IDELAY_REF	: in std_logic;


	AXI_AW_VALID 				: in   std_logic;
	AXI_AW_READY 				: out  std_logic;
	AXI_AW_PAYLOAD_ADDR 	   : in   std_logic_vector(27 downto 0);
	AXI_AW_PAYLOAD_ID 		: in   std_logic_vector( 3 downto 0);
	AXI_AW_PAYLOAD_LEN 		: in   std_logic_vector( 7 downto 0);
	AXI_AW_PAYLOAD_SIZE 	   : in   std_logic_vector( 2 downto 0);
	AXI_AW_PAYLOAD_BURST 	: in   std_logic_vector( 1 downto 0);
	AXI_AW_PAYLOAD_LOCK 	   : in   std_logic_vector( 0 downto 0);
	AXI_AW_PAYLOAD_CACHE 	: in   std_logic_vector( 3 downto 0);
	AXI_AW_PAYLOAD_QOS 		: in   std_logic_vector( 3 downto 0);
	AXI_AW_PAYLOAD_PROT 		: in   std_logic_vector( 2 downto 0);
	AXI_W_VALID 				: in   std_logic;
	AXI_W_READY 				: out  std_logic;
	AXI_W_PAYLOAD_DATA 		: in   std_logic_vector(31 downto 0);
	AXI_W_PAYLOAD_STRB 		: in   std_logic_vector( 3 downto 0);
	AXI_W_PAYLOAD_LAST 		: in   std_logic;
	AXI_B_VALID 				: out  std_logic;
	AXI_B_READY 				: in   std_logic;
	AXI_B_PAYLOAD_ID 			: out  std_logic_vector( 3 downto 0);
	AXI_B_PAYLOAD_RESP 		: out  std_logic_vector( 1 downto 0);
	AXI_AR_VALID 				: in   std_logic;
	AXI_AR_READY 				: out  std_logic;
	AXI_AR_PAYLOAD_ADDR 		: in   std_logic_vector(27 downto 0);
	AXI_AR_PAYLOAD_ID 		: in   std_logic_vector( 3 downto 0);
	AXI_AR_PAYLOAD_LEN 		: in   std_logic_vector( 7 downto 0);
	AXI_AR_PAYLOAD_SIZE 		: in   std_logic_vector( 2 downto 0);
	AXI_AR_PAYLOAD_BURST 	: in   std_logic_vector( 1 downto 0);
	AXI_AR_PAYLOAD_LOCK 		: in   std_logic_vector( 0 downto 0);
	AXI_AR_PAYLOAD_CACHE 	: in   std_logic_vector( 3 downto 0);
	AXI_AR_PAYLOAD_QOS 		: in   std_logic_vector( 3 downto 0);
	AXI_AR_PAYLOAD_PROT 		: in   std_logic_vector( 2 downto 0);
	AXI_R_VALID 				: out  std_logic;
	AXI_R_READY 				: in   std_logic;
	AXI_R_PAYLOAD_DATA 		: out  std_logic_vector(31 downto 0);
	AXI_R_PAYLOAD_ID 			: out  std_logic_vector( 3 downto 0);
	AXI_R_PAYLOAD_RESP 		: out  std_logic_vector( 1 downto 0);
	AXI_R_PAYLOAD_LAST 		: out  std_logic;

	RESET	      				: in std_ulogic := '0';
	AXI_CLK	 					: in std_logic
);
end entity;

architecture behavioral of hyperram_vhdl
is
	component hbmc_axi_top is
	generic
	(
		C_S_AXI_ID_WIDTH     : integer := 1;
		C_S_AXI_DATA_WIDTH   : integer := 32;
		C_S_AXI_ADDR_WIDTH   : integer := 32;
		C_S_AXI_AWUSER_WIDTH : integer := 0;
		C_S_AXI_ARUSER_WIDTH : integer := 0;
		C_S_AXI_WUSER_WIDTH  : integer := 0;
		C_S_AXI_RUSER_WIDTH  : integer := 0;
		C_S_AXI_BUSER_WIDTH  : integer := 0;

		C_HBMC_CLOCK_HZ      : integer := 166000000;
		C_HBMC_FPGA_DRIVE_STRENGTH : integer := 8;

		C_HBMC_FPGA_SLEW_RATE      : string := "SLOW";
		C_HBMC_MEM_DRIVE_STRENGTH  : integer := 46;
		C_HBMC_CS_MAX_LOW_TIME_US  : integer := 4;
		C_HBMC_FIXED_LATENCY       : integer := 0;
		C_ISERDES_CLOCKING_MODE    : integer := 0;

		C_IDELAYCTRL_INTEGRATED    : integer := 0;
		C_IODELAY_GROUP_ID         : string := "HBMC";
		C_IODELAY_REFCLK_MHZ       : real := 200.0;

		C_RWDS_USE_IDELAY 			: integer := 0;
		C_DQ7_USE_IDELAY  			: integer := 0;
		C_DQ6_USE_IDELAY  			: integer := 0;
		C_DQ5_USE_IDELAY  			: integer := 0;
		C_DQ4_USE_IDELAY  			: integer := 0;
		C_DQ3_USE_IDELAY  			: integer := 0;
		C_DQ2_USE_IDELAY  			: integer := 0;
		C_DQ1_USE_IDELAY  			: integer := 0;
		C_DQ0_USE_IDELAY  			: integer := 0;

		C_RWDS_IDELAY_TAPS_VALUE 	: integer := 0;
		C_DQ7_IDELAY_TAPS_VALUE  	: integer := 0;
		C_DQ6_IDELAY_TAPS_VALUE  	: integer := 0;
		C_DQ5_IDELAY_TAPS_VALUE  	: integer := 0;
		C_DQ4_IDELAY_TAPS_VALUE  	: integer := 0;
		C_DQ3_IDELAY_TAPS_VALUE  	: integer := 0;
		C_DQ2_IDELAY_TAPS_VALUE  	: integer := 0;
		C_DQ1_IDELAY_TAPS_VALUE  	: integer := 0;
		C_DQ0_IDELAY_TAPS_VALUE  	: integer := 0
	);
	port
	(
      -- HyperBus Interface Port
      hb_ck_p        : out std_logic;
      hb_ck_n        : out std_logic;
      hb_reset_n     : out std_logic;
      hb_cs_n        : out std_logic;
      hb_rwds        : inout std_logic;
      hb_dq          : inout std_logic_vector(7 downto 0);

		-- clock inputs
		clk_hbmc_0		: in std_logic;
		clk_hbmc_90    : in std_logic;
		clk_iserdes    : in std_logic;
		clk_idelay_ref	: in std_logic;

		s_axi_aclk     : in std_logic;
		s_axi_aresetn  : in std_logic;

      -- AXI4 Slave Interface Write Address Ports
      s_axi_awid      : in  std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
      s_axi_awaddr    : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
      s_axi_awlen     : in  std_logic_vector(7 downto 0);
      s_axi_awsize    : in  std_logic_vector(2 downto 0);
      s_axi_awburst   : in  std_logic_vector(1 downto 0);
      s_axi_awuser    : in  std_logic_vector(C_S_AXI_AWUSER_WIDTH-1 downto 0); -- unused
      s_axi_awlock    : in  std_logic;  -- unused
      s_axi_awregion  : in  std_logic_vector(3 downto 0); -- unused
      s_axi_awcache   : in  std_logic_vector(3 downto 0); -- unused
      s_axi_awqos     : in  std_logic_vector(3 downto 0); -- unused
      s_axi_awprot    : in  std_logic_vector(2 downto 0); -- unused
      s_axi_awvalid   : in  std_logic;
      s_axi_awready   : out std_logic;

      -- AXI4 Slave Interface Write Data Ports
      s_axi_wdata  : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
      s_axi_wstrb  : in  std_logic_vector(C_S_AXI_DATA_WIDTH/8-1 downto 0);
      s_axi_wuser  : in  std_logic_vector(C_S_AXI_WUSER_WIDTH-1 downto 0); -- unused
      s_axi_wlast  : in  std_logic;
      s_axi_wvalid : in  std_logic;
      s_axi_wready : out std_logic;

      -- AXI4 Slave Interface Write Response Ports
      s_axi_bid    : out std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
      s_axi_buser  : out std_logic_vector(C_S_AXI_BUSER_WIDTH-1 downto 0); -- unused
      s_axi_bresp  : out std_logic_vector(1 downto 0);
      s_axi_bvalid : out std_logic;
      s_axi_bready : in  std_logic;

      -- AXI4 Interface Read Address Ports
      s_axi_arid     : in  std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
      s_axi_araddr   : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
      s_axi_arlen    : in  std_logic_vector(7 downto 0);
      s_axi_arsize   : in  std_logic_vector(2 downto 0);
      s_axi_arburst  : in  std_logic_vector(1 downto 0);
      s_axi_aruser   : in  std_logic_vector(C_S_AXI_ARUSER_WIDTH-1 downto 0);  -- unused
      s_axi_arlock   : in  std_logic;  -- unused
      s_axi_arregion : in  std_logic_vector(3 downto 0);  -- unused
      s_axi_arcache  : in  std_logic_vector(3 downto 0);  -- unused
      s_axi_arqos    : in  std_logic_vector(3 downto 0);  -- unused
      s_axi_arprot   : in  std_logic_vector(2 downto 0);  -- unused
      s_axi_arvalid  : in  std_logic;
      s_axi_arready  : out std_logic;

      -- AXI4 Slave Interface Read Data Ports
      s_axi_rid    : out std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
      s_axi_rdata  : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
      s_axi_ruser  : out std_logic_vector(C_S_AXI_RUSER_WIDTH-1 downto 0); -- unused
      s_axi_rresp  : out std_logic_vector(1 downto 0);
      s_axi_rlast  : out std_logic;
      s_axi_rvalid : out std_logic;
      s_axi_rready : in  std_logic
	);
	end component;

begin

	u0 : component hbmc_axi_top
	generic map
	(
		C_S_AXI_ID_WIDTH     		=> 4,
		C_S_AXI_DATA_WIDTH   		=> 32,
		C_S_AXI_ADDR_WIDTH   		=> 28,

		C_HBMC_CLOCK_HZ      		=> 100000000,

		C_HBMC_CS_MAX_LOW_TIME_US  => 4,
		C_HBMC_FIXED_LATENCY       => 0
	)
	port map
	(
      -- HyperBus Interface Port
      hb_ck_p         => HB_CK_P,
      hb_ck_n         => HB_CK_N,
      hb_reset_n      => HB_RESET_N,
      hb_cs_n         => HB_CS_N,
      hb_rwds         => HB_RWDS,
      hb_dq           => HB_DQ,

		-- clock inputs
		clk_hbmc_0		 => CLK_HBMC_0,
		clk_hbmc_90     => CLK_HBMC_90,
		clk_iserdes     => CLK_ISERDES,
		clk_idelay_ref	 => CLK_IDELAY_REF,

		s_axi_aclk      => AXI_CLK,
		s_axi_aresetn   => not RESET,

      -- AXI4 Slave Interface Write Address Ports
      s_axi_awid      => AXI_AW_PAYLOAD_ID,
      s_axi_awaddr    => AXI_AW_PAYLOAD_ADDR,
      s_axi_awlen     => AXI_AW_PAYLOAD_LEN,
      s_axi_awsize    => AXI_AW_PAYLOAD_SIZE,
      s_axi_awburst   => AXI_AW_PAYLOAD_BURST,
      s_axi_awuser    => (others => '0'),
      s_axi_awlock    => AXI_AW_PAYLOAD_LOCK(0),
      s_axi_awregion  => (others => '0'),
      s_axi_awcache   => AXI_AW_PAYLOAD_CACHE,
      s_axi_awqos     => AXI_AW_PAYLOAD_QOS,
      s_axi_awprot    => AXI_AW_PAYLOAD_PROT,
      s_axi_awvalid   => AXI_AW_VALID,
      s_axi_awready   => AXI_AW_READY,

      -- AXI4 Slave Interface Write Data Ports
      s_axi_wdata  	=> AXI_W_PAYLOAD_DATA,
      s_axi_wstrb  	=> AXI_W_PAYLOAD_STRB,
      s_axi_wuser  	=> (others => '0'),
      s_axi_wlast  	=> AXI_W_PAYLOAD_LAST,
      s_axi_wvalid 	=> AXI_W_VALID,
      s_axi_wready 	=> AXI_W_READY,

      -- AXI4 Slave Interface Write Response Ports
      s_axi_bid    	=> AXI_B_PAYLOAD_ID,
      s_axi_buser  	=> open,
      s_axi_bresp  	=> AXI_B_PAYLOAD_RESP,
      s_axi_bvalid 	=> AXI_B_VALID,
      s_axi_bready 	=> AXI_B_READY,

      -- AXI4 Interface Read Address Ports
      s_axi_arid     => AXI_AR_PAYLOAD_ID,
      s_axi_araddr   => AXI_AR_PAYLOAD_ADDR,
      s_axi_arlen    => AXI_AR_PAYLOAD_LEN,
      s_axi_arsize   => AXI_AR_PAYLOAD_SIZE,
      s_axi_arburst  => AXI_AR_PAYLOAD_BURST,
      s_axi_aruser   => (others => '0'),
      s_axi_arlock   => AXI_AR_PAYLOAD_LOCK(0),
      s_axi_arregion => (others => '0'),
      s_axi_arcache  => AXI_AR_PAYLOAD_CACHE,
      s_axi_arqos    => AXI_AR_PAYLOAD_QOS,
      s_axi_arprot   => AXI_AR_PAYLOAD_PROT,
      s_axi_arvalid  => AXI_AR_VALID,
      s_axi_arready  => AXI_AR_READY,

      -- AXI4 Slave Interface Read Data Ports
      s_axi_rid    	=> AXI_R_PAYLOAD_ID,
      s_axi_rdata  	=> AXI_R_PAYLOAD_DATA,
      s_axi_ruser  	=> open,
      s_axi_rresp  	=> AXI_R_PAYLOAD_RESP,
      s_axi_rlast  	=> AXI_R_PAYLOAD_LAST,
      s_axi_rvalid 	=> AXI_R_VALID,
      s_axi_rready 	=> AXI_R_READY
	);

end architecture;
