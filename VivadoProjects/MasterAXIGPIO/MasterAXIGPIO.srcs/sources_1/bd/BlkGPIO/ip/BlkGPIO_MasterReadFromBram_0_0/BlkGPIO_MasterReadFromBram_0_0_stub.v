// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Fri Jun  4 09:30:44 2021
// Host        : narendiran-X556UQK running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/narendiran/Desktop/AXILearning/VivadoProjects/MasterAXIGPIO/MasterAXIGPIO.srcs/sources_1/bd/BlkGPIO/ip/BlkGPIO_MasterReadFromBram_0_0/BlkGPIO_MasterReadFromBram_0_0_stub.v
// Design      : BlkGPIO_MasterReadFromBram_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "MasterReadFromBram,Vivado 2019.1" *)
module BlkGPIO_MasterReadFromBram_0_0(initializeOperation, readAddr, readValue, 
  readValid, M_AXI_ACLK, M_AXI_ARESETn, M_AXI_AWADDR, M_AXI_AWPROT, M_AXI_AWVALID, 
  M_AXI_AWREADY, M_AXI_WDATA, M_AXI_WSTRB, M_AXI_WVALID, M_AXI_WREADY, M_AXI_WLAST, 
  M_AXI_BRESP, M_AXI_BVALID, M_AXI_BREADY, M_AXI_ARADDR, M_AXI_ARPROT, M_AXI_ARVALID, 
  M_AXI_ARREADY, M_AXI_RDATA, M_AXI_RRESP, M_AXI_RVALID, M_AXI_RREADY, M_AXI_RLAST)
/* synthesis syn_black_box black_box_pad_pin="initializeOperation,readAddr[31:0],readValue[31:0],readValid,M_AXI_ACLK,M_AXI_ARESETn,M_AXI_AWADDR[31:0],M_AXI_AWPROT[2:0],M_AXI_AWVALID,M_AXI_AWREADY,M_AXI_WDATA[31:0],M_AXI_WSTRB[3:0],M_AXI_WVALID,M_AXI_WREADY,M_AXI_WLAST,M_AXI_BRESP[1:0],M_AXI_BVALID,M_AXI_BREADY,M_AXI_ARADDR[31:0],M_AXI_ARPROT[2:0],M_AXI_ARVALID,M_AXI_ARREADY,M_AXI_RDATA[31:0],M_AXI_RRESP[1:0],M_AXI_RVALID,M_AXI_RREADY,M_AXI_RLAST" */;
  input initializeOperation;
  input [31:0]readAddr;
  output [31:0]readValue;
  output readValid;
  input M_AXI_ACLK;
  input M_AXI_ARESETn;
  output [31:0]M_AXI_AWADDR;
  output [2:0]M_AXI_AWPROT;
  output M_AXI_AWVALID;
  input M_AXI_AWREADY;
  output [31:0]M_AXI_WDATA;
  output [3:0]M_AXI_WSTRB;
  output M_AXI_WVALID;
  input M_AXI_WREADY;
  output M_AXI_WLAST;
  input [1:0]M_AXI_BRESP;
  input M_AXI_BVALID;
  output M_AXI_BREADY;
  output [31:0]M_AXI_ARADDR;
  output [2:0]M_AXI_ARPROT;
  output M_AXI_ARVALID;
  input M_AXI_ARREADY;
  input [31:0]M_AXI_RDATA;
  input [1:0]M_AXI_RRESP;
  input M_AXI_RVALID;
  output M_AXI_RREADY;
  input M_AXI_RLAST;
endmodule
