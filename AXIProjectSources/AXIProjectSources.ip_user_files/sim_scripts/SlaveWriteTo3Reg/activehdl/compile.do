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
"../../../bd/SlaveWriteTo3Reg/ip/SlaveWriteTo3Reg_AXISlave_WriteTo_0_0/sim/SlaveWriteTo3Reg_AXISlave_WriteTo_0_0.v" \
"../../../bd/SlaveWriteTo3Reg/ip/SlaveWriteTo3Reg_AXIMaster_Single_Wri_0_0/sim/SlaveWriteTo3Reg_AXIMaster_Single_Wri_0_0.v" \
"../../../bd/SlaveWriteTo3Reg/sim/SlaveWriteTo3Reg.v" \

vlog -work xil_defaultlib \
"glbl.v"

