-makelib xcelium_lib/xil_defaultlib -sv \
  "/media/narendiran/ubuntu_install/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/media/narendiran/ubuntu_install/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/media/narendiran/ubuntu_install/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_3 \
  "../../../../BRAMWritingUsingMasterAXI.srcs/sources_1/bd/BlkBRAMWriteUsingMaster/ipshared/c001/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/BlkBRAMWriteUsingMaster/ip/BlkBRAMWriteUsingMaster_blk_mem_gen_0_0/sim/BlkBRAMWriteUsingMaster_blk_mem_gen_0_0.v" \
-endlib
-makelib xcelium_lib/axi_bram_ctrl_v4_1_1 \
  "../../../../BRAMWritingUsingMasterAXI.srcs/sources_1/bd/BlkBRAMWriteUsingMaster/ipshared/70bf/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/BlkBRAMWriteUsingMaster/ip/BlkBRAMWriteUsingMaster_axi_bram_ctrl_0_0/sim/BlkBRAMWriteUsingMaster_axi_bram_ctrl_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/BlkBRAMWriteUsingMaster/ip/BlkBRAMWriteUsingMaster_MasterWriteToBRAM_0_0/sim/BlkBRAMWriteUsingMaster_MasterWriteToBRAM_0_0.v" \
  "../../../bd/BlkBRAMWriteUsingMaster/ip/BlkBRAMWriteUsingMaster_MasterReadFromBram_0_0/sim/BlkBRAMWriteUsingMaster_MasterReadFromBram_0_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/BlkBRAMWriteUsingMaster/ip/BlkBRAMWriteUsingMaster_axi_bram_ctrl_1_0/sim/BlkBRAMWriteUsingMaster_axi_bram_ctrl_1_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/BlkBRAMWriteUsingMaster/sim/BlkBRAMWriteUsingMaster.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

