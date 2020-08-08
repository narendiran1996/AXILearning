
################################################################
# This is a generated script based on design: SlaveReadFrom3Reg
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
# source SlaveReadFrom3Reg_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# AXIMaster_Single_Read, AXISlave_ReadFrom

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
set design_name SlaveReadFrom3Reg

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
  set initRead [ create_bd_port -dir I initRead ]
  set readAddress [ create_bd_port -dir I -from 31 -to 0 readAddress ]
  set readOutput [ create_bd_port -dir O -from 31 -to 0 readOutput ]
  set resetIn [ create_bd_port -dir I resetIn ]

  # Create instance: AXIMaster_Single_Read_0, and set properties
  set block_name AXIMaster_Single_Read
  set block_cell_name AXIMaster_Single_Read_0
  if { [catch {set AXIMaster_Single_Read_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $AXIMaster_Single_Read_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: AXIMaster_Single_Read_0_axi_periph, and set properties
  set AXIMaster_Single_Read_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 AXIMaster_Single_Read_0_axi_periph ]
  set_property -dict [ list \
   CONFIG.NUM_MI {1} \
 ] $AXIMaster_Single_Read_0_axi_periph

  # Create instance: AXISlave_ReadFrom_1, and set properties
  set block_name AXISlave_ReadFrom
  set block_cell_name AXISlave_ReadFrom_1
  if { [catch {set AXISlave_ReadFrom_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $AXISlave_ReadFrom_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create interface connections
  connect_bd_intf_net -intf_net AXIMaster_Single_Read_0_M_AXI [get_bd_intf_pins AXIMaster_Single_Read_0/M_AXI] [get_bd_intf_pins AXIMaster_Single_Read_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net AXIMaster_Single_Read_0_axi_periph_M00_AXI [get_bd_intf_pins AXIMaster_Single_Read_0_axi_periph/M00_AXI] [get_bd_intf_pins AXISlave_ReadFrom_1/S_AXI]

  # Create port connections
  connect_bd_net -net AXIMaster_Single_Read_0_readOutput [get_bd_ports readOutput] [get_bd_pins AXIMaster_Single_Read_0/readOutput]
  connect_bd_net -net clk_wiz_clk_out1 [get_bd_ports clkIn] [get_bd_pins AXIMaster_Single_Read_0/M_AXI_ACLK] [get_bd_pins AXIMaster_Single_Read_0_axi_periph/ACLK] [get_bd_pins AXIMaster_Single_Read_0_axi_periph/M00_ACLK] [get_bd_pins AXIMaster_Single_Read_0_axi_periph/S00_ACLK] [get_bd_pins AXISlave_ReadFrom_1/S_AXI_ACLK]
  connect_bd_net -net initRead_1 [get_bd_ports initRead] [get_bd_pins AXIMaster_Single_Read_0/initRead]
  connect_bd_net -net readAddress_1 [get_bd_ports readAddress] [get_bd_pins AXIMaster_Single_Read_0/readAddress]
  connect_bd_net -net rst_clk_wiz_100M_peripheral_aresetn [get_bd_ports resetIn] [get_bd_pins AXIMaster_Single_Read_0/M_AXI_ARESETN] [get_bd_pins AXIMaster_Single_Read_0_axi_periph/ARESETN] [get_bd_pins AXIMaster_Single_Read_0_axi_periph/M00_ARESETN] [get_bd_pins AXIMaster_Single_Read_0_axi_periph/S00_ARESETN] [get_bd_pins AXISlave_ReadFrom_1/S_AXI_ARESETN]

  # Create address segments
  create_bd_addr_seg -range 0x000100000000 -offset 0x00000000 [get_bd_addr_spaces AXIMaster_Single_Read_0/M_AXI] [get_bd_addr_segs AXISlave_ReadFrom_1/S_AXI/reg0] SEG_AXISlave_ReadFrom_1_reg0


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


