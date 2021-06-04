vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm

vlog -work xil_defaultlib  -sv2k12 \
"/media/narendiran/ubuntu_install/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/media/narendiran/ubuntu_install/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/media/narendiran/ubuntu_install/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/SlaveReadFrom3Reg/ip/SlaveReadFrom3Reg_AXISlave_ReadFrom_1_0/sim/SlaveReadFrom3Reg_AXISlave_ReadFrom_1_0.v" \
"../../../bd/SlaveReadFrom3Reg/ip/SlaveReadFrom3Reg_AXIMaster_Single_Read_0_0/sim/SlaveReadFrom3Reg_AXIMaster_Single_Read_0_0.v" \
"../../../bd/SlaveReadFrom3Reg/sim/SlaveReadFrom3Reg.v" \

vlog -work xil_defaultlib \
"glbl.v"

