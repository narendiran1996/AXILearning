vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/blk_mem_gen_v8_4_3
vlib riviera/axi_bram_ctrl_v4_1_1

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap blk_mem_gen_v8_4_3 riviera/blk_mem_gen_v8_4_3
vmap axi_bram_ctrl_v4_1_1 riviera/axi_bram_ctrl_v4_1_1

vlog -work xil_defaultlib  -sv2k12 \
"/media/narendiran/ubuntu_install/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/media/narendiran/ubuntu_install/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/media/narendiran/ubuntu_install/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_4_3  -v2k5 \
"../../../../BRAMWritingUsingMasterAXI.srcs/sources_1/bd/BlkBRAMWriteUsingMaster/ipshared/c001/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/BlkBRAMWriteUsingMaster/ip/BlkBRAMWriteUsingMaster_blk_mem_gen_0_0/sim/BlkBRAMWriteUsingMaster_blk_mem_gen_0_0.v" \

vcom -work axi_bram_ctrl_v4_1_1 -93 \
"../../../../BRAMWritingUsingMasterAXI.srcs/sources_1/bd/BlkBRAMWriteUsingMaster/ipshared/70bf/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/BlkBRAMWriteUsingMaster/ip/BlkBRAMWriteUsingMaster_axi_bram_ctrl_0_0/sim/BlkBRAMWriteUsingMaster_axi_bram_ctrl_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/BlkBRAMWriteUsingMaster/ip/BlkBRAMWriteUsingMaster_MasterWriteToBRAM_0_0/sim/BlkBRAMWriteUsingMaster_MasterWriteToBRAM_0_0.v" \
"../../../bd/BlkBRAMWriteUsingMaster/ip/BlkBRAMWriteUsingMaster_MasterReadFromBram_0_0/sim/BlkBRAMWriteUsingMaster_MasterReadFromBram_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/BlkBRAMWriteUsingMaster/ip/BlkBRAMWriteUsingMaster_axi_bram_ctrl_1_0/sim/BlkBRAMWriteUsingMaster_axi_bram_ctrl_1_0.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/BlkBRAMWriteUsingMaster/sim/BlkBRAMWriteUsingMaster.v" \

vlog -work xil_defaultlib \
"glbl.v"

