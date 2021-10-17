--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2.2 (lin64) Build 3118627 Tue Feb  9 05:13:49 MST 2021
--Date        : Sun Oct 17 09:00:09 2021
--Host        : vityapc running 64-bit Ubuntu 20.04.3 LTS
--Command     : generate_target ddr3_ram_wrapper.bd
--Design      : ddr3_ram_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ddr3_ram_wrapper is
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
end ddr3_ram_wrapper;

architecture STRUCTURE of ddr3_ram_wrapper is
  component ddr3_ram is
  port (
    AXI_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_awaddr : in STD_LOGIC_VECTOR ( 27 downto 0 );
    AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_awlock : in STD_LOGIC;
    AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_awvalid : in STD_LOGIC;
    AXI_awready : out STD_LOGIC;
    AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_wlast : in STD_LOGIC;
    AXI_wvalid : in STD_LOGIC;
    AXI_wready : out STD_LOGIC;
    AXI_bready : in STD_LOGIC;
    AXI_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_bvalid : out STD_LOGIC;
    AXI_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_araddr : in STD_LOGIC_VECTOR ( 27 downto 0 );
    AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_arlock : in STD_LOGIC;
    AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_arvalid : in STD_LOGIC;
    AXI_arready : out STD_LOGIC;
    AXI_rready : in STD_LOGIC;
    AXI_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_rlast : out STD_LOGIC;
    AXI_rvalid : out STD_LOGIC;
    DDR3_dq : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    DDR3_dqs_p : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR3_dqs_n : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR3_addr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    DDR3_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR3_ras_n : out STD_LOGIC;
    DDR3_cas_n : out STD_LOGIC;
    DDR3_we_n : out STD_LOGIC;
    DDR3_reset_n : out STD_LOGIC;
    DDR3_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_dm : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR3_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXI_CLK_OUT : out STD_LOGIC;
    RESET_N : in STD_LOGIC;
    CLK_100_IN : in STD_LOGIC
  );
  end component ddr3_ram;
begin
ddr3_ram_i: component ddr3_ram
     port map (
      AXI_CLK_OUT => AXI_CLK_OUT,
      AXI_araddr(27 downto 0) => AXI_araddr(27 downto 0),
      AXI_arburst(1 downto 0) => AXI_arburst(1 downto 0),
      AXI_arcache(3 downto 0) => AXI_arcache(3 downto 0),
      AXI_arid(3 downto 0) => AXI_arid(3 downto 0),
      AXI_arlen(7 downto 0) => AXI_arlen(7 downto 0),
      AXI_arlock => AXI_arlock,
      AXI_arprot(2 downto 0) => AXI_arprot(2 downto 0),
      AXI_arqos(3 downto 0) => AXI_arqos(3 downto 0),
      AXI_arready => AXI_arready,
      AXI_arsize(2 downto 0) => AXI_arsize(2 downto 0),
      AXI_arvalid => AXI_arvalid,
      AXI_awaddr(27 downto 0) => AXI_awaddr(27 downto 0),
      AXI_awburst(1 downto 0) => AXI_awburst(1 downto 0),
      AXI_awcache(3 downto 0) => AXI_awcache(3 downto 0),
      AXI_awid(3 downto 0) => AXI_awid(3 downto 0),
      AXI_awlen(7 downto 0) => AXI_awlen(7 downto 0),
      AXI_awlock => AXI_awlock,
      AXI_awprot(2 downto 0) => AXI_awprot(2 downto 0),
      AXI_awqos(3 downto 0) => AXI_awqos(3 downto 0),
      AXI_awready => AXI_awready,
      AXI_awsize(2 downto 0) => AXI_awsize(2 downto 0),
      AXI_awvalid => AXI_awvalid,
      AXI_bid(3 downto 0) => AXI_bid(3 downto 0),
      AXI_bready => AXI_bready,
      AXI_bresp(1 downto 0) => AXI_bresp(1 downto 0),
      AXI_bvalid => AXI_bvalid,
      AXI_rdata(31 downto 0) => AXI_rdata(31 downto 0),
      AXI_rid(3 downto 0) => AXI_rid(3 downto 0),
      AXI_rlast => AXI_rlast,
      AXI_rready => AXI_rready,
      AXI_rresp(1 downto 0) => AXI_rresp(1 downto 0),
      AXI_rvalid => AXI_rvalid,
      AXI_wdata(31 downto 0) => AXI_wdata(31 downto 0),
      AXI_wlast => AXI_wlast,
      AXI_wready => AXI_wready,
      AXI_wstrb(3 downto 0) => AXI_wstrb(3 downto 0),
      AXI_wvalid => AXI_wvalid,
      CLK_100_IN => CLK_100_IN,
      DDR3_addr(13 downto 0) => DDR3_addr(13 downto 0),
      DDR3_ba(2 downto 0) => DDR3_ba(2 downto 0),
      DDR3_cas_n => DDR3_cas_n,
      DDR3_ck_n(0) => DDR3_ck_n(0),
      DDR3_ck_p(0) => DDR3_ck_p(0),
      DDR3_cke(0) => DDR3_cke(0),
      DDR3_dm(1 downto 0) => DDR3_dm(1 downto 0),
      DDR3_dq(15 downto 0) => DDR3_dq(15 downto 0),
      DDR3_dqs_n(1 downto 0) => DDR3_dqs_n(1 downto 0),
      DDR3_dqs_p(1 downto 0) => DDR3_dqs_p(1 downto 0),
      DDR3_odt(0) => DDR3_odt(0),
      DDR3_ras_n => DDR3_ras_n,
      DDR3_reset_n => DDR3_reset_n,
      DDR3_we_n => DDR3_we_n,
      RESET_N => RESET_N
    );
end STRUCTURE;
