//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Fri Jun  4 07:09:06 2021
//Host        : narendiran-X556UQK running 64-bit Ubuntu 20.04.2 LTS
//Command     : generate_target BlkBRAMWriteUsingMaster.bd
//Design      : BlkBRAMWriteUsingMaster
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "BlkBRAMWriteUsingMaster,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=BlkBRAMWriteUsingMaster,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=9,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=4,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=3,da_bram_cntlr_cnt=2,da_clkrst_cnt=2,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "BlkBRAMWriteUsingMaster.hwdef" *) 
module BlkBRAMWriteUsingMaster
   (clkIn,
    initializeOperation_0,
    initializeOperation_1,
    readAddr_0,
    readValid_0,
    readValue_0,
    resetN,
    writeAddr_0,
    writeData_0,
    writeDone_0);
  input clkIn;
  input initializeOperation_0;
  input initializeOperation_1;
  input [31:0]readAddr_0;
  output readValid_0;
  output [31:0]readValue_0;
  input resetN;
  input [31:0]writeAddr_0;
  input [31:0]writeData_0;
  output writeDone_0;

  wire [31:0]MasterReadFromBram_0_M_AXI_ARADDR;
  wire [2:0]MasterReadFromBram_0_M_AXI_ARPROT;
  wire MasterReadFromBram_0_M_AXI_ARREADY;
  wire MasterReadFromBram_0_M_AXI_ARVALID;
  wire [31:0]MasterReadFromBram_0_M_AXI_AWADDR;
  wire [2:0]MasterReadFromBram_0_M_AXI_AWPROT;
  wire MasterReadFromBram_0_M_AXI_AWREADY;
  wire MasterReadFromBram_0_M_AXI_AWVALID;
  wire MasterReadFromBram_0_M_AXI_BREADY;
  wire [1:0]MasterReadFromBram_0_M_AXI_BRESP;
  wire MasterReadFromBram_0_M_AXI_BVALID;
  wire [31:0]MasterReadFromBram_0_M_AXI_RDATA;
  wire MasterReadFromBram_0_M_AXI_RREADY;
  wire [1:0]MasterReadFromBram_0_M_AXI_RRESP;
  wire MasterReadFromBram_0_M_AXI_RVALID;
  wire [31:0]MasterReadFromBram_0_M_AXI_WDATA;
  wire MasterReadFromBram_0_M_AXI_WREADY;
  wire [3:0]MasterReadFromBram_0_M_AXI_WSTRB;
  wire MasterReadFromBram_0_M_AXI_WVALID;
  wire MasterReadFromBram_0_readValid;
  wire [31:0]MasterReadFromBram_0_readValue;
  wire [31:0]MasterWriteToBRAM_0_M_AXI_ARADDR;
  wire [2:0]MasterWriteToBRAM_0_M_AXI_ARPROT;
  wire MasterWriteToBRAM_0_M_AXI_ARREADY;
  wire MasterWriteToBRAM_0_M_AXI_ARVALID;
  wire [31:0]MasterWriteToBRAM_0_M_AXI_AWADDR;
  wire [2:0]MasterWriteToBRAM_0_M_AXI_AWPROT;
  wire MasterWriteToBRAM_0_M_AXI_AWREADY;
  wire MasterWriteToBRAM_0_M_AXI_AWVALID;
  wire MasterWriteToBRAM_0_M_AXI_BREADY;
  wire [1:0]MasterWriteToBRAM_0_M_AXI_BRESP;
  wire MasterWriteToBRAM_0_M_AXI_BVALID;
  wire [31:0]MasterWriteToBRAM_0_M_AXI_RDATA;
  wire MasterWriteToBRAM_0_M_AXI_RREADY;
  wire [1:0]MasterWriteToBRAM_0_M_AXI_RRESP;
  wire MasterWriteToBRAM_0_M_AXI_RVALID;
  wire [31:0]MasterWriteToBRAM_0_M_AXI_WDATA;
  wire MasterWriteToBRAM_0_M_AXI_WREADY;
  wire [3:0]MasterWriteToBRAM_0_M_AXI_WSTRB;
  wire MasterWriteToBRAM_0_M_AXI_WVALID;
  wire MasterWriteToBRAM_0_writeDone;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire [12:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire [12:0]axi_bram_ctrl_1_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_1_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_1_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_1_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_1_BRAM_PORTA_EN;
  wire axi_bram_ctrl_1_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_1_BRAM_PORTA_WE;
  wire [31:0]axi_mem_intercon_1_M00_AXI_ARADDR;
  wire [2:0]axi_mem_intercon_1_M00_AXI_ARPROT;
  wire axi_mem_intercon_1_M00_AXI_ARREADY;
  wire axi_mem_intercon_1_M00_AXI_ARVALID;
  wire [31:0]axi_mem_intercon_1_M00_AXI_AWADDR;
  wire [2:0]axi_mem_intercon_1_M00_AXI_AWPROT;
  wire axi_mem_intercon_1_M00_AXI_AWREADY;
  wire axi_mem_intercon_1_M00_AXI_AWVALID;
  wire axi_mem_intercon_1_M00_AXI_BREADY;
  wire [1:0]axi_mem_intercon_1_M00_AXI_BRESP;
  wire axi_mem_intercon_1_M00_AXI_BVALID;
  wire [31:0]axi_mem_intercon_1_M00_AXI_RDATA;
  wire axi_mem_intercon_1_M00_AXI_RREADY;
  wire [1:0]axi_mem_intercon_1_M00_AXI_RRESP;
  wire axi_mem_intercon_1_M00_AXI_RVALID;
  wire [31:0]axi_mem_intercon_1_M00_AXI_WDATA;
  wire axi_mem_intercon_1_M00_AXI_WREADY;
  wire [3:0]axi_mem_intercon_1_M00_AXI_WSTRB;
  wire axi_mem_intercon_1_M00_AXI_WVALID;
  wire [31:0]axi_mem_intercon_M00_AXI_ARADDR;
  wire [2:0]axi_mem_intercon_M00_AXI_ARPROT;
  wire axi_mem_intercon_M00_AXI_ARREADY;
  wire axi_mem_intercon_M00_AXI_ARVALID;
  wire [31:0]axi_mem_intercon_M00_AXI_AWADDR;
  wire [2:0]axi_mem_intercon_M00_AXI_AWPROT;
  wire axi_mem_intercon_M00_AXI_AWREADY;
  wire axi_mem_intercon_M00_AXI_AWVALID;
  wire axi_mem_intercon_M00_AXI_BREADY;
  wire [1:0]axi_mem_intercon_M00_AXI_BRESP;
  wire axi_mem_intercon_M00_AXI_BVALID;
  wire [31:0]axi_mem_intercon_M00_AXI_RDATA;
  wire axi_mem_intercon_M00_AXI_RREADY;
  wire [1:0]axi_mem_intercon_M00_AXI_RRESP;
  wire axi_mem_intercon_M00_AXI_RVALID;
  wire [31:0]axi_mem_intercon_M00_AXI_WDATA;
  wire axi_mem_intercon_M00_AXI_WREADY;
  wire [3:0]axi_mem_intercon_M00_AXI_WSTRB;
  wire axi_mem_intercon_M00_AXI_WVALID;
  wire initializeOperation_0_1;
  wire initializeOperation_1_1;
  wire [31:0]readAddr_0_1;
  wire [31:0]writeAddr_0_1;
  wire [31:0]writeData_0_1;

  assign S00_ACLK_1 = clkIn;
  assign S00_ARESETN_1 = resetN;
  assign initializeOperation_0_1 = initializeOperation_0;
  assign initializeOperation_1_1 = initializeOperation_1;
  assign readAddr_0_1 = readAddr_0[31:0];
  assign readValid_0 = MasterReadFromBram_0_readValid;
  assign readValue_0[31:0] = MasterReadFromBram_0_readValue;
  assign writeAddr_0_1 = writeAddr_0[31:0];
  assign writeData_0_1 = writeData_0[31:0];
  assign writeDone_0 = MasterWriteToBRAM_0_writeDone;
  BlkBRAMWriteUsingMaster_MasterReadFromBram_0_0 MasterReadFromBram_0
       (.M_AXI_ACLK(S00_ACLK_1),
        .M_AXI_ARADDR(MasterReadFromBram_0_M_AXI_ARADDR),
        .M_AXI_ARESETn(S00_ARESETN_1),
        .M_AXI_ARPROT(MasterReadFromBram_0_M_AXI_ARPROT),
        .M_AXI_ARREADY(MasterReadFromBram_0_M_AXI_ARREADY),
        .M_AXI_ARVALID(MasterReadFromBram_0_M_AXI_ARVALID),
        .M_AXI_AWADDR(MasterReadFromBram_0_M_AXI_AWADDR),
        .M_AXI_AWPROT(MasterReadFromBram_0_M_AXI_AWPROT),
        .M_AXI_AWREADY(MasterReadFromBram_0_M_AXI_AWREADY),
        .M_AXI_AWVALID(MasterReadFromBram_0_M_AXI_AWVALID),
        .M_AXI_BREADY(MasterReadFromBram_0_M_AXI_BREADY),
        .M_AXI_BRESP(MasterReadFromBram_0_M_AXI_BRESP),
        .M_AXI_BVALID(MasterReadFromBram_0_M_AXI_BVALID),
        .M_AXI_RDATA(MasterReadFromBram_0_M_AXI_RDATA),
        .M_AXI_RLAST(1'b0),
        .M_AXI_RREADY(MasterReadFromBram_0_M_AXI_RREADY),
        .M_AXI_RRESP(MasterReadFromBram_0_M_AXI_RRESP),
        .M_AXI_RVALID(MasterReadFromBram_0_M_AXI_RVALID),
        .M_AXI_WDATA(MasterReadFromBram_0_M_AXI_WDATA),
        .M_AXI_WREADY(MasterReadFromBram_0_M_AXI_WREADY),
        .M_AXI_WSTRB(MasterReadFromBram_0_M_AXI_WSTRB),
        .M_AXI_WVALID(MasterReadFromBram_0_M_AXI_WVALID),
        .initializeOperation(initializeOperation_1_1),
        .readAddr(readAddr_0_1),
        .readValid(MasterReadFromBram_0_readValid),
        .readValue(MasterReadFromBram_0_readValue));
  BlkBRAMWriteUsingMaster_MasterWriteToBRAM_0_0 MasterWriteToBRAM_0
       (.M_AXI_ACLK(S00_ACLK_1),
        .M_AXI_ARADDR(MasterWriteToBRAM_0_M_AXI_ARADDR),
        .M_AXI_ARESETn(S00_ARESETN_1),
        .M_AXI_ARPROT(MasterWriteToBRAM_0_M_AXI_ARPROT),
        .M_AXI_ARREADY(MasterWriteToBRAM_0_M_AXI_ARREADY),
        .M_AXI_ARVALID(MasterWriteToBRAM_0_M_AXI_ARVALID),
        .M_AXI_AWADDR(MasterWriteToBRAM_0_M_AXI_AWADDR),
        .M_AXI_AWPROT(MasterWriteToBRAM_0_M_AXI_AWPROT),
        .M_AXI_AWREADY(MasterWriteToBRAM_0_M_AXI_AWREADY),
        .M_AXI_AWVALID(MasterWriteToBRAM_0_M_AXI_AWVALID),
        .M_AXI_BREADY(MasterWriteToBRAM_0_M_AXI_BREADY),
        .M_AXI_BRESP(MasterWriteToBRAM_0_M_AXI_BRESP),
        .M_AXI_BVALID(MasterWriteToBRAM_0_M_AXI_BVALID),
        .M_AXI_RDATA(MasterWriteToBRAM_0_M_AXI_RDATA),
        .M_AXI_RLAST(1'b0),
        .M_AXI_RREADY(MasterWriteToBRAM_0_M_AXI_RREADY),
        .M_AXI_RRESP(MasterWriteToBRAM_0_M_AXI_RRESP),
        .M_AXI_RVALID(MasterWriteToBRAM_0_M_AXI_RVALID),
        .M_AXI_WDATA(MasterWriteToBRAM_0_M_AXI_WDATA),
        .M_AXI_WREADY(MasterWriteToBRAM_0_M_AXI_WREADY),
        .M_AXI_WSTRB(MasterWriteToBRAM_0_M_AXI_WSTRB),
        .M_AXI_WVALID(MasterWriteToBRAM_0_M_AXI_WVALID),
        .initializeOperation(initializeOperation_0_1),
        .writeAddr(writeAddr_0_1),
        .writeData(writeData_0_1),
        .writeDone(MasterWriteToBRAM_0_writeDone));
  BlkBRAMWriteUsingMaster_axi_bram_ctrl_0_0 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .s_axi_aclk(S00_ACLK_1),
        .s_axi_araddr(axi_mem_intercon_M00_AXI_ARADDR[12:0]),
        .s_axi_aresetn(S00_ARESETN_1),
        .s_axi_arprot(axi_mem_intercon_M00_AXI_ARPROT),
        .s_axi_arready(axi_mem_intercon_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_mem_intercon_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_mem_intercon_M00_AXI_AWADDR[12:0]),
        .s_axi_awprot(axi_mem_intercon_M00_AXI_AWPROT),
        .s_axi_awready(axi_mem_intercon_M00_AXI_AWREADY),
        .s_axi_awvalid(axi_mem_intercon_M00_AXI_AWVALID),
        .s_axi_bready(axi_mem_intercon_M00_AXI_BREADY),
        .s_axi_bresp(axi_mem_intercon_M00_AXI_BRESP),
        .s_axi_bvalid(axi_mem_intercon_M00_AXI_BVALID),
        .s_axi_rdata(axi_mem_intercon_M00_AXI_RDATA),
        .s_axi_rready(axi_mem_intercon_M00_AXI_RREADY),
        .s_axi_rresp(axi_mem_intercon_M00_AXI_RRESP),
        .s_axi_rvalid(axi_mem_intercon_M00_AXI_RVALID),
        .s_axi_wdata(axi_mem_intercon_M00_AXI_WDATA),
        .s_axi_wready(axi_mem_intercon_M00_AXI_WREADY),
        .s_axi_wstrb(axi_mem_intercon_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_mem_intercon_M00_AXI_WVALID));
  BlkBRAMWriteUsingMaster_axi_bram_ctrl_1_0 axi_bram_ctrl_1
       (.bram_addr_a(axi_bram_ctrl_1_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_1_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_1_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_1_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_1_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_1_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_1_BRAM_PORTA_DIN),
        .s_axi_aclk(S00_ACLK_1),
        .s_axi_araddr(axi_mem_intercon_1_M00_AXI_ARADDR[12:0]),
        .s_axi_aresetn(S00_ARESETN_1),
        .s_axi_arprot(axi_mem_intercon_1_M00_AXI_ARPROT),
        .s_axi_arready(axi_mem_intercon_1_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_mem_intercon_1_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_mem_intercon_1_M00_AXI_AWADDR[12:0]),
        .s_axi_awprot(axi_mem_intercon_1_M00_AXI_AWPROT),
        .s_axi_awready(axi_mem_intercon_1_M00_AXI_AWREADY),
        .s_axi_awvalid(axi_mem_intercon_1_M00_AXI_AWVALID),
        .s_axi_bready(axi_mem_intercon_1_M00_AXI_BREADY),
        .s_axi_bresp(axi_mem_intercon_1_M00_AXI_BRESP),
        .s_axi_bvalid(axi_mem_intercon_1_M00_AXI_BVALID),
        .s_axi_rdata(axi_mem_intercon_1_M00_AXI_RDATA),
        .s_axi_rready(axi_mem_intercon_1_M00_AXI_RREADY),
        .s_axi_rresp(axi_mem_intercon_1_M00_AXI_RRESP),
        .s_axi_rvalid(axi_mem_intercon_1_M00_AXI_RVALID),
        .s_axi_wdata(axi_mem_intercon_1_M00_AXI_WDATA),
        .s_axi_wready(axi_mem_intercon_1_M00_AXI_WREADY),
        .s_axi_wstrb(axi_mem_intercon_1_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_mem_intercon_1_M00_AXI_WVALID));
  BlkBRAMWriteUsingMaster_axi_mem_intercon_0 axi_mem_intercon
       (.ACLK(S00_ACLK_1),
        .ARESETN(S00_ARESETN_1),
        .M00_ACLK(S00_ACLK_1),
        .M00_ARESETN(S00_ARESETN_1),
        .M00_AXI_araddr(axi_mem_intercon_M00_AXI_ARADDR),
        .M00_AXI_arprot(axi_mem_intercon_M00_AXI_ARPROT),
        .M00_AXI_arready(axi_mem_intercon_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_mem_intercon_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_mem_intercon_M00_AXI_AWADDR),
        .M00_AXI_awprot(axi_mem_intercon_M00_AXI_AWPROT),
        .M00_AXI_awready(axi_mem_intercon_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_mem_intercon_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_mem_intercon_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_mem_intercon_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_mem_intercon_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_mem_intercon_M00_AXI_RDATA),
        .M00_AXI_rready(axi_mem_intercon_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_mem_intercon_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_mem_intercon_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_mem_intercon_M00_AXI_WDATA),
        .M00_AXI_wready(axi_mem_intercon_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_mem_intercon_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_mem_intercon_M00_AXI_WVALID),
        .S00_ACLK(S00_ACLK_1),
        .S00_ARESETN(S00_ARESETN_1),
        .S00_AXI_araddr(MasterWriteToBRAM_0_M_AXI_ARADDR),
        .S00_AXI_arprot(MasterWriteToBRAM_0_M_AXI_ARPROT),
        .S00_AXI_arready(MasterWriteToBRAM_0_M_AXI_ARREADY),
        .S00_AXI_arvalid(MasterWriteToBRAM_0_M_AXI_ARVALID),
        .S00_AXI_awaddr(MasterWriteToBRAM_0_M_AXI_AWADDR),
        .S00_AXI_awprot(MasterWriteToBRAM_0_M_AXI_AWPROT),
        .S00_AXI_awready(MasterWriteToBRAM_0_M_AXI_AWREADY),
        .S00_AXI_awvalid(MasterWriteToBRAM_0_M_AXI_AWVALID),
        .S00_AXI_bready(MasterWriteToBRAM_0_M_AXI_BREADY),
        .S00_AXI_bresp(MasterWriteToBRAM_0_M_AXI_BRESP),
        .S00_AXI_bvalid(MasterWriteToBRAM_0_M_AXI_BVALID),
        .S00_AXI_rdata(MasterWriteToBRAM_0_M_AXI_RDATA),
        .S00_AXI_rready(MasterWriteToBRAM_0_M_AXI_RREADY),
        .S00_AXI_rresp(MasterWriteToBRAM_0_M_AXI_RRESP),
        .S00_AXI_rvalid(MasterWriteToBRAM_0_M_AXI_RVALID),
        .S00_AXI_wdata(MasterWriteToBRAM_0_M_AXI_WDATA),
        .S00_AXI_wready(MasterWriteToBRAM_0_M_AXI_WREADY),
        .S00_AXI_wstrb(MasterWriteToBRAM_0_M_AXI_WSTRB),
        .S00_AXI_wvalid(MasterWriteToBRAM_0_M_AXI_WVALID));
  BlkBRAMWriteUsingMaster_axi_mem_intercon_1_0 axi_mem_intercon_1
       (.ACLK(S00_ACLK_1),
        .ARESETN(S00_ARESETN_1),
        .M00_ACLK(S00_ACLK_1),
        .M00_ARESETN(S00_ARESETN_1),
        .M00_AXI_araddr(axi_mem_intercon_1_M00_AXI_ARADDR),
        .M00_AXI_arprot(axi_mem_intercon_1_M00_AXI_ARPROT),
        .M00_AXI_arready(axi_mem_intercon_1_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_mem_intercon_1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_mem_intercon_1_M00_AXI_AWADDR),
        .M00_AXI_awprot(axi_mem_intercon_1_M00_AXI_AWPROT),
        .M00_AXI_awready(axi_mem_intercon_1_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_mem_intercon_1_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_mem_intercon_1_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_mem_intercon_1_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_mem_intercon_1_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_mem_intercon_1_M00_AXI_RDATA),
        .M00_AXI_rready(axi_mem_intercon_1_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_mem_intercon_1_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_mem_intercon_1_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_mem_intercon_1_M00_AXI_WDATA),
        .M00_AXI_wready(axi_mem_intercon_1_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_mem_intercon_1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_mem_intercon_1_M00_AXI_WVALID),
        .S00_ACLK(S00_ACLK_1),
        .S00_ARESETN(S00_ARESETN_1),
        .S00_AXI_araddr(MasterReadFromBram_0_M_AXI_ARADDR),
        .S00_AXI_arprot(MasterReadFromBram_0_M_AXI_ARPROT),
        .S00_AXI_arready(MasterReadFromBram_0_M_AXI_ARREADY),
        .S00_AXI_arvalid(MasterReadFromBram_0_M_AXI_ARVALID),
        .S00_AXI_awaddr(MasterReadFromBram_0_M_AXI_AWADDR),
        .S00_AXI_awprot(MasterReadFromBram_0_M_AXI_AWPROT),
        .S00_AXI_awready(MasterReadFromBram_0_M_AXI_AWREADY),
        .S00_AXI_awvalid(MasterReadFromBram_0_M_AXI_AWVALID),
        .S00_AXI_bready(MasterReadFromBram_0_M_AXI_BREADY),
        .S00_AXI_bresp(MasterReadFromBram_0_M_AXI_BRESP),
        .S00_AXI_bvalid(MasterReadFromBram_0_M_AXI_BVALID),
        .S00_AXI_rdata(MasterReadFromBram_0_M_AXI_RDATA),
        .S00_AXI_rready(MasterReadFromBram_0_M_AXI_RREADY),
        .S00_AXI_rresp(MasterReadFromBram_0_M_AXI_RRESP),
        .S00_AXI_rvalid(MasterReadFromBram_0_M_AXI_RVALID),
        .S00_AXI_wdata(MasterReadFromBram_0_M_AXI_WDATA),
        .S00_AXI_wready(MasterReadFromBram_0_M_AXI_WREADY),
        .S00_AXI_wstrb(MasterReadFromBram_0_M_AXI_WSTRB),
        .S00_AXI_wvalid(MasterReadFromBram_0_M_AXI_WVALID));
  BlkBRAMWriteUsingMaster_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_1_BRAM_PORTA_ADDR}),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .clkb(axi_bram_ctrl_1_BRAM_PORTA_CLK),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .dinb(axi_bram_ctrl_1_BRAM_PORTA_DIN),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .doutb(axi_bram_ctrl_1_BRAM_PORTA_DOUT),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .enb(axi_bram_ctrl_1_BRAM_PORTA_EN),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .rstb(axi_bram_ctrl_1_BRAM_PORTA_RST),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .web(axi_bram_ctrl_1_BRAM_PORTA_WE));
