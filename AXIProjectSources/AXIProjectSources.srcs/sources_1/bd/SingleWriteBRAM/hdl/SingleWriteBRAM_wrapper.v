//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Sat Aug  8 03:52:43 2020
//Host        : narendiran-X556UQK running 64-bit Ubuntu 20.04.1 LTS
//Command     : generate_target SingleWriteBRAM_wrapper.bd
//Design      : SingleWriteBRAM_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module SingleWriteBRAM_wrapper
   (clkIn,
    initWrite,
    readOutput,
    resetIn,
    writeErrorOccured);
  input clkIn;
  input initWrite;
  output [31:0]readOutput;
  input resetIn;
  output writeErrorOccured;

  wire clkIn;
  wire initWrite;
  wire [31:0]readOutput;
  wire resetIn;
  wire writeErrorOccured;

  SingleWriteBRAM SingleWriteBRAM_i
       (.clkIn(clkIn),
        .initWrite(initWrite),
        .readOutput(readOutput),
        .resetIn(resetIn),
        .writeErrorOccured(writeErrorOccured));
endmodule
