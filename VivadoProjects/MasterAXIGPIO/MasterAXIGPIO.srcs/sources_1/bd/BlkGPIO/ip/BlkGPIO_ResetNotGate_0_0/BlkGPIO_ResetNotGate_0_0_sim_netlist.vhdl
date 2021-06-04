-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Fri Jun  4 09:30:43 2021
-- Host        : narendiran-X556UQK running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/narendiran/Desktop/AXILearning/VivadoProjects/MasterAXIGPIO/MasterAXIGPIO.srcs/sources_1/bd/BlkGPIO/ip/BlkGPIO_ResetNotGate_0_0/BlkGPIO_ResetNotGate_0_0_sim_netlist.vhdl
-- Design      : BlkGPIO_ResetNotGate_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BlkGPIO_ResetNotGate_0_0 is
  port (
    resetIn : in STD_LOGIC;
    resetOut : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of BlkGPIO_ResetNotGate_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of BlkGPIO_ResetNotGate_0_0 : entity is "BlkGPIO_ResetNotGate_0_0,ResetNotGate,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of BlkGPIO_ResetNotGate_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of BlkGPIO_ResetNotGate_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of BlkGPIO_ResetNotGate_0_0 : entity is "ResetNotGate,Vivado 2019.1";
end BlkGPIO_ResetNotGate_0_0;

architecture STRUCTURE of BlkGPIO_ResetNotGate_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of resetIn : signal is "xilinx.com:signal:reset:1.0 resetIn RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of resetIn : signal is "XIL_INTERFACENAME resetIn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
resetOut_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetIn,
      O => resetOut
    );
end STRUCTURE;