endmodule

module BlkBRAMWriteUsingMaster_axi_mem_intercon_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arprot,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awprot,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [2:0]M00_AXI_arprot;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [2:0]M00_AXI_awprot;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire axi_mem_intercon_ACLK_net;
  wire axi_mem_intercon_ARESETN_net;
  wire [31:0]axi_mem_intercon_to_s00_couplers_ARADDR;
  wire [2:0]axi_mem_intercon_to_s00_couplers_ARPROT;
  wire axi_mem_intercon_to_s00_couplers_ARREADY;
  wire axi_mem_intercon_to_s00_couplers_ARVALID;
  wire [31:0]axi_mem_intercon_to_s00_couplers_AWADDR;
  wire [2:0]axi_mem_intercon_to_s00_couplers_AWPROT;
  wire axi_mem_intercon_to_s00_couplers_AWREADY;
  wire axi_mem_intercon_to_s00_couplers_AWVALID;
  wire axi_mem_intercon_to_s00_couplers_BREADY;
  wire [1:0]axi_mem_intercon_to_s00_couplers_BRESP;
  wire axi_mem_intercon_to_s00_couplers_BVALID;
  wire [31:0]axi_mem_intercon_to_s00_couplers_RDATA;
  wire axi_mem_intercon_to_s00_couplers_RREADY;
  wire [1:0]axi_mem_intercon_to_s00_couplers_RRESP;
  wire axi_mem_intercon_to_s00_couplers_RVALID;
  wire [31:0]axi_mem_intercon_to_s00_couplers_WDATA;
  wire axi_mem_intercon_to_s00_couplers_WREADY;
  wire [3:0]axi_mem_intercon_to_s00_couplers_WSTRB;
  wire axi_mem_intercon_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_axi_mem_intercon_ARADDR;
  wire [2:0]s00_couplers_to_axi_mem_intercon_ARPROT;
  wire s00_couplers_to_axi_mem_intercon_ARREADY;
  wire s00_couplers_to_axi_mem_intercon_ARVALID;
  wire [31:0]s00_couplers_to_axi_mem_intercon_AWADDR;
  wire [2:0]s00_couplers_to_axi_mem_intercon_AWPROT;
  wire s00_couplers_to_axi_mem_intercon_AWREADY;
  wire s00_couplers_to_axi_mem_intercon_AWVALID;
  wire s00_couplers_to_axi_mem_intercon_BREADY;
  wire [1:0]s00_couplers_to_axi_mem_intercon_BRESP;
  wire s00_couplers_to_axi_mem_intercon_BVALID;
  wire [31:0]s00_couplers_to_axi_mem_intercon_RDATA;
  wire s00_couplers_to_axi_mem_intercon_RREADY;
  wire [1:0]s00_couplers_to_axi_mem_intercon_RRESP;
  wire s00_couplers_to_axi_mem_intercon_RVALID;
  wire [31:0]s00_couplers_to_axi_mem_intercon_WDATA;
  wire s00_couplers_to_axi_mem_intercon_WREADY;
  wire [3:0]s00_couplers_to_axi_mem_intercon_WSTRB;
  wire s00_couplers_to_axi_mem_intercon_WVALID;

  assign M00_AXI_araddr[31:0] = s00_couplers_to_axi_mem_intercon_ARADDR;
  assign M00_AXI_arprot[2:0] = s00_couplers_to_axi_mem_intercon_ARPROT;
  assign M00_AXI_arvalid = s00_couplers_to_axi_mem_intercon_ARVALID;
  assign M00_AXI_awaddr[31:0] = s00_couplers_to_axi_mem_intercon_AWADDR;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_axi_mem_intercon_AWPROT;
  assign M00_AXI_awvalid = s00_couplers_to_axi_mem_intercon_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_axi_mem_intercon_BREADY;
  assign M00_AXI_rready = s00_couplers_to_axi_mem_intercon_RREADY;
  assign M00_AXI_wdata[31:0] = s00_couplers_to_axi_mem_intercon_WDATA;
  assign M00_AXI_wstrb[3:0] = s00_couplers_to_axi_mem_intercon_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_axi_mem_intercon_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = axi_mem_intercon_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_mem_intercon_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_mem_intercon_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_mem_intercon_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_mem_intercon_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = axi_mem_intercon_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_mem_intercon_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_mem_intercon_to_s00_couplers_WREADY;
  assign axi_mem_intercon_ACLK_net = M00_ACLK;
  assign axi_mem_intercon_ARESETN_net = M00_ARESETN;
  assign axi_mem_intercon_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_mem_intercon_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_mem_intercon_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_mem_intercon_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_mem_intercon_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_mem_intercon_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_mem_intercon_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_mem_intercon_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_mem_intercon_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_mem_intercon_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_mem_intercon_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_axi_mem_intercon_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_axi_mem_intercon_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_axi_mem_intercon_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_axi_mem_intercon_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_axi_mem_intercon_RDATA = M00_AXI_rdata[31:0];
  assign s00_couplers_to_axi_mem_intercon_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_axi_mem_intercon_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_axi_mem_intercon_WREADY = M00_AXI_wready;
  s00_couplers_imp_1WRA24D s00_couplers
       (.M_ACLK(axi_mem_intercon_ACLK_net),
        .M_ARESETN(axi_mem_intercon_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_axi_mem_intercon_ARADDR),
        .M_AXI_arprot(s00_couplers_to_axi_mem_intercon_ARPROT),
        .M_AXI_arready(s00_couplers_to_axi_mem_intercon_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_axi_mem_intercon_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_axi_mem_intercon_AWADDR),
        .M_AXI_awprot(s00_couplers_to_axi_mem_intercon_AWPROT),
        .M_AXI_awready(s00_couplers_to_axi_mem_intercon_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_axi_mem_intercon_AWVALID),
        .M_AXI_bready(s00_couplers_to_axi_mem_intercon_BREADY),
        .M_AXI_bresp(s00_couplers_to_axi_mem_intercon_BRESP),
        .M_AXI_bvalid(s00_couplers_to_axi_mem_intercon_BVALID),
        .M_AXI_rdata(s00_couplers_to_axi_mem_intercon_RDATA),
        .M_AXI_rready(s00_couplers_to_axi_mem_intercon_RREADY),
        .M_AXI_rresp(s00_couplers_to_axi_mem_intercon_RRESP),
        .M_AXI_rvalid(s00_couplers_to_axi_mem_intercon_RVALID),
        .M_AXI_wdata(s00_couplers_to_axi_mem_intercon_WDATA),
        .M_AXI_wready(s00_couplers_to_axi_mem_intercon_WREADY),
        .M_AXI_wstrb(s00_couplers_to_axi_mem_intercon_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_axi_mem_intercon_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_mem_intercon_to_s00_couplers_ARADDR),
        .S_AXI_arprot(axi_mem_intercon_to_s00_couplers_ARPROT),
        .S_AXI_arready(axi_mem_intercon_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(axi_mem_intercon_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_mem_intercon_to_s00_couplers_AWADDR),
        .S_AXI_awprot(axi_mem_intercon_to_s00_couplers_AWPROT),
        .S_AXI_awready(axi_mem_intercon_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(axi_mem_intercon_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_mem_intercon_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_mem_intercon_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_mem_intercon_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_mem_intercon_to_s00_couplers_RDATA),
        .S_AXI_rready(axi_mem_intercon_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_mem_intercon_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_mem_intercon_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_mem_intercon_to_s00_couplers_WDATA),
        .S_AXI_wready(axi_mem_intercon_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_mem_intercon_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_mem_intercon_to_s00_couplers_WVALID));
endmodule

module BlkBRAMWriteUsingMaster_axi_mem_intercon_1_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arprot,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awprot,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [2:0]M00_AXI_arprot;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [2:0]M00_AXI_awprot;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire axi_mem_intercon_1_ACLK_net;
  wire axi_mem_intercon_1_ARESETN_net;
  wire [31:0]axi_mem_intercon_1_to_s00_couplers_ARADDR;
  wire [2:0]axi_mem_intercon_1_to_s00_couplers_ARPROT;
  wire axi_mem_intercon_1_to_s00_couplers_ARREADY;
  wire axi_mem_intercon_1_to_s00_couplers_ARVALID;
  wire [31:0]axi_mem_intercon_1_to_s00_couplers_AWADDR;
  wire [2:0]axi_mem_intercon_1_to_s00_couplers_AWPROT;
  wire axi_mem_intercon_1_to_s00_couplers_AWREADY;
  wire axi_mem_intercon_1_to_s00_couplers_AWVALID;
  wire axi_mem_intercon_1_to_s00_couplers_BREADY;
  wire [1:0]axi_mem_intercon_1_to_s00_couplers_BRESP;
  wire axi_mem_intercon_1_to_s00_couplers_BVALID;
  wire [31:0]axi_mem_intercon_1_to_s00_couplers_RDATA;
  wire axi_mem_intercon_1_to_s00_couplers_RREADY;
  wire [1:0]axi_mem_intercon_1_to_s00_couplers_RRESP;
  wire axi_mem_intercon_1_to_s00_couplers_RVALID;
  wire [31:0]axi_mem_intercon_1_to_s00_couplers_WDATA;
  wire axi_mem_intercon_1_to_s00_couplers_WREADY;
  wire [3:0]axi_mem_intercon_1_to_s00_couplers_WSTRB;
  wire axi_mem_intercon_1_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_axi_mem_intercon_1_ARADDR;
  wire [2:0]s00_couplers_to_axi_mem_intercon_1_ARPROT;
  wire s00_couplers_to_axi_mem_intercon_1_ARREADY;
  wire s00_couplers_to_axi_mem_intercon_1_ARVALID;
  wire [31:0]s00_couplers_to_axi_mem_intercon_1_AWADDR;
  wire [2:0]s00_couplers_to_axi_mem_intercon_1_AWPROT;
  wire s00_couplers_to_axi_mem_intercon_1_AWREADY;
  wire s00_couplers_to_axi_mem_intercon_1_AWVALID;
  wire s00_couplers_to_axi_mem_intercon_1_BREADY;
  wire [1:0]s00_couplers_to_axi_mem_intercon_1_BRESP;
  wire s00_couplers_to_axi_mem_intercon_1_BVALID;
  wire [31:0]s00_couplers_to_axi_mem_intercon_1_RDATA;
  wire s00_couplers_to_axi_mem_intercon_1_RREADY;
  wire [1:0]s00_couplers_to_axi_mem_intercon_1_RRESP;
  wire s00_couplers_to_axi_mem_intercon_1_RVALID;
  wire [31:0]s00_couplers_to_axi_mem_intercon_1_WDATA;
  wire s00_couplers_to_axi_mem_intercon_1_WREADY;
  wire [3:0]s00_couplers_to_axi_mem_intercon_1_WSTRB;
  wire s00_couplers_to_axi_mem_intercon_1_WVALID;

  assign M00_AXI_araddr[31:0] = s00_couplers_to_axi_mem_intercon_1_ARADDR;
  assign M00_AXI_arprot[2:0] = s00_couplers_to_axi_mem_intercon_1_ARPROT;
  assign M00_AXI_arvalid = s00_couplers_to_axi_mem_intercon_1_ARVALID;
  assign M00_AXI_awaddr[31:0] = s00_couplers_to_axi_mem_intercon_1_AWADDR;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_axi_mem_intercon_1_AWPROT;
  assign M00_AXI_awvalid = s00_couplers_to_axi_mem_intercon_1_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_axi_mem_intercon_1_BREADY;
  assign M00_AXI_rready = s00_couplers_to_axi_mem_intercon_1_RREADY;
  assign M00_AXI_wdata[31:0] = s00_couplers_to_axi_mem_intercon_1_WDATA;
  assign M00_AXI_wstrb[3:0] = s00_couplers_to_axi_mem_intercon_1_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_axi_mem_intercon_1_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = axi_mem_intercon_1_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_mem_intercon_1_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_mem_intercon_1_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_mem_intercon_1_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_mem_intercon_1_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = axi_mem_intercon_1_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_mem_intercon_1_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_mem_intercon_1_to_s00_couplers_WREADY;
  assign axi_mem_intercon_1_ACLK_net = M00_ACLK;
  assign axi_mem_intercon_1_ARESETN_net = M00_ARESETN;
  assign axi_mem_intercon_1_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_mem_intercon_1_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_mem_intercon_1_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_mem_intercon_1_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_mem_intercon_1_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_mem_intercon_1_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_mem_intercon_1_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_mem_intercon_1_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_mem_intercon_1_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_mem_intercon_1_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_mem_intercon_1_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_axi_mem_intercon_1_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_axi_mem_intercon_1_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_axi_mem_intercon_1_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_axi_mem_intercon_1_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_axi_mem_intercon_1_RDATA = M00_AXI_rdata[31:0];
  assign s00_couplers_to_axi_mem_intercon_1_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_axi_mem_intercon_1_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_axi_mem_intercon_1_WREADY = M00_AXI_wready;
  s00_couplers_imp_1PL3SJW s00_couplers
       (.M_ACLK(axi_mem_intercon_1_ACLK_net),
        .M_ARESETN(axi_mem_intercon_1_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_axi_mem_intercon_1_ARADDR),
        .M_AXI_arprot(s00_couplers_to_axi_mem_intercon_1_ARPROT),
        .M_AXI_arready(s00_couplers_to_axi_mem_intercon_1_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_axi_mem_intercon_1_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_axi_mem_intercon_1_AWADDR),
        .M_AXI_awprot(s00_couplers_to_axi_mem_intercon_1_AWPROT),
        .M_AXI_awready(s00_couplers_to_axi_mem_intercon_1_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_axi_mem_intercon_1_AWVALID),
        .M_AXI_bready(s00_couplers_to_axi_mem_intercon_1_BREADY),
        .M_AXI_bresp(s00_couplers_to_axi_mem_intercon_1_BRESP),
        .M_AXI_bvalid(s00_couplers_to_axi_mem_intercon_1_BVALID),
        .M_AXI_rdata(s00_couplers_to_axi_mem_intercon_1_RDATA),
        .M_AXI_rready(s00_couplers_to_axi_mem_intercon_1_RREADY),
        .M_AXI_rresp(s00_couplers_to_axi_mem_intercon_1_RRESP),
        .M_AXI_rvalid(s00_couplers_to_axi_mem_intercon_1_RVALID),
        .M_AXI_wdata(s00_couplers_to_axi_mem_intercon_1_WDATA),
        .M_AXI_wready(s00_couplers_to_axi_mem_intercon_1_WREADY),
        .M_AXI_wstrb(s00_couplers_to_axi_mem_intercon_1_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_axi_mem_intercon_1_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_mem_intercon_1_to_s00_couplers_ARADDR),
        .S_AXI_arprot(axi_mem_intercon_1_to_s00_couplers_ARPROT),
        .S_AXI_arready(axi_mem_intercon_1_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(axi_mem_intercon_1_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_mem_intercon_1_to_s00_couplers_AWADDR),
        .S_AXI_awprot(axi_mem_intercon_1_to_s00_couplers_AWPROT),
        .S_AXI_awready(axi_mem_intercon_1_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(axi_mem_intercon_1_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_mem_intercon_1_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_mem_intercon_1_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_mem_intercon_1_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_mem_intercon_1_to_s00_couplers_RDATA),
        .S_AXI_rready(axi_mem_intercon_1_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_mem_intercon_1_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_mem_intercon_1_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_mem_intercon_1_to_s00_couplers_WDATA),
        .S_AXI_wready(axi_mem_intercon_1_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_mem_intercon_1_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_mem_intercon_1_to_s00_couplers_WVALID));
endmodule

module s00_couplers_imp_1PL3SJW
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire s00_couplers_to_s00_couplers_ARREADY;
  wire s00_couplers_to_s00_couplers_ARVALID;
  wire [31:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire s00_couplers_to_s00_couplers_AWREADY;
  wire s00_couplers_to_s00_couplers_AWVALID;
  wire s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid;
endmodule

module s00_couplers_imp_1WRA24D
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire s00_couplers_to_s00_couplers_ARREADY;
  wire s00_couplers_to_s00_couplers_ARVALID;
  wire [31:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire s00_couplers_to_s00_couplers_AWREADY;
  wire s00_couplers_to_s00_couplers_AWVALID;
  wire s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid;
endmodule
