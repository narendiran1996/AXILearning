//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Fri Jun  4 06:15:00 2021
//Host        : narendiran-X556UQK running 64-bit Ubuntu 20.04.2 LTS
//Command     : generate_target BRAMReadingMaster_wrapper.bd
//Design      : BRAMReadingMaster_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module BRAMReadingMaster_wrapper
   (clkIn,
    initializeOperation,
    readAddr,
    readValid,
    readValue,
    resetN);
  input clkIn;
  input initializeOperation;
  input [31:0]readAddr;
  output readValid;
  output [31:0]readValue;
  input resetN;

  wire clkIn;
  wire initializeOperation;
  wire [31:0]readAddr;
  wire readValid;
  wire [31:0]readValue;
  wire resetN;

  BRAMReadingMaster BRAMReadingMaster_i
       (.clkIn(clkIn),
        .initializeOperation(initializeOperation),
        .readAddr(readAddr),
        .readValid(readValid),
        .readValue(readValue),
        .resetN(resetN));
endmodule
