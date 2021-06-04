-makelib xcelium_lib/xil_defaultlib -sv \
  "/media/narendiran/ubuntu_install/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/media/narendiran/ubuntu_install/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/media/narendiran/ubuntu_install/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_bram_ctrl_v4_1_1 \
  "../../../../AXIProjectSources.srcs/sources_1/bd/SingleReadBRAM/ipshared/70bf/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/SingleReadBRAM/ip/SingleReadBRAM_axi_bram_ctrl_0_0/sim/SingleReadBRAM_axi_bram_ctrl_0_0.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_3 \
  "../../../../AXIProjectSources.srcs/sources_1/bd/SingleReadBRAM/ipshared/c001/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/SingleReadBRAM/ip/SingleReadBRAM_blk_mem_gen_0_0/sim/SingleReadBRAM_blk_mem_gen_0_0.v" \
  "../../../bd/SingleReadBRAM/sim/SingleReadBRAM.v" \
  "../../../bd/SingleReadBRAM/ip/SingleReadBRAM_AXIMaster_Single_Read_0_0/sim/SingleReadBRAM_AXIMaster_Single_Read_0_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

