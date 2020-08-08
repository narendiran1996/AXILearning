//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Sat Aug  8 05:49:53 2020
//Host        : narendiran-X556UQK running 64-bit Ubuntu 20.04.1 LTS
//Command     : generate_target SlaveWriteTo3Reg_wrapper.bd
//Design      : SlaveWriteTo3Reg_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module SlaveWriteTo3Reg_wrapper
   (clkIn,
    initWrite,
    out1,
    out2,
    out3,
    resetIn,
    writeDone_0,
    writeErrorOccured_0);
  input clkIn;
  input initWrite;
  output [31:0]out1;
  output [31:0]out2;
  output [31:0]out3;
  input resetIn;
  output writeDone_0;
  output writeErrorOccured_0;

  wire clkIn;
  wire initWrite;
  wire [31:0]out1;
  wire [31:0]out2;
  wire [31:0]out3;
  wire resetIn;
  wire writeDone_0;
  wire writeErrorOccured_0;

  SlaveWriteTo3Reg SlaveWriteTo3Reg_i
       (.clkIn(clkIn),
        .initWrite(initWrite),
        .out1(out1),
        .out2(out2),
        .out3(out3),
        .resetIn(resetIn),
        .writeDone_0(writeDone_0),
        .writeErrorOccured_0(writeErrorOccured_0));
endmodule
