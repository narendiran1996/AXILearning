
################################################################
# This is a generated script based on design: BlkBRAMWriteUsingMaster
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2019.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source BlkBRAMWriteUsingMaster_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# MasterReadFromBram, MasterWriteToBRAM

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z010clg400-1
   set_property BOARD_PART digilentinc.com:zybo:part0:2.0 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name BlkBRAMWriteUsingMaster

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set clkIn [ create_bd_port -dir I clkIn ]
  set initializeOperation_0 [ create_bd_port -dir I initializeOperation_0 ]
  set initializeOperation_1 [ create_bd_port -dir I initializeOperation_1 ]
  set readAddr_0 [ create_bd_port -dir I -from 31 -to 0 readAddr_0 ]
  set readValid_0 [ create_bd_port -dir O readValid_0 ]
  set readValue_0 [ create_bd_port -dir O -from 31 -to 0 readValue_0 ]
  set resetN [ create_bd_port -dir I resetN ]
  set writeAddr_0 [ create_bd_port -dir I -from 31 -to 0 writeAddr_0 ]
  set writeData_0 [ create_bd_port -dir I -from 31 -to 0 writeData_0 ]
  set writeDone_0 [ create_bd_port -dir O writeDone_0 ]

  # Create instance: MasterReadFromBram_0, and set properties
  set block_name MasterReadFromBram
  set block_cell_name MasterReadFromBram_0
  if { [catch {set MasterReadFromBram_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $MasterReadFromBram_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: MasterWriteToBRAM_0, and set properties
  set block_name MasterWriteToBRAM
  set block_cell_name MasterWriteToBRAM_0
  if { [catch {set MasterWriteToBRAM_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $MasterWriteToBRAM_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: axi_bram_ctrl_0, and set properties
  set axi_bram_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 axi_bram_ctrl_0 ]
  set_property -dict [ list \
   CONFIG.ECC_TYPE {0} \
   CONFIG.PROTOCOL {AXI4LITE} \
   CONFIG.SINGLE_PORT_BRAM {1} \
 ] $axi_bram_ctrl_0

  # Create instance: axi_bram_ctrl_1, and set properties
  set axi_bram_ctrl_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 axi_bram_ctrl_1 ]
  set_property -dict [ list \
   CONFIG.ECC_TYPE {0} \
   CONFIG.PROTOCOL {AXI4LITE} \
   CONFIG.SINGLE_PORT_BRAM {1} \
 ] $axi_bram_ctrl_1

  # Create instance: axi_mem_intercon, and set properties
  set axi_mem_intercon [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_mem_intercon ]
  set_property -dict [ list \
   CONFIG.NUM_MI {1} \
 ] $axi_mem_intercon

  # Create instance: axi_mem_intercon_1, and set properties
  set axi_mem_intercon_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_mem_intercon_1 ]
  set_property -dict [ list \
   CONFIG.NUM_MI {1} \
 ] $axi_mem_intercon_1

  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_0 ]
  set_property -dict [ list \
   CONFIG.Enable_B {Use_ENB_Pin} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Use_RSTB_Pin {true} \
 ] $blk_mem_gen_0

  # Create interface connections
  connect_bd_intf_net -intf_net MasterReadFromBram_0_M_AXI [get_bd_intf_pins MasterReadFromBram_0/M_AXI] [get_bd_intf_pins axi_mem_intercon_1/S00_AXI]
  connect_bd_intf_net -intf_net MasterWriteToBRAM_0_M_AXI [get_bd_intf_pins MasterWriteToBRAM_0/M_AXI] [get_bd_intf_pins axi_mem_intercon/S00_AXI]
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTA [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA] [get_bd_intf_pins blk_mem_gen_0/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_bram_ctrl_1_BRAM_PORTA [get_bd_intf_pins axi_bram_ctrl_1/BRAM_PORTA] [get_bd_intf_pins blk_mem_gen_0/BRAM_PORTB]
  connect_bd_intf_net -intf_net axi_mem_intercon_1_M00_AXI [get_bd_intf_pins axi_bram_ctrl_1/S_AXI] [get_bd_intf_pins axi_mem_intercon_1/M00_AXI]
  connect_bd_intf_net -intf_net axi_mem_intercon_M00_AXI [get_bd_intf_pins axi_bram_ctrl_0/S_AXI] [get_bd_intf_pins axi_mem_intercon/M00_AXI]

  # Create port connections
  connect_bd_net -net MasterReadFromBram_0_readValid [get_bd_ports readValid_0] [get_bd_pins MasterReadFromBram_0/readValid]
  connect_bd_net -net MasterReadFromBram_0_readValue [get_bd_ports readValue_0] [get_bd_pins MasterReadFromBram_0/readValue]
  connect_bd_net -net MasterWriteToBRAM_0_writeDone [get_bd_ports writeDone_0] [get_bd_pins MasterWriteToBRAM_0/writeDone]
  connect_bd_net -net S00_ACLK_1 [get_bd_ports clkIn] [get_bd_pins MasterReadFromBram_0/M_AXI_ACLK] [get_bd_pins MasterWriteToBRAM_0/M_AXI_ACLK] [get_bd_pins axi_bram_ctrl_0/s_axi_aclk] [get_bd_pins axi_bram_ctrl_1/s_axi_aclk] [get_bd_pins axi_mem_intercon/ACLK] [get_bd_pins axi_mem_intercon/M00_ACLK] [get_bd_pins axi_mem_intercon/S00_ACLK] [get_bd_pins axi_mem_intercon_1/ACLK] [get_bd_pins axi_mem_intercon_1/M00_ACLK] [get_bd_pins axi_mem_intercon_1/S00_ACLK]
  connect_bd_net -net S00_ARESETN_1 [get_bd_ports resetN] [get_bd_pins MasterReadFromBram_0/M_AXI_ARESETn] [get_bd_pins MasterWriteToBRAM_0/M_AXI_ARESETn] [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn] [get_bd_pins axi_bram_ctrl_1/s_axi_aresetn] [get_bd_pins axi_mem_intercon/ARESETN] [get_bd_pins axi_mem_intercon/M00_ARESETN] [get_bd_pins axi_mem_intercon/S00_ARESETN] [get_bd_pins axi_mem_intercon_1/ARESETN] [get_bd_pins axi_mem_intercon_1/M00_ARESETN] [get_bd_pins axi_mem_intercon_1/S00_ARESETN]
  connect_bd_net -net initializeOperation_0_1 [get_bd_ports initializeOperation_0] [get_bd_pins MasterWriteToBRAM_0/initializeOperation]
  connect_bd_net -net initializeOperation_1_1 [get_bd_ports initializeOperation_1] [get_bd_pins MasterReadFromBram_0/initializeOperation]
  connect_bd_net -net readAddr_0_1 [get_bd_ports readAddr_0] [get_bd_pins MasterReadFromBram_0/readAddr]
  connect_bd_net -net writeAddr_0_1 [get_bd_ports writeAddr_0] [get_bd_pins MasterWriteToBRAM_0/writeAddr]
  connect_bd_net -net writeData_0_1 [get_bd_ports writeData_0] [get_bd_pins MasterWriteToBRAM_0/writeData]

  # Create address segments
  create_bd_addr_seg -range 0x00002000 -offset 0xC0000000 [get_bd_addr_spaces MasterReadFromBram_0/M_AXI] [get_bd_addr_segs axi_bram_ctrl_1/S_AXI/Mem0] SEG_axi_bram_ctrl_1_Mem0
  create_bd_addr_seg -range 0x00002000 -offset 0xC0000000 [get_bd_addr_spaces MasterWriteToBRAM_0/M_AXI] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


