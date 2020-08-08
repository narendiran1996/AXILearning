//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Sat Aug  8 06:14:54 2020
//Host        : narendiran-X556UQK running 64-bit Ubuntu 20.04.1 LTS
//Command     : generate_target SlaveReadFrom3Reg_wrapper.bd
//Design      : SlaveReadFrom3Reg_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module SlaveReadFrom3Reg_wrapper
   (clkIn,
    initRead,
    readAddress,
    readOutput,
    resetIn);
  input clkIn;
  input initRead;
  input [31:0]readAddress;
  output [31:0]readOutput;
  input resetIn;

  wire clkIn;
  wire initRead;
  wire [31:0]readAddress;
  wire [31:0]readOutput;
  wire resetIn;

  SlaveReadFrom3Reg SlaveReadFrom3Reg_i
       (.clkIn(clkIn),
        .initRead(initRead),
        .readAddress(readAddress),
        .readOutput(readOutput),
        .resetIn(resetIn));
endmodule
