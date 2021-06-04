-makelib ies_lib/xil_defaultlib -sv \
  "/media/narendiran/ubuntu_install/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/media/narendiran/ubuntu_install/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "/media/narendiran/ubuntu_install/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/SlaveReadFrom3Reg/ip/SlaveReadFrom3Reg_AXISlave_ReadFrom_1_0/sim/SlaveReadFrom3Reg_AXISlave_ReadFrom_1_0.v" \
  "../../../bd/SlaveReadFrom3Reg/ip/SlaveReadFrom3Reg_AXIMaster_Single_Read_0_0/sim/SlaveReadFrom3Reg_AXIMaster_Single_Read_0_0.v" \
  "../../../bd/SlaveReadFrom3Reg/sim/SlaveReadFrom3Reg.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

