#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.1 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Fri Jun 04 06:15:13 IST 2021
# SW Build 2552052 on Fri May 24 14:47:09 MDT 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xelab -wto ec3806f130c645bfad2f2c619f38e7f7 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L axi_bram_ctrl_v4_1_1 -L blk_mem_gen_v8_4_3 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot tbReadFromBRAMusingAXIMaster_behav xil_defaultlib.tbReadFromBRAMusingAXIMaster xil_defaultlib.glbl -log elaborate.log"
xelab -wto ec3806f130c645bfad2f2c619f38e7f7 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L axi_bram_ctrl_v4_1_1 -L blk_mem_gen_v8_4_3 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot tbReadFromBRAMusingAXIMaster_behav xil_defaultlib.tbReadFromBRAMusingAXIMaster xil_defaultlib.glbl -log elaborate.log
