//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Fri Jun  4 07:09:07 2021
//Host        : narendiran-X556UQK running 64-bit Ubuntu 20.04.2 LTS
//Command     : generate_target BlkBRAMWriteUsingMaster_wrapper.bd
//Design      : BlkBRAMWriteUsingMaster_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module BlkBRAMWriteUsingMaster_wrapper
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

  wire clkIn;
  wire initializeOperation_0;
  wire initializeOperation_1;
  wire [31:0]readAddr_0;
  wire readValid_0;
  wire [31:0]readValue_0;
  wire resetN;
  wire [31:0]writeAddr_0;
  wire [31:0]writeData_0;
  wire writeDone_0;

  BlkBRAMWriteUsingMaster BlkBRAMWriteUsingMaster_i
       (.clkIn(clkIn),
        .initializeOperation_0(initializeOperation_0),
        .initializeOperation_1(initializeOperation_1),
        .readAddr_0(readAddr_0),
        .readValid_0(readValid_0),
        .readValue_0(readValue_0),
        .resetN(resetN),
        .writeAddr_0(writeAddr_0),
        .writeData_0(writeData_0),
        .writeDone_0(writeDone_0));
endmodule
