//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Fri Jun  4 09:29:35 2021
//Host        : narendiran-X556UQK running 64-bit Ubuntu 20.04.2 LTS
//Command     : generate_target BlkGPIO.bd
//Design      : BlkGPIO
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "BlkGPIO,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=BlkGPIO,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=1,da_board_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "BlkGPIO.hwdef" *) 
module BlkGPIO
   (clkIn,
    initializeOperation,
    leds_4bits_tri_o,
    resetN,
    sw_4bits);
  input clkIn;
  input initializeOperation;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 leds_4bits TRI_O" *) output [3:0]leds_4bits_tri_o;
  input resetN;
  input [3:0]sw_4bits;

  wire [31:0]MasterReadFromBram_0_M_AXI_ARADDR;
  wire MasterReadFromBram_0_M_AXI_ARREADY;
  wire MasterReadFromBram_0_M_AXI_ARVALID;
  wire [31:0]MasterReadFromBram_0_M_AXI_AWADDR;
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
  wire MasterWriteToBRAM_0_M_AXI_ARREADY;
  wire MasterWriteToBRAM_0_M_AXI_ARVALID;
  wire [31:0]MasterWriteToBRAM_0_M_AXI_AWADDR;
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
  wire ResetNotGate_0_resetOut;
  wire [3:0]axi_gpio_0_GPIO_TRI_O;
  wire clk_wiz_clk_out1;
  wire initializeOperation_1;
  wire resetN_1;
  wire [3:0]sw_4bits_1;
  wire [31:0]xlconstant_0_dout;

  assign clk_wiz_clk_out1 = clkIn;
  assign initializeOperation_1 = initializeOperation;
  assign leds_4bits_tri_o[3:0] = axi_gpio_0_GPIO_TRI_O;
  assign resetN_1 = resetN;
  assign sw_4bits_1 = sw_4bits[3:0];
  BlkGPIO_MasterReadFromBram_0_0 MasterReadFromBram_0
       (.M_AXI_ACLK(clk_wiz_clk_out1),
        .M_AXI_ARADDR(MasterReadFromBram_0_M_AXI_ARADDR),
        .M_AXI_ARESETn(ResetNotGate_0_resetOut),
        .M_AXI_ARREADY(MasterReadFromBram_0_M_AXI_ARREADY),
        .M_AXI_ARVALID(MasterReadFromBram_0_M_AXI_ARVALID),
        .M_AXI_AWADDR(MasterReadFromBram_0_M_AXI_AWADDR),
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
        .initializeOperation(initializeOperation_1),
        .readAddr(xlconstant_0_dout),
        .readValid(MasterReadFromBram_0_readValid),
        .readValue(MasterReadFromBram_0_readValue));
  BlkGPIO_MasterWriteToBRAM_0_0 MasterWriteToBRAM_0
       (.M_AXI_ACLK(clk_wiz_clk_out1),
        .M_AXI_ARADDR(MasterWriteToBRAM_0_M_AXI_ARADDR),
        .M_AXI_ARESETn(ResetNotGate_0_resetOut),
        .M_AXI_ARREADY(MasterWriteToBRAM_0_M_AXI_ARREADY),
        .M_AXI_ARVALID(MasterWriteToBRAM_0_M_AXI_ARVALID),
        .M_AXI_AWADDR(MasterWriteToBRAM_0_M_AXI_AWADDR),
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
        .initializeOperation(MasterReadFromBram_0_readValid),
        .writeAddr(xlconstant_0_dout),
        .writeData(MasterReadFromBram_0_readValue));
  BlkGPIO_ResetNotGate_0_0 ResetNotGate_0
       (.resetIn(resetN_1),
        .resetOut(ResetNotGate_0_resetOut));
  BlkGPIO_axi_gpio_0_0 axi_gpio_0
       (.gpio_io_o(axi_gpio_0_GPIO_TRI_O),
        .s_axi_aclk(clk_wiz_clk_out1),
        .s_axi_araddr(MasterWriteToBRAM_0_M_AXI_ARADDR[8:0]),
        .s_axi_aresetn(1'b1),
        .s_axi_arready(MasterWriteToBRAM_0_M_AXI_ARREADY),
        .s_axi_arvalid(MasterWriteToBRAM_0_M_AXI_ARVALID),
        .s_axi_awaddr(MasterWriteToBRAM_0_M_AXI_AWADDR[8:0]),
        .s_axi_awready(MasterWriteToBRAM_0_M_AXI_AWREADY),
        .s_axi_awvalid(MasterWriteToBRAM_0_M_AXI_AWVALID),
        .s_axi_bready(MasterWriteToBRAM_0_M_AXI_BREADY),
        .s_axi_bresp(MasterWriteToBRAM_0_M_AXI_BRESP),
        .s_axi_bvalid(MasterWriteToBRAM_0_M_AXI_BVALID),
        .s_axi_rdata(MasterWriteToBRAM_0_M_AXI_RDATA),
        .s_axi_rready(MasterWriteToBRAM_0_M_AXI_RREADY),
        .s_axi_rresp(MasterWriteToBRAM_0_M_AXI_RRESP),
        .s_axi_rvalid(MasterWriteToBRAM_0_M_AXI_RVALID),
        .s_axi_wdata(MasterWriteToBRAM_0_M_AXI_WDATA),
        .s_axi_wready(MasterWriteToBRAM_0_M_AXI_WREADY),
        .s_axi_wstrb(MasterWriteToBRAM_0_M_AXI_WSTRB),
        .s_axi_wvalid(MasterWriteToBRAM_0_M_AXI_WVALID));
  BlkGPIO_axi_gpio_1_0 axi_gpio_1
       (.gpio_io_i(sw_4bits_1),
        .s_axi_aclk(clk_wiz_clk_out1),
        .s_axi_araddr(MasterReadFromBram_0_M_AXI_ARADDR[8:0]),
        .s_axi_aresetn(ResetNotGate_0_resetOut),
        .s_axi_arready(MasterReadFromBram_0_M_AXI_ARREADY),
        .s_axi_arvalid(MasterReadFromBram_0_M_AXI_ARVALID),
        .s_axi_awaddr(MasterReadFromBram_0_M_AXI_AWADDR[8:0]),
        .s_axi_awready(MasterReadFromBram_0_M_AXI_AWREADY),
        .s_axi_awvalid(MasterReadFromBram_0_M_AXI_AWVALID),
        .s_axi_bready(MasterReadFromBram_0_M_AXI_BREADY),
        .s_axi_bresp(MasterReadFromBram_0_M_AXI_BRESP),
        .s_axi_bvalid(MasterReadFromBram_0_M_AXI_BVALID),
        .s_axi_rdata(MasterReadFromBram_0_M_AXI_RDATA),
        .s_axi_rready(MasterReadFromBram_0_M_AXI_RREADY),
        .s_axi_rresp(MasterReadFromBram_0_M_AXI_RRESP),
        .s_axi_rvalid(MasterReadFromBram_0_M_AXI_RVALID),
        .s_axi_wdata(MasterReadFromBram_0_M_AXI_WDATA),
        .s_axi_wready(MasterReadFromBram_0_M_AXI_WREADY),
        .s_axi_wstrb(MasterReadFromBram_0_M_AXI_WSTRB),
        .s_axi_wvalid(MasterReadFromBram_0_M_AXI_WVALID));
  BlkGPIO_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule
