#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.1 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Sat Aug 08 06:15:20 IST 2020
# SW Build 2552052 on Fri May 24 14:47:09 MDT 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xelab -wto 22b4173d835f442c95586084ff9a77a3 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot TB_SlaveReadFrom3Reg_behav xil_defaultlib.TB_SlaveReadFrom3Reg xil_defaultlib.glbl -log elaborate.log"
xelab -wto 22b4173d835f442c95586084ff9a77a3 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot TB_SlaveReadFrom3Reg_behav xil_defaultlib.TB_SlaveReadFrom3Reg xil_defaultlib.glbl -log elaborate.log

