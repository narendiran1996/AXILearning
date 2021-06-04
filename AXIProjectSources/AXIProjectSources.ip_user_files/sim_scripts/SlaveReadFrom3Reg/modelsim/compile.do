vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm

vlog -work xil_defaultlib -64 -incr -sv \
"/media/narendiran/ubuntu_install/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/media/narendiran/ubuntu_install/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/media/narendiran/ubuntu_install/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/SlaveReadFrom3Reg/ip/SlaveReadFrom3Reg_AXISlave_ReadFrom_1_0/sim/SlaveReadFrom3Reg_AXISlave_ReadFrom_1_0.v" \
"../../../bd/SlaveReadFrom3Reg/ip/SlaveReadFrom3Reg_AXIMaster_Single_Read_0_0/sim/SlaveReadFrom3Reg_AXIMaster_Single_Read_0_0.v" \
"../../../bd/SlaveReadFrom3Reg/sim/SlaveReadFrom3Reg.v" \

vlog -work xil_defaultlib \
"glbl.v"

