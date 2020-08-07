//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Sat Aug  8 02:51:36 2020
//Host        : narendiran-X556UQK running 64-bit Ubuntu 20.04.1 LTS
//Command     : generate_target SingleReadBRAM_wrapper.bd
//Design      : SingleReadBRAM_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module SingleReadBRAM_wrapper
   (M_AXI_ACLK_0,
    M_AXI_ARESETN_0,
    initRead_0,
    readAddress);
  input M_AXI_ACLK_0;
  input M_AXI_ARESETN_0;
  input initRead_0;
  input [31:0]readAddress;

  wire M_AXI_ACLK_0;
  wire M_AXI_ARESETN_0;
  wire initRead_0;
  wire [31:0]readAddress;

  SingleReadBRAM SingleReadBRAM_i
       (.M_AXI_ACLK_0(M_AXI_ACLK_0),
        .M_AXI_ARESETN_0(M_AXI_ARESETN_0),
        .initRead_0(initRead_0),
        .readAddress(readAddress));
endmodule
