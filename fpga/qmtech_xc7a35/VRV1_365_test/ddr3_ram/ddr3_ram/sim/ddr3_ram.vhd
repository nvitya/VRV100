--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2.2 (lin64) Build 3118627 Tue Feb  9 05:13:49 MST 2021
--Date        : Sun Oct 17 09:00:09 2021
--Host        : vityapc running 64-bit Ubuntu 20.04.3 LTS
--Command     : generate_target ddr3_ram.bd
--Design      : ddr3_ram
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ddr3_ram is
  port (
    AXI_CLK_OUT : out STD_LOGIC;
    AXI_araddr : in STD_LOGIC_VECTOR ( 27 downto 0 );
    AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    AXI_arlock : in STD_LOGIC;
    AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_arready : out STD_LOGIC;
    AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    AXI_arvalid : in STD_LOGIC;
    AXI_awaddr : in STD_LOGIC_VECTOR ( 27 downto 0 );
    AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    AXI_awlock : in STD_LOGIC;
    AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_awready : out STD_LOGIC;
    AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    AXI_awvalid : in STD_LOGIC;
    AXI_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_bready : in STD_LOGIC;
    AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_bvalid : out STD_LOGIC;
    AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_rlast : out STD_LOGIC;
    AXI_rready : in STD_LOGIC;
    AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_rvalid : out STD_LOGIC;
    AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_wlast : in STD_LOGIC;
    AXI_wready : out STD_LOGIC;
    AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_wvalid : in STD_LOGIC;
    CLK_100_IN : in STD_LOGIC;
    DDR3_addr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    DDR3_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR3_cas_n : out STD_LOGIC;
    DDR3_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_dm : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR3_dq : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    DDR3_dqs_n : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR3_dqs_p : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR3_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_ras_n : out STD_LOGIC;
    DDR3_reset_n : out STD_LOGIC;
    DDR3_we_n : out STD_LOGIC;
    RESET_N : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of ddr3_ram : entity is "ddr3_ram,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ddr3_ram,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of ddr3_ram : entity is "ddr3_ram.hwdef";
end ddr3_ram;

architecture STRUCTURE of ddr3_ram is
  component ddr3_ram_mig_7series_0_0 is
  port (
    device_temp_i : in STD_LOGIC_VECTOR ( 11 downto 0 );
    sys_rst : in STD_LOGIC;
    clk_ref_i : in STD_LOGIC;
    ddr3_dq : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    ddr3_dqs_p : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr3_dqs_n : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr3_addr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    ddr3_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ddr3_ras_n : out STD_LOGIC;
    ddr3_cas_n : out STD_LOGIC;
    ddr3_we_n : out STD_LOGIC;
    ddr3_reset_n : out STD_LOGIC;
    ddr3_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_dm : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr3_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    ui_clk_sync_rst : out STD_LOGIC;
    ui_clk : out STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 27 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 27 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    mmcm_locked : out STD_LOGIC;
    sys_clk_i : in STD_LOGIC;
    init_calib_complete : out STD_LOGIC;
    aresetn : in STD_LOGIC
  );
  end component ddr3_ram_mig_7series_0_0;
  signal S_AXI_0_1_ARADDR : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal S_AXI_0_1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_0_1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_0_1_ARID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_0_1_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S_AXI_0_1_ARLOCK : STD_LOGIC;
  signal S_AXI_0_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S_AXI_0_1_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_0_1_ARREADY : STD_LOGIC;
  signal S_AXI_0_1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S_AXI_0_1_ARVALID : STD_LOGIC;
  signal S_AXI_0_1_AWADDR : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal S_AXI_0_1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_0_1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_0_1_AWID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_0_1_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S_AXI_0_1_AWLOCK : STD_LOGIC;
  signal S_AXI_0_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S_AXI_0_1_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_0_1_AWREADY : STD_LOGIC;
  signal S_AXI_0_1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S_AXI_0_1_AWVALID : STD_LOGIC;
  signal S_AXI_0_1_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_0_1_BREADY : STD_LOGIC;
  signal S_AXI_0_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_0_1_BVALID : STD_LOGIC;
  signal S_AXI_0_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_0_1_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_0_1_RLAST : STD_LOGIC;
  signal S_AXI_0_1_RREADY : STD_LOGIC;
  signal S_AXI_0_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_0_1_RVALID : STD_LOGIC;
  signal S_AXI_0_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_0_1_WLAST : STD_LOGIC;
  signal S_AXI_0_1_WREADY : STD_LOGIC;
  signal S_AXI_0_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_0_1_WVALID : STD_LOGIC;
  signal aresetn_0_1 : STD_LOGIC;
  signal clk_ref_i_0_1 : STD_LOGIC;
  signal mig_7series_0_DDR3_ADDR : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal mig_7series_0_DDR3_BA : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mig_7series_0_DDR3_CAS_N : STD_LOGIC;
  signal mig_7series_0_DDR3_CKE : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mig_7series_0_DDR3_CK_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mig_7series_0_DDR3_CK_P : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mig_7series_0_DDR3_DM : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mig_7series_0_DDR3_DQ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mig_7series_0_DDR3_DQS_N : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mig_7series_0_DDR3_DQS_P : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mig_7series_0_DDR3_ODT : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mig_7series_0_DDR3_RAS_N : STD_LOGIC;
  signal mig_7series_0_DDR3_RESET_N : STD_LOGIC;
  signal mig_7series_0_DDR3_WE_N : STD_LOGIC;
  signal mig_7series_0_ui_clk : STD_LOGIC;
  signal NLW_ddr3_ram_init_calib_complete_UNCONNECTED : STD_LOGIC;
  signal NLW_ddr3_ram_mmcm_locked_UNCONNECTED : STD_LOGIC;
  signal NLW_ddr3_ram_ui_clk_sync_rst_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of AXI_CLK_OUT : signal is "xilinx.com:signal:clock:1.0 CLK.AXI_CLK_OUT CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of AXI_CLK_OUT : signal is "XIL_INTERFACENAME CLK.AXI_CLK_OUT, ASSOCIATED_BUSIF AXI, CLK_DOMAIN ddr3_ram_mig_7series_0_0_ui_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0";
  attribute X_INTERFACE_INFO of AXI_arlock : signal is "xilinx.com:interface:aximm:1.0 AXI ";
  attribute X_INTERFACE_INFO of AXI_arready : signal is "xilinx.com:interface:aximm:1.0 AXI ";
  attribute X_INTERFACE_INFO of AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 AXI ";
  attribute X_INTERFACE_INFO of AXI_awlock : signal is "xilinx.com:interface:aximm:1.0 AXI ";
  attribute X_INTERFACE_INFO of AXI_awready : signal is "xilinx.com:interface:aximm:1.0 AXI ";
  attribute X_INTERFACE_INFO of AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 AXI ";
  attribute X_INTERFACE_INFO of AXI_bready : signal is "xilinx.com:interface:aximm:1.0 AXI ";
  attribute X_INTERFACE_INFO of AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 AXI ";
  attribute X_INTERFACE_INFO of AXI_rlast : signal is "xilinx.com:interface:aximm:1.0 AXI ";
  attribute X_INTERFACE_INFO of AXI_rready : signal is "xilinx.com:interface:aximm:1.0 AXI ";
  attribute X_INTERFACE_INFO of AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 AXI ";
  attribute X_INTERFACE_INFO of AXI_wlast : signal is "xilinx.com:interface:aximm:1.0 AXI ";
  attribute X_INTERFACE_INFO of AXI_wready : signal is "xilinx.com:interface:aximm:1.0 AXI ";
  attribute X_INTERFACE_INFO of AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 AXI ";
  attribute X_INTERFACE_INFO of CLK_100_IN : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_100_IN CLK";
  attribute X_INTERFACE_PARAMETER of CLK_100_IN : signal is "XIL_INTERFACENAME CLK.CLK_100_IN, CLK_DOMAIN ddr3_ram_clk_ref_i_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of DDR3_cas_n : signal is "xilinx.com:interface:ddrx:1.0 DDR3 ";
  attribute X_INTERFACE_INFO of DDR3_ras_n : signal is "xilinx.com:interface:ddrx:1.0 DDR3 ";
  attribute X_INTERFACE_INFO of DDR3_reset_n : signal is "xilinx.com:interface:ddrx:1.0 DDR3 ";
  attribute X_INTERFACE_INFO of DDR3_we_n : signal is "xilinx.com:interface:ddrx:1.0 DDR3 ";
  attribute X_INTERFACE_INFO of RESET_N : signal is "xilinx.com:signal:reset:1.0 RST.RESET_N RST";
  attribute X_INTERFACE_PARAMETER of RESET_N : signal is "XIL_INTERFACENAME RST.RESET_N, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 AXI ";
  attribute X_INTERFACE_PARAMETER of AXI_araddr : signal is "XIL_INTERFACENAME AXI, ADDR_WIDTH 28, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN ddr3_ram_mig_7series_0_0_ui_clk, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 4, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 8, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 8, NUM_WRITE_THREADS 1, PHASE 0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of AXI_arburst : signal is "xilinx.com:interface:aximm:1.0 AXI ";
  attribute X_INTERFACE_INFO of AXI_arcache : signal is "xilinx.com:interface:aximm:1.0 AXI ";
  attribute X_INTERFACE_INFO of AXI_arid : signal is "xilinx.com:interface:aximm:1.0 AXI ";
  attribute X_INTERFACE_INFO of AXI_arlen : signal is "xilinx.com:interface:aximm:1.0 AXI ";
  attribute X_INTERFACE_INFO of AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 AXI ";
  attribute X_INTERFACE_INFO of AXI_arqos : signal is "xilinx.com:interface:aximm:1.0 AXI ";
  attribute X_INTERFACE_INFO of AXI_arsize : signal is "xilinx.com:interface:aximm:1.0 AXI ";
  attribute X_INTERFACE_INFO of AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 AXI ";
  attribute X_INTERFACE_INFO of AXI_awburst : signal is "xilinx.com:interface:aximm:1.0 AXI ";
  attribute X_INTERFACE_INFO of AXI_awcache : signal is "xilinx.com:interface:aximm:1.0 AXI ";
  attribute X_INTERFACE_INFO of AXI_awid : signal is "xilinx.com:interface:aximm:1.0 AXI ";
  attribute X_INTERFACE_INFO of AXI_awlen : signal is "xilinx.com:interface:aximm:1.0 AXI ";
  attribute X_INTERFACE_INFO of AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 AXI ";
  attribute X_INTERFACE_INFO of AXI_awqos : signal is "xilinx.com:interface:aximm:1.0 AXI ";
  attribute X_INTERFACE_INFO of AXI_awsize : signal is "xilinx.com:interface:aximm:1.0 AXI ";
  attribute X_INTERFACE_INFO of AXI_bid : signal is "xilinx.com:interface:aximm:1.0 AXI ";
  attribute X_INTERFACE_INFO of AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 AXI ";
  attribute X_INTERFACE_INFO of AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 AXI ";
  attribute X_INTERFACE_INFO of AXI_rid : signal is "xilinx.com:interface:aximm:1.0 AXI ";
  attribute X_INTERFACE_INFO of AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 AXI ";
  attribute X_INTERFACE_INFO of AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 AXI ";
  attribute X_INTERFACE_INFO of AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 AXI ";
  attribute X_INTERFACE_INFO of DDR3_addr : signal is "xilinx.com:interface:ddrx:1.0 DDR3 ";
  attribute X_INTERFACE_PARAMETER of DDR3_addr : signal is "XIL_INTERFACENAME DDR3, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250";
  attribute X_INTERFACE_INFO of DDR3_ba : signal is "xilinx.com:interface:ddrx:1.0 DDR3 ";
  attribute X_INTERFACE_INFO of DDR3_ck_n : signal is "xilinx.com:interface:ddrx:1.0 DDR3 ";
  attribute X_INTERFACE_INFO of DDR3_ck_p : signal is "xilinx.com:interface:ddrx:1.0 DDR3 ";
  attribute X_INTERFACE_INFO of DDR3_cke : signal is "xilinx.com:interface:ddrx:1.0 DDR3 ";
  attribute X_INTERFACE_INFO of DDR3_dm : signal is "xilinx.com:interface:ddrx:1.0 DDR3 ";
  attribute X_INTERFACE_INFO of DDR3_dq : signal is "xilinx.com:interface:ddrx:1.0 DDR3 ";
  attribute X_INTERFACE_INFO of DDR3_dqs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR3 ";
  attribute X_INTERFACE_INFO of DDR3_dqs_p : signal is "xilinx.com:interface:ddrx:1.0 DDR3 ";
  attribute X_INTERFACE_INFO of DDR3_odt : signal is "xilinx.com:interface:ddrx:1.0 DDR3 ";
begin
  AXI_CLK_OUT <= mig_7series_0_ui_clk;
  AXI_arready <= S_AXI_0_1_ARREADY;
  AXI_awready <= S_AXI_0_1_AWREADY;
  AXI_bid(3 downto 0) <= S_AXI_0_1_BID(3 downto 0);
  AXI_bresp(1 downto 0) <= S_AXI_0_1_BRESP(1 downto 0);
  AXI_bvalid <= S_AXI_0_1_BVALID;
  AXI_rdata(31 downto 0) <= S_AXI_0_1_RDATA(31 downto 0);
  AXI_rid(3 downto 0) <= S_AXI_0_1_RID(3 downto 0);
  AXI_rlast <= S_AXI_0_1_RLAST;
  AXI_rresp(1 downto 0) <= S_AXI_0_1_RRESP(1 downto 0);
  AXI_rvalid <= S_AXI_0_1_RVALID;
  AXI_wready <= S_AXI_0_1_WREADY;
  DDR3_addr(13 downto 0) <= mig_7series_0_DDR3_ADDR(13 downto 0);
  DDR3_ba(2 downto 0) <= mig_7series_0_DDR3_BA(2 downto 0);
  DDR3_cas_n <= mig_7series_0_DDR3_CAS_N;
  DDR3_ck_n(0) <= mig_7series_0_DDR3_CK_N(0);
  DDR3_ck_p(0) <= mig_7series_0_DDR3_CK_P(0);
  DDR3_cke(0) <= mig_7series_0_DDR3_CKE(0);
  DDR3_dm(1 downto 0) <= mig_7series_0_DDR3_DM(1 downto 0);
  DDR3_odt(0) <= mig_7series_0_DDR3_ODT(0);
  DDR3_ras_n <= mig_7series_0_DDR3_RAS_N;
  DDR3_reset_n <= mig_7series_0_DDR3_RESET_N;
  DDR3_we_n <= mig_7series_0_DDR3_WE_N;
  S_AXI_0_1_ARADDR(27 downto 0) <= AXI_araddr(27 downto 0);
  S_AXI_0_1_ARBURST(1 downto 0) <= AXI_arburst(1 downto 0);
  S_AXI_0_1_ARCACHE(3 downto 0) <= AXI_arcache(3 downto 0);
  S_AXI_0_1_ARID(3 downto 0) <= AXI_arid(3 downto 0);
  S_AXI_0_1_ARLEN(7 downto 0) <= AXI_arlen(7 downto 0);
  S_AXI_0_1_ARLOCK <= AXI_arlock;
  S_AXI_0_1_ARPROT(2 downto 0) <= AXI_arprot(2 downto 0);
  S_AXI_0_1_ARQOS(3 downto 0) <= AXI_arqos(3 downto 0);
  S_AXI_0_1_ARSIZE(2 downto 0) <= AXI_arsize(2 downto 0);
  S_AXI_0_1_ARVALID <= AXI_arvalid;
  S_AXI_0_1_AWADDR(27 downto 0) <= AXI_awaddr(27 downto 0);
  S_AXI_0_1_AWBURST(1 downto 0) <= AXI_awburst(1 downto 0);
  S_AXI_0_1_AWCACHE(3 downto 0) <= AXI_awcache(3 downto 0);
  S_AXI_0_1_AWID(3 downto 0) <= AXI_awid(3 downto 0);
  S_AXI_0_1_AWLEN(7 downto 0) <= AXI_awlen(7 downto 0);
  S_AXI_0_1_AWLOCK <= AXI_awlock;
  S_AXI_0_1_AWPROT(2 downto 0) <= AXI_awprot(2 downto 0);
  S_AXI_0_1_AWQOS(3 downto 0) <= AXI_awqos(3 downto 0);
  S_AXI_0_1_AWSIZE(2 downto 0) <= AXI_awsize(2 downto 0);
  S_AXI_0_1_AWVALID <= AXI_awvalid;
  S_AXI_0_1_BREADY <= AXI_bready;
  S_AXI_0_1_RREADY <= AXI_rready;
  S_AXI_0_1_WDATA(31 downto 0) <= AXI_wdata(31 downto 0);
  S_AXI_0_1_WLAST <= AXI_wlast;
  S_AXI_0_1_WSTRB(3 downto 0) <= AXI_wstrb(3 downto 0);
  S_AXI_0_1_WVALID <= AXI_wvalid;
  aresetn_0_1 <= RESET_N;
  clk_ref_i_0_1 <= CLK_100_IN;
ddr3_ram: component ddr3_ram_mig_7series_0_0
     port map (
      aresetn => aresetn_0_1,
      clk_ref_i => clk_ref_i_0_1,
      ddr3_addr(13 downto 0) => mig_7series_0_DDR3_ADDR(13 downto 0),
      ddr3_ba(2 downto 0) => mig_7series_0_DDR3_BA(2 downto 0),
      ddr3_cas_n => mig_7series_0_DDR3_CAS_N,
      ddr3_ck_n(0) => mig_7series_0_DDR3_CK_N(0),
      ddr3_ck_p(0) => mig_7series_0_DDR3_CK_P(0),
      ddr3_cke(0) => mig_7series_0_DDR3_CKE(0),
      ddr3_dm(1 downto 0) => mig_7series_0_DDR3_DM(1 downto 0),
      ddr3_dq(15 downto 0) => DDR3_dq(15 downto 0),
      ddr3_dqs_n(1 downto 0) => DDR3_dqs_n(1 downto 0),
      ddr3_dqs_p(1 downto 0) => DDR3_dqs_p(1 downto 0),
      ddr3_odt(0) => mig_7series_0_DDR3_ODT(0),
      ddr3_ras_n => mig_7series_0_DDR3_RAS_N,
      ddr3_reset_n => mig_7series_0_DDR3_RESET_N,
      ddr3_we_n => mig_7series_0_DDR3_WE_N,
      device_temp_i(11 downto 0) => B"000000000000",
      init_calib_complete => NLW_ddr3_ram_init_calib_complete_UNCONNECTED,
      mmcm_locked => NLW_ddr3_ram_mmcm_locked_UNCONNECTED,
      s_axi_araddr(27 downto 0) => S_AXI_0_1_ARADDR(27 downto 0),
      s_axi_arburst(1 downto 0) => S_AXI_0_1_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => S_AXI_0_1_ARCACHE(3 downto 0),
      s_axi_arid(3 downto 0) => S_AXI_0_1_ARID(3 downto 0),
      s_axi_arlen(7 downto 0) => S_AXI_0_1_ARLEN(7 downto 0),
      s_axi_arlock => S_AXI_0_1_ARLOCK,
      s_axi_arprot(2 downto 0) => S_AXI_0_1_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => S_AXI_0_1_ARQOS(3 downto 0),
      s_axi_arready => S_AXI_0_1_ARREADY,
      s_axi_arsize(2 downto 0) => S_AXI_0_1_ARSIZE(2 downto 0),
      s_axi_arvalid => S_AXI_0_1_ARVALID,
      s_axi_awaddr(27 downto 0) => S_AXI_0_1_AWADDR(27 downto 0),
      s_axi_awburst(1 downto 0) => S_AXI_0_1_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => S_AXI_0_1_AWCACHE(3 downto 0),
      s_axi_awid(3 downto 0) => S_AXI_0_1_AWID(3 downto 0),
      s_axi_awlen(7 downto 0) => S_AXI_0_1_AWLEN(7 downto 0),
      s_axi_awlock => S_AXI_0_1_AWLOCK,
      s_axi_awprot(2 downto 0) => S_AXI_0_1_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => S_AXI_0_1_AWQOS(3 downto 0),
      s_axi_awready => S_AXI_0_1_AWREADY,
      s_axi_awsize(2 downto 0) => S_AXI_0_1_AWSIZE(2 downto 0),
      s_axi_awvalid => S_AXI_0_1_AWVALID,
      s_axi_bid(3 downto 0) => S_AXI_0_1_BID(3 downto 0),
      s_axi_bready => S_AXI_0_1_BREADY,
      s_axi_bresp(1 downto 0) => S_AXI_0_1_BRESP(1 downto 0),
      s_axi_bvalid => S_AXI_0_1_BVALID,
      s_axi_rdata(31 downto 0) => S_AXI_0_1_RDATA(31 downto 0),
      s_axi_rid(3 downto 0) => S_AXI_0_1_RID(3 downto 0),
      s_axi_rlast => S_AXI_0_1_RLAST,
      s_axi_rready => S_AXI_0_1_RREADY,
      s_axi_rresp(1 downto 0) => S_AXI_0_1_RRESP(1 downto 0),
      s_axi_rvalid => S_AXI_0_1_RVALID,
      s_axi_wdata(31 downto 0) => S_AXI_0_1_WDATA(31 downto 0),
      s_axi_wlast => S_AXI_0_1_WLAST,
      s_axi_wready => S_AXI_0_1_WREADY,
      s_axi_wstrb(3 downto 0) => S_AXI_0_1_WSTRB(3 downto 0),
      s_axi_wvalid => S_AXI_0_1_WVALID,
      sys_clk_i => clk_ref_i_0_1,
      sys_rst => aresetn_0_1,
      ui_clk => mig_7series_0_ui_clk,
      ui_clk_sync_rst => NLW_ddr3_ram_ui_clk_sync_rst_UNCONNECTED
    );
end STRUCTURE;
