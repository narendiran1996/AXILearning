//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Fri Jun  4 09:29:35 2021
//Host        : narendiran-X556UQK running 64-bit Ubuntu 20.04.2 LTS
//Command     : generate_target BlkGPIO_wrapper.bd
//Design      : BlkGPIO_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module BlkGPIO_wrapper
   (clkIn,
    initializeOperation,
    leds_4bits_tri_o,
    resetN,
    sw_4bits);
  input clkIn;
  input initializeOperation;
  output [3:0]leds_4bits_tri_o;
  input resetN;
  input [3:0]sw_4bits;

  wire clkIn;
  wire initializeOperation;
  wire [3:0]leds_4bits_tri_o;
  wire resetN;
  wire [3:0]sw_4bits;

  BlkGPIO BlkGPIO_i
       (.clkIn(clkIn),
        .initializeOperation(initializeOperation),
        .leds_4bits_tri_o(leds_4bits_tri_o),
        .resetN(resetN),
        .sw_4bits(sw_4bits));
endmodule
