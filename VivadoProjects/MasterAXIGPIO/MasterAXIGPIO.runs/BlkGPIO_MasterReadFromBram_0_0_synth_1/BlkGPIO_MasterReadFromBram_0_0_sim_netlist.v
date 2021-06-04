// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Fri Jun  4 09:30:43 2021
// Host        : narendiran-X556UQK running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ BlkGPIO_MasterReadFromBram_0_0_sim_netlist.v
// Design      : BlkGPIO_MasterReadFromBram_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "BlkGPIO_MasterReadFromBram_0_0,MasterReadFromBram,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "MasterReadFromBram,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (initializeOperation,
    readAddr,
    readValue,
    readValid,
    M_AXI_ACLK,
    M_AXI_ARESETn,
    M_AXI_AWADDR,
    M_AXI_AWPROT,
    M_AXI_AWVALID,
    M_AXI_AWREADY,
    M_AXI_WDATA,
    M_AXI_WSTRB,
    M_AXI_WVALID,
    M_AXI_WREADY,
    M_AXI_WLAST,
    M_AXI_BRESP,
    M_AXI_BVALID,
    M_AXI_BREADY,
    M_AXI_ARADDR,
    M_AXI_ARPROT,
    M_AXI_ARVALID,
    M_AXI_ARREADY,
    M_AXI_RDATA,
    M_AXI_RRESP,
    M_AXI_RVALID,
    M_AXI_RREADY,
    M_AXI_RLAST);
  input initializeOperation;
  input [31:0]readAddr;
  output [31:0]readValue;
  output readValid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M_AXI_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_ACLK, ASSOCIATED_BUSIF M_AXI, ASSOCIATED_RESET M_AXI_ARESETn, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input M_AXI_ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M_AXI_ARESETn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_ARESETn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input M_AXI_ARESETn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [31:0]M_AXI_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]M_AXI_AWPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output M_AXI_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input M_AXI_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [31:0]M_AXI_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [3:0]M_AXI_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output M_AXI_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input M_AXI_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WLAST" *) output M_AXI_WLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]M_AXI_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input M_AXI_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output M_AXI_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [31:0]M_AXI_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]M_AXI_ARPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output M_AXI_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input M_AXI_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [31:0]M_AXI_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]M_AXI_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input M_AXI_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) output M_AXI_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input M_AXI_RLAST;

  wire \<const0> ;
  wire \<const1> ;
  wire M_AXI_ACLK;
  wire M_AXI_ARESETn;
  wire M_AXI_ARREADY;
  wire M_AXI_ARVALID;
  wire [31:0]M_AXI_RDATA;
  wire M_AXI_RREADY;
  wire M_AXI_RVALID;
  wire initializeOperation;
  wire [31:0]readAddr;
  wire readValid;
  wire [31:0]readValue;

  assign M_AXI_ARADDR[31:2] = readAddr[29:0];
  assign M_AXI_ARADDR[1] = \<const0> ;
  assign M_AXI_ARADDR[0] = \<const0> ;
  assign M_AXI_ARPROT[2] = \<const0> ;
  assign M_AXI_ARPROT[1] = \<const0> ;
  assign M_AXI_ARPROT[0] = \<const1> ;
  assign M_AXI_AWADDR[31] = \<const0> ;
  assign M_AXI_AWADDR[30] = \<const0> ;
  assign M_AXI_AWADDR[29] = \<const0> ;
  assign M_AXI_AWADDR[28] = \<const0> ;
  assign M_AXI_AWADDR[27] = \<const0> ;
  assign M_AXI_AWADDR[26] = \<const0> ;
  assign M_AXI_AWADDR[25] = \<const0> ;
  assign M_AXI_AWADDR[24] = \<const0> ;
  assign M_AXI_AWADDR[23] = \<const0> ;
  assign M_AXI_AWADDR[22] = \<const0> ;
  assign M_AXI_AWADDR[21] = \<const0> ;
  assign M_AXI_AWADDR[20] = \<const0> ;
  assign M_AXI_AWADDR[19] = \<const0> ;
  assign M_AXI_AWADDR[18] = \<const0> ;
  assign M_AXI_AWADDR[17] = \<const0> ;
  assign M_AXI_AWADDR[16] = \<const0> ;
  assign M_AXI_AWADDR[15] = \<const0> ;
  assign M_AXI_AWADDR[14] = \<const0> ;
  assign M_AXI_AWADDR[13] = \<const0> ;
  assign M_AXI_AWADDR[12] = \<const0> ;
  assign M_AXI_AWADDR[11] = \<const0> ;
  assign M_AXI_AWADDR[10] = \<const0> ;
  assign M_AXI_AWADDR[9] = \<const0> ;
  assign M_AXI_AWADDR[8] = \<const0> ;
  assign M_AXI_AWADDR[7] = \<const0> ;
  assign M_AXI_AWADDR[6] = \<const0> ;
  assign M_AXI_AWADDR[5] = \<const0> ;
  assign M_AXI_AWADDR[4] = \<const0> ;
  assign M_AXI_AWADDR[3] = \<const0> ;
  assign M_AXI_AWADDR[2] = \<const0> ;
  assign M_AXI_AWADDR[1] = \<const0> ;
  assign M_AXI_AWADDR[0] = \<const0> ;
  assign M_AXI_AWPROT[2] = \<const0> ;
  assign M_AXI_AWPROT[1] = \<const0> ;
  assign M_AXI_AWPROT[0] = \<const0> ;
  assign M_AXI_AWVALID = \<const0> ;
  assign M_AXI_BREADY = \<const0> ;
  assign M_AXI_WDATA[31] = \<const0> ;
  assign M_AXI_WDATA[30] = \<const0> ;
  assign M_AXI_WDATA[29] = \<const0> ;
  assign M_AXI_WDATA[28] = \<const0> ;
  assign M_AXI_WDATA[27] = \<const0> ;
  assign M_AXI_WDATA[26] = \<const0> ;
  assign M_AXI_WDATA[25] = \<const0> ;
  assign M_AXI_WDATA[24] = \<const0> ;
  assign M_AXI_WDATA[23] = \<const0> ;
  assign M_AXI_WDATA[22] = \<const0> ;
  assign M_AXI_WDATA[21] = \<const0> ;
  assign M_AXI_WDATA[20] = \<const0> ;
  assign M_AXI_WDATA[19] = \<const0> ;
  assign M_AXI_WDATA[18] = \<const0> ;
  assign M_AXI_WDATA[17] = \<const0> ;
  assign M_AXI_WDATA[16] = \<const0> ;
  assign M_AXI_WDATA[15] = \<const0> ;
  assign M_AXI_WDATA[14] = \<const0> ;
  assign M_AXI_WDATA[13] = \<const0> ;
  assign M_AXI_WDATA[12] = \<const0> ;
  assign M_AXI_WDATA[11] = \<const0> ;
  assign M_AXI_WDATA[10] = \<const0> ;
  assign M_AXI_WDATA[9] = \<const0> ;
  assign M_AXI_WDATA[8] = \<const0> ;
  assign M_AXI_WDATA[7] = \<const0> ;
  assign M_AXI_WDATA[6] = \<const0> ;
  assign M_AXI_WDATA[5] = \<const0> ;
  assign M_AXI_WDATA[4] = \<const0> ;
  assign M_AXI_WDATA[3] = \<const0> ;
  assign M_AXI_WDATA[2] = \<const0> ;
  assign M_AXI_WDATA[1] = \<const0> ;
  assign M_AXI_WDATA[0] = \<const0> ;
  assign M_AXI_WSTRB[3] = \<const0> ;
  assign M_AXI_WSTRB[2] = \<const0> ;
  assign M_AXI_WSTRB[1] = \<const0> ;
  assign M_AXI_WSTRB[0] = \<const0> ;
  assign M_AXI_WVALID = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MasterReadFromBram inst
       (.M_AXI_ACLK(M_AXI_ACLK),
        .M_AXI_ARESETn(M_AXI_ARESETn),
        .M_AXI_ARREADY(M_AXI_ARREADY),
        .M_AXI_ARVALID(M_AXI_ARVALID),
        .M_AXI_RDATA(M_AXI_RDATA),
        .M_AXI_RREADY(M_AXI_RREADY),
        .M_AXI_RVALID(M_AXI_RVALID),
        .initializeOperation(initializeOperation),
        .readValid(readValid),
        .readValue(readValue));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MasterReadFromBram
   (M_AXI_RREADY,
    readValue,
    readValid,
    M_AXI_ARVALID,
    M_AXI_RVALID,
    M_AXI_ACLK,
    M_AXI_RDATA,
    initializeOperation,
    M_AXI_ARESETn,
    M_AXI_ARREADY);
  output M_AXI_RREADY;
  output [31:0]readValue;
  output readValid;
  output M_AXI_ARVALID;
  input M_AXI_RVALID;
  input M_AXI_ACLK;
  input [31:0]M_AXI_RDATA;
  input initializeOperation;
  input M_AXI_ARESETn;
  input M_AXI_ARREADY;

  wire M_AXI_ACLK;
  wire M_AXI_ARESETn;
  wire M_AXI_ARREADY;
  wire M_AXI_ARVALID;
  wire [31:0]M_AXI_RDATA;
  wire M_AXI_RREADY;
  wire M_AXI_RVALID;
  wire arvalid_i_1_n_0;
  wire initializeOperation;
  wire p_0_in;
  wire readValid;
  wire [31:0]readValue;
  wire readValue0;
  wire rready_i_1_n_0;
  wire temp1;
  wire temp2;

  LUT4 #(
    .INIT(16'h4F44)) 
    arvalid_i_1
       (.I0(temp2),
        .I1(temp1),
        .I2(M_AXI_ARREADY),
        .I3(M_AXI_ARVALID),
        .O(arvalid_i_1_n_0));
  FDRE arvalid_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(arvalid_i_1_n_0),
        .Q(M_AXI_ARVALID),
        .R(p_0_in));
  FDRE readValid_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(readValue0),
        .Q(readValid),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    \readValue[31]_i_1 
       (.I0(M_AXI_ARESETn),
        .O(p_0_in));
  LUT2 #(
    .INIT(4'h8)) 
    \readValue[31]_i_2 
       (.I0(M_AXI_RVALID),
        .I1(M_AXI_RREADY),
        .O(readValue0));
  FDRE \readValue_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(readValue0),
        .D(M_AXI_RDATA[0]),
        .Q(readValue[0]),
        .R(p_0_in));
  FDRE \readValue_reg[10] 
       (.C(M_AXI_ACLK),
        .CE(readValue0),
        .D(M_AXI_RDATA[10]),
        .Q(readValue[10]),
        .R(p_0_in));
  FDRE \readValue_reg[11] 
       (.C(M_AXI_ACLK),
        .CE(readValue0),
        .D(M_AXI_RDATA[11]),
        .Q(readValue[11]),
        .R(p_0_in));
  FDRE \readValue_reg[12] 
       (.C(M_AXI_ACLK),
        .CE(readValue0),
        .D(M_AXI_RDATA[12]),
        .Q(readValue[12]),
        .R(p_0_in));
  FDRE \readValue_reg[13] 
       (.C(M_AXI_ACLK),
        .CE(readValue0),
        .D(M_AXI_RDATA[13]),
        .Q(readValue[13]),
        .R(p_0_in));
  FDRE \readValue_reg[14] 
       (.C(M_AXI_ACLK),
        .CE(readValue0),
        .D(M_AXI_RDATA[14]),
        .Q(readValue[14]),
        .R(p_0_in));
  FDRE \readValue_reg[15] 
       (.C(M_AXI_ACLK),
        .CE(readValue0),
        .D(M_AXI_RDATA[15]),
        .Q(readValue[15]),
        .R(p_0_in));
  FDRE \readValue_reg[16] 
       (.C(M_AXI_ACLK),
        .CE(readValue0),
        .D(M_AXI_RDATA[16]),
        .Q(readValue[16]),
        .R(p_0_in));
  FDRE \readValue_reg[17] 
       (.C(M_AXI_ACLK),
        .CE(readValue0),
        .D(M_AXI_RDATA[17]),
        .Q(readValue[17]),
        .R(p_0_in));
  FDRE \readValue_reg[18] 
       (.C(M_AXI_ACLK),
        .CE(readValue0),
        .D(M_AXI_RDATA[18]),
        .Q(readValue[18]),
        .R(p_0_in));
  FDRE \readValue_reg[19] 
       (.C(M_AXI_ACLK),
        .CE(readValue0),
        .D(M_AXI_RDATA[19]),
        .Q(readValue[19]),
        .R(p_0_in));
  FDRE \readValue_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(readValue0),
        .D(M_AXI_RDATA[1]),
        .Q(readValue[1]),
        .R(p_0_in));
  FDRE \readValue_reg[20] 
       (.C(M_AXI_ACLK),
        .CE(readValue0),
        .D(M_AXI_RDATA[20]),
        .Q(readValue[20]),
        .R(p_0_in));
  FDRE \readValue_reg[21] 
       (.C(M_AXI_ACLK),
        .CE(readValue0),
        .D(M_AXI_RDATA[21]),
        .Q(readValue[21]),
        .R(p_0_in));
  FDRE \readValue_reg[22] 
       (.C(M_AXI_ACLK),
        .CE(readValue0),
        .D(M_AXI_RDATA[22]),
        .Q(readValue[22]),
        .R(p_0_in));
  FDRE \readValue_reg[23] 
       (.C(M_AXI_ACLK),
        .CE(readValue0),
        .D(M_AXI_RDATA[23]),
        .Q(readValue[23]),
        .R(p_0_in));
  FDRE \readValue_reg[24] 
       (.C(M_AXI_ACLK),
        .CE(readValue0),
        .D(M_AXI_RDATA[24]),
        .Q(readValue[24]),
        .R(p_0_in));
  FDRE \readValue_reg[25] 
       (.C(M_AXI_ACLK),
        .CE(readValue0),
        .D(M_AXI_RDATA[25]),
        .Q(readValue[25]),
        .R(p_0_in));
  FDRE \readValue_reg[26] 
       (.C(M_AXI_ACLK),
        .CE(readValue0),
        .D(M_AXI_RDATA[26]),
        .Q(readValue[26]),
        .R(p_0_in));
  FDRE \readValue_reg[27] 
       (.C(M_AXI_ACLK),
        .CE(readValue0),
        .D(M_AXI_RDATA[27]),
        .Q(readValue[27]),
        .R(p_0_in));
  FDRE \readValue_reg[28] 
       (.C(M_AXI_ACLK),
        .CE(readValue0),
        .D(M_AXI_RDATA[28]),
        .Q(readValue[28]),
        .R(p_0_in));
  FDRE \readValue_reg[29] 
       (.C(M_AXI_ACLK),
        .CE(readValue0),
        .D(M_AXI_RDATA[29]),
        .Q(readValue[29]),
        .R(p_0_in));
  FDRE \readValue_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(readValue0),
        .D(M_AXI_RDATA[2]),
        .Q(readValue[2]),
        .R(p_0_in));
  FDRE \readValue_reg[30] 
       (.C(M_AXI_ACLK),
        .CE(readValue0),
        .D(M_AXI_RDATA[30]),
        .Q(readValue[30]),
        .R(p_0_in));
  FDRE \readValue_reg[31] 
       (.C(M_AXI_ACLK),
        .CE(readValue0),
        .D(M_AXI_RDATA[31]),
        .Q(readValue[31]),
        .R(p_0_in));
  FDRE \readValue_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(readValue0),
        .D(M_AXI_RDATA[3]),
        .Q(readValue[3]),
        .R(p_0_in));
  FDRE \readValue_reg[4] 
       (.C(M_AXI_ACLK),
        .CE(readValue0),
        .D(M_AXI_RDATA[4]),
        .Q(readValue[4]),
        .R(p_0_in));
  FDRE \readValue_reg[5] 
       (.C(M_AXI_ACLK),
        .CE(readValue0),
        .D(M_AXI_RDATA[5]),
        .Q(readValue[5]),
        .R(p_0_in));
  FDRE \readValue_reg[6] 
       (.C(M_AXI_ACLK),
        .CE(readValue0),
        .D(M_AXI_RDATA[6]),
        .Q(readValue[6]),
        .R(p_0_in));
  FDRE \readValue_reg[7] 
       (.C(M_AXI_ACLK),
        .CE(readValue0),
        .D(M_AXI_RDATA[7]),
        .Q(readValue[7]),
        .R(p_0_in));
  FDRE \readValue_reg[8] 
       (.C(M_AXI_ACLK),
        .CE(readValue0),
        .D(M_AXI_RDATA[8]),
        .Q(readValue[8]),
        .R(p_0_in));
  FDRE \readValue_reg[9] 
       (.C(M_AXI_ACLK),
        .CE(readValue0),
        .D(M_AXI_RDATA[9]),
        .Q(readValue[9]),
        .R(p_0_in));
  LUT2 #(
    .INIT(4'h4)) 
    rready_i_1
       (.I0(M_AXI_RREADY),
        .I1(M_AXI_RVALID),
        .O(rready_i_1_n_0));
  FDRE rready_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(rready_i_1_n_0),
        .Q(M_AXI_RREADY),
        .R(p_0_in));
  FDRE temp1_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(initializeOperation),
        .Q(temp1),
        .R(p_0_in));
  FDRE temp2_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(temp1),
        .Q(temp2),
        .R(p_0_in));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
