-makelib ies_lib/xil_defaultlib -sv \
  "/media/narendiran/ubuntu_install/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/media/narendiran/ubuntu_install/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "/media/narendiran/ubuntu_install/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/SlaveWriteTo3Reg/ip/SlaveWriteTo3Reg_AXISlave_WriteTo_0_0/sim/SlaveWriteTo3Reg_AXISlave_WriteTo_0_0.v" \
  "../../../bd/SlaveWriteTo3Reg/ip/SlaveWriteTo3Reg_AXIMaster_Single_Wri_0_0/sim/SlaveWriteTo3Reg_AXIMaster_Single_Wri_0_0.v" \
  "../../../bd/SlaveWriteTo3Reg/sim/SlaveWriteTo3Reg.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

