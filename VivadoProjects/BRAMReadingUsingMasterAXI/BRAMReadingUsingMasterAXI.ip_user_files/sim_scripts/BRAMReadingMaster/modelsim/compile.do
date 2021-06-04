vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_bram_ctrl_v4_1_1
vlib modelsim_lib/msim/blk_mem_gen_v8_4_3

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap axi_bram_ctrl_v4_1_1 modelsim_lib/msim/axi_bram_ctrl_v4_1_1
vmap blk_mem_gen_v8_4_3 modelsim_lib/msim/blk_mem_gen_v8_4_3

vlog -work xil_defaultlib -64 -incr -sv \
"/media/narendiran/ubuntu_install/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/media/narendiran/ubuntu_install/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/media/narendiran/ubuntu_install/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/BRAMReadingMaster/ip/BRAMReadingMaster_MasterReadFromBram_0_0/sim/BRAMReadingMaster_MasterReadFromBram_0_0.v" \

vcom -work axi_bram_ctrl_v4_1_1 -64 -93 \
"../../../../BRAMReadingUsingMasterAXI.srcs/sources_1/bd/BRAMReadingMaster/ipshared/70bf/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/BRAMReadingMaster/ip/BRAMReadingMaster_axi_bram_ctrl_0_0/sim/BRAMReadingMaster_axi_bram_ctrl_0_0.vhd" \

vlog -work blk_mem_gen_v8_4_3 -64 -incr \
"../../../../BRAMReadingUsingMasterAXI.srcs/sources_1/bd/BRAMReadingMaster/ipshared/c001/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/BRAMReadingMaster/ip/BRAMReadingMaster_axi_bram_ctrl_0_bram_0/sim/BRAMReadingMaster_axi_bram_ctrl_0_bram_0.v" \
"../../../bd/BRAMReadingMaster/sim/BRAMReadingMaster.v" \

vlog -work xil_defaultlib \
"glbl.v"

