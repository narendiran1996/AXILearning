-makelib xcelium_lib/xil_defaultlib -sv \
  "/media/narendiran/ubuntu_install/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/media/narendiran/ubuntu_install/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/media/narendiran/ubuntu_install/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_bram_ctrl_v4_1_1 \
  "../../../../AXIProjectSources.srcs/sources_1/bd/SingleWriteBRAM/ipshared/70bf/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/SingleWriteBRAM/ip/SingleWriteBRAM_axi_bram_ctrl_0_0/sim/SingleWriteBRAM_axi_bram_ctrl_0_0.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_3 \
  "../../../../AXIProjectSources.srcs/sources_1/bd/SingleWriteBRAM/ipshared/c001/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/SingleWriteBRAM/ip/SingleWriteBRAM_blk_mem_gen_0_0/sim/SingleWriteBRAM_blk_mem_gen_0_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/SingleWriteBRAM/ip/SingleWriteBRAM_axi_bram_ctrl_0_1/sim/SingleWriteBRAM_axi_bram_ctrl_0_1.vhd" \
-endlib
-makelib xcelium_lib/xlconstant_v1_1_6 \
  "../../../../AXIProjectSources.srcs/sources_1/bd/SingleWriteBRAM/ipshared/66e7/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/SingleWriteBRAM/ip/SingleWriteBRAM_xlconstant_0_0/sim/SingleWriteBRAM_xlconstant_0_0.v" \
  "../../../bd/SingleWriteBRAM/sim/SingleWriteBRAM.v" \
  "../../../bd/SingleWriteBRAM/ip/SingleWriteBRAM_AXIMaster_Single_Read_0_0/sim/SingleWriteBRAM_AXIMaster_Single_Read_0_0.v" \
  "../../../bd/SingleWriteBRAM/ip/SingleWriteBRAM_AXIMaster_Single_Wri_0_0/sim/SingleWriteBRAM_AXIMaster_Single_Wri_0_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

