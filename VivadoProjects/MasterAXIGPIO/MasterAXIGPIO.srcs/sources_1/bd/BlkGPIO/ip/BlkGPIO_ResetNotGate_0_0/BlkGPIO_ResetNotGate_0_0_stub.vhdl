-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Fri Jun  4 09:30:42 2021
-- Host        : narendiran-X556UQK running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/narendiran/Desktop/AXILearning/VivadoProjects/MasterAXIGPIO/MasterAXIGPIO.srcs/sources_1/bd/BlkGPIO/ip/BlkGPIO_ResetNotGate_0_0/BlkGPIO_ResetNotGate_0_0_stub.vhdl
-- Design      : BlkGPIO_ResetNotGate_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BlkGPIO_ResetNotGate_0_0 is
  Port ( 
    resetIn : in STD_LOGIC;
    resetOut : out STD_LOGIC
  );

end BlkGPIO_ResetNotGate_0_0;

architecture stub of BlkGPIO_ResetNotGate_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "resetIn,resetOut";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ResetNotGate,Vivado 2019.1";
begin
end;
