vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_bram_ctrl_v4_1_1
vlib questa_lib/msim/blk_mem_gen_v8_4_3

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap axi_bram_ctrl_v4_1_1 questa_lib/msim/axi_bram_ctrl_v4_1_1
vmap blk_mem_gen_v8_4_3 questa_lib/msim/blk_mem_gen_v8_4_3

vlog -work xil_defaultlib -64 -sv \
"/media/narendiran/ubuntu_install/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/media/narendiran/ubuntu_install/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/media/narendiran/ubuntu_install/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work axi_bram_ctrl_v4_1_1 -64 -93 \
"../../../../AXIProjectSources.srcs/sources_1/bd/SingleReadBRAM/ipshared/70bf/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/SingleReadBRAM/ip/SingleReadBRAM_axi_bram_ctrl_0_0/sim/SingleReadBRAM_axi_bram_ctrl_0_0.vhd" \

vlog -work blk_mem_gen_v8_4_3 -64 \
"../../../../AXIProjectSources.srcs/sources_1/bd/SingleReadBRAM/ipshared/c001/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 \
"../../../bd/SingleReadBRAM/ip/SingleReadBRAM_blk_mem_gen_0_0/sim/SingleReadBRAM_blk_mem_gen_0_0.v" \
"../../../bd/SingleReadBRAM/sim/SingleReadBRAM.v" \
"../../../bd/SingleReadBRAM/ip/SingleReadBRAM_AXIMaster_Single_Read_0_0/sim/SingleReadBRAM_AXIMaster_Single_Read_0_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

