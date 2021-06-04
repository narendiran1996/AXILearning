vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/axi_bram_ctrl_v4_1_1
vlib riviera/blk_mem_gen_v8_4_3
vlib riviera/xlconstant_v1_1_6

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap axi_bram_ctrl_v4_1_1 riviera/axi_bram_ctrl_v4_1_1
vmap blk_mem_gen_v8_4_3 riviera/blk_mem_gen_v8_4_3
vmap xlconstant_v1_1_6 riviera/xlconstant_v1_1_6

vlog -work xil_defaultlib  -sv2k12 \
"/media/narendiran/ubuntu_install/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/media/narendiran/ubuntu_install/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/media/narendiran/ubuntu_install/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work axi_bram_ctrl_v4_1_1 -93 \
"../../../../AXIProjectSources.srcs/sources_1/bd/SingleWriteBRAM/ipshared/70bf/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/SingleWriteBRAM/ip/SingleWriteBRAM_axi_bram_ctrl_0_0/sim/SingleWriteBRAM_axi_bram_ctrl_0_0.vhd" \

vlog -work blk_mem_gen_v8_4_3  -v2k5 \
"../../../../AXIProjectSources.srcs/sources_1/bd/SingleWriteBRAM/ipshared/c001/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/SingleWriteBRAM/ip/SingleWriteBRAM_blk_mem_gen_0_0/sim/SingleWriteBRAM_blk_mem_gen_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/SingleWriteBRAM/ip/SingleWriteBRAM_axi_bram_ctrl_0_1/sim/SingleWriteBRAM_axi_bram_ctrl_0_1.vhd" \

vlog -work xlconstant_v1_1_6  -v2k5 \
"../../../../AXIProjectSources.srcs/sources_1/bd/SingleWriteBRAM/ipshared/66e7/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/SingleWriteBRAM/ip/SingleWriteBRAM_xlconstant_0_0/sim/SingleWriteBRAM_xlconstant_0_0.v" \
"../../../bd/SingleWriteBRAM/sim/SingleWriteBRAM.v" \
"../../../bd/SingleWriteBRAM/ip/SingleWriteBRAM_AXIMaster_Single_Read_0_0/sim/SingleWriteBRAM_AXIMaster_Single_Read_0_0.v" \
"../../../bd/SingleWriteBRAM/ip/SingleWriteBRAM_AXIMaster_Single_Wri_0_0/sim/SingleWriteBRAM_AXIMaster_Single_Wri_0_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

