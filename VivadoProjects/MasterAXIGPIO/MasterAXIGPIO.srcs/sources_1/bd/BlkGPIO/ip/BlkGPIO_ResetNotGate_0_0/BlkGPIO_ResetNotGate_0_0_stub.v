// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Fri Jun  4 09:30:42 2021
// Host        : narendiran-X556UQK running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/narendiran/Desktop/AXILearning/VivadoProjects/MasterAXIGPIO/MasterAXIGPIO.srcs/sources_1/bd/BlkGPIO/ip/BlkGPIO_ResetNotGate_0_0/BlkGPIO_ResetNotGate_0_0_stub.v
// Design      : BlkGPIO_ResetNotGate_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ResetNotGate,Vivado 2019.1" *)
module BlkGPIO_ResetNotGate_0_0(resetIn, resetOut)
/* synthesis syn_black_box black_box_pad_pin="resetIn,resetOut" */;
  input resetIn;
  output resetOut;
endmodule
