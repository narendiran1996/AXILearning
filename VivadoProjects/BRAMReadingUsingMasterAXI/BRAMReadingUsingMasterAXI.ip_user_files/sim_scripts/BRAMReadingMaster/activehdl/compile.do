vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/axi_bram_ctrl_v4_1_1
vlib activehdl/blk_mem_gen_v8_4_3

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap axi_bram_ctrl_v4_1_1 activehdl/axi_bram_ctrl_v4_1_1
vmap blk_mem_gen_v8_4_3 activehdl/blk_mem_gen_v8_4_3

vlog -work xil_defaultlib  -sv2k12 \
"/media/narendiran/ubuntu_install/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/media/narendiran/ubuntu_install/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/media/narendiran/ubuntu_install/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/BRAMReadingMaster/ip/BRAMReadingMaster_MasterReadFromBram_0_0/sim/BRAMReadingMaster_MasterReadFromBram_0_0.v" \

vcom -work axi_bram_ctrl_v4_1_1 -93 \
"../../../../BRAMReadingUsingMasterAXI.srcs/sources_1/bd/BRAMReadingMaster/ipshared/70bf/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/BRAMReadingMaster/ip/BRAMReadingMaster_axi_bram_ctrl_0_0/sim/BRAMReadingMaster_axi_bram_ctrl_0_0.vhd" \

vlog -work blk_mem_gen_v8_4_3  -v2k5 \
"../../../../BRAMReadingUsingMasterAXI.srcs/sources_1/bd/BRAMReadingMaster/ipshared/c001/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/BRAMReadingMaster/ip/BRAMReadingMaster_axi_bram_ctrl_0_bram_0/sim/BRAMReadingMaster_axi_bram_ctrl_0_bram_0.v" \
"../../../bd/BRAMReadingMaster/sim/BRAMReadingMaster.v" \

vlog -work xil_defaultlib \
"glbl.v"

