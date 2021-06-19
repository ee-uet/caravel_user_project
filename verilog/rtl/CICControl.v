// SPDX-FileCopyrightText: 2021 EE, UET Lahore
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// SPDX-License-Identifier: Apache-2.0
// SPDX-FileContributor: Created by Tayyeb Mahmood <tayyeb@uet.edu.pk>
// Genereted with Chisel HDL
module CICControl(
  input         clock,
  input         reset,
  input         io_cs_i,
  output        io_ack_o,
  input         io_we_i,
  input  [11:0] io_adr_i,
  input  [31:0] io_dat_i,
  output [31:0] io_dat_o,
  input  [7:0]  io_dsi_in,
  input  [63:0] io_dataLastBlock,
  output        io_dsi_o,
  output        io_b_cs_i_0,
  output        io_b_cs_i_1,
  output        io_b_cs_i_2,
  output        io_b_cs_i_3,
  output        io_b_cs_i_4,
  output        io_b_cs_i_5,
  output        io_b_cs_i_6,
  output        io_b_cs_i_7,
  output        io_b_cs_i_8,
  output        io_b_cs_i_9,
  output        io_b_cs_i_10,
  output        io_b_we_i,
  output [1:0]  io_b_adr_i,
  output [15:0] io_b_dat_i,
  input  [15:0] io_b_dat_o_0,
  input  [15:0] io_b_dat_o_1,
  input  [15:0] io_b_dat_o_2,
  input  [15:0] io_b_dat_o_3,
  input  [15:0] io_b_dat_o_4,
  input  [15:0] io_b_dat_o_5,
  input  [15:0] io_b_dat_o_6,
  input  [15:0] io_b_dat_o_7,
  input  [15:0] io_b_dat_o_8,
  input  [15:0] io_b_dat_o_9,
  input  [15:0] io_b_dat_o_10,
  output [10:0] io_vout,
  output        io_irq,
  output        io_sync_out
);
  reg [7:0] sconfig_mem_c [0:15]; // @[CICControl.scala 82:24]
  reg [31:0] _RAND_0;
  wire [7:0] sconfig_mem_c__T_105_data; // @[CICControl.scala 82:24]
  wire [3:0] sconfig_mem_c__T_105_addr; // @[CICControl.scala 82:24]
  wire [7:0] sconfig_mem_c_configReg_data; // @[CICControl.scala 82:24]
  wire [3:0] sconfig_mem_c_configReg_addr; // @[CICControl.scala 82:24]
  wire [7:0] sconfig_mem_c__T_125_data; // @[CICControl.scala 82:24]
  wire [3:0] sconfig_mem_c__T_125_addr; // @[CICControl.scala 82:24]
  wire  sconfig_mem_c__T_125_mask; // @[CICControl.scala 82:24]
  wire  sconfig_mem_c__T_125_en; // @[CICControl.scala 82:24]
  reg [3:0] sconfig_mem_a [0:15]; // @[CICControl.scala 82:24]
  reg [31:0] _RAND_1;
  wire [3:0] sconfig_mem_a__T_105_data; // @[CICControl.scala 82:24]
  wire [3:0] sconfig_mem_a__T_105_addr; // @[CICControl.scala 82:24]
  wire [3:0] sconfig_mem_a_configReg_data; // @[CICControl.scala 82:24]
  wire [3:0] sconfig_mem_a_configReg_addr; // @[CICControl.scala 82:24]
  wire [3:0] sconfig_mem_a__T_125_data; // @[CICControl.scala 82:24]
  wire [3:0] sconfig_mem_a__T_125_addr; // @[CICControl.scala 82:24]
  wire  sconfig_mem_a__T_125_mask; // @[CICControl.scala 82:24]
  wire  sconfig_mem_a__T_125_en; // @[CICControl.scala 82:24]
  reg [15:0] vconfig_mem [0:15]; // @[CICControl.scala 83:24]
  reg [31:0] _RAND_2;
  wire [15:0] vconfig_mem__T_100_data; // @[CICControl.scala 83:24]
  wire [3:0] vconfig_mem__T_100_addr; // @[CICControl.scala 83:24]
  wire [15:0] vconfig_mem__T_136_data; // @[CICControl.scala 83:24]
  wire [3:0] vconfig_mem__T_136_addr; // @[CICControl.scala 83:24]
  wire [15:0] vconfig_mem__T_118_data; // @[CICControl.scala 83:24]
  wire [3:0] vconfig_mem__T_118_addr; // @[CICControl.scala 83:24]
  wire  vconfig_mem__T_118_mask; // @[CICControl.scala 83:24]
  wire  vconfig_mem__T_118_en; // @[CICControl.scala 83:24]
  wire  blk_con_sel; // @[CICControl.scala 62:37]
  wire  vconfig_sel; // @[CICControl.scala 63:37]
  wire  sconfig_sel; // @[CICControl.scala 64:37]
  wire  block_sel; // @[CICControl.scala 66:37]
  wire  _T_5; // @[CICControl.scala 70:31]
  wire  _T_7; // @[CICControl.scala 70:58]
  wire  _T_11; // @[CICControl.scala 70:58]
  wire  _T_15; // @[CICControl.scala 70:58]
  wire  _T_19; // @[CICControl.scala 70:58]
  wire  _T_23; // @[CICControl.scala 70:58]
  wire  _T_27; // @[CICControl.scala 70:58]
  wire  _T_31; // @[CICControl.scala 70:58]
  wire  _T_35; // @[CICControl.scala 70:58]
  wire  _T_39; // @[CICControl.scala 70:58]
  wire  _T_43; // @[CICControl.scala 70:58]
  wire  _T_47; // @[CICControl.scala 70:58]
  wire [15:0] _T_64; // @[CICControl.scala 51:26]
  wire [15:0] _T_67; // @[CICControl.scala 51:26]
  wire [15:0] _T_69; // @[CICControl.scala 58:8]
  wire [15:0] _T_71; // @[CICControl.scala 58:8]
  wire [15:0] _T_76; // @[CICControl.scala 51:26]
  wire [15:0] _T_79; // @[CICControl.scala 51:26]
  wire [15:0] _T_81; // @[CICControl.scala 58:8]
  wire [15:0] _T_85; // @[CICControl.scala 51:26]
  wire [15:0] _T_88; // @[CICControl.scala 51:26]
  wire [15:0] _T_90; // @[CICControl.scala 58:8]
  wire [15:0] _T_92; // @[CICControl.scala 58:8]
  wire [15:0] dataBlock; // @[CICControl.scala 58:8]
  reg [2:0] conReg_dsiSel; // @[CICControl.scala 81:23]
  reg [31:0] _RAND_3;
  reg [3:0] conReg_end; // @[CICControl.scala 81:23]
  reg [31:0] _RAND_4;
  reg  conReg_run; // @[CICControl.scala 81:23]
  reg [31:0] _RAND_5;
  wire [7:0] _T_102; // @[CICControl.scala 87:86]
  wire [15:0] muxA; // @[CICControl.scala 87:17]
  wire [11:0] _T_106; // @[CICControl.scala 88:80]
  reg [31:0] _T_110; // @[CICControl.scala 92:22]
  reg [31:0] _RAND_6;
  wire  _T_111; // @[CICControl.scala 95:16]
  reg  stDel1; // @[CICControl.scala 110:23]
  reg [31:0] _RAND_7;
  reg  stDel2; // @[CICControl.scala 111:23]
  reg [31:0] _RAND_8;
  wire  _T_126; // @[CICControl.scala 112:15]
  reg [3:0] sadrReg; // @[Reg.scala 27:20]
  reg [31:0] _RAND_9;
  wire  _T_128; // @[CICControl.scala 127:39]
  reg [7:0] vcntReg; // @[CICControl.scala 125:24]
  reg [31:0] _RAND_10;
  wire  _T_129; // @[CICControl.scala 127:63]
  wire  _T_130; // @[CICControl.scala 127:52]
  wire  sadrEn; // @[CICControl.scala 127:24]
  wire  _T_132; // @[CICControl.scala 129:27]
  wire [3:0] _T_134; // @[CICControl.scala 129:61]
  reg [15:0] vReg; // @[Reg.scala 27:20]
  reg [31:0] _RAND_11;
  wire  _T_137; // @[CICControl.scala 135:16]
  wire [7:0] _T_139; // @[CICControl.scala 136:24]
  wire [7:0] _T_140; // @[OneHot.scala 58:35]
  wire [7:0] _T_141; // @[CICControl.scala 139:26]
  assign sconfig_mem_c__T_105_addr = io_adr_i[5:2];
  assign sconfig_mem_c__T_105_data = sconfig_mem_c[sconfig_mem_c__T_105_addr]; // @[CICControl.scala 82:24]
  assign sconfig_mem_c_configReg_addr = sadrReg;
  assign sconfig_mem_c_configReg_data = sconfig_mem_c[sconfig_mem_c_configReg_addr]; // @[CICControl.scala 82:24]
  assign sconfig_mem_c__T_125_data = io_dat_i[11:4];
  assign sconfig_mem_c__T_125_addr = io_adr_i[5:2];
  assign sconfig_mem_c__T_125_mask = 1'h1;
  assign sconfig_mem_c__T_125_en = _T_111 & sconfig_sel;
  assign sconfig_mem_a__T_105_addr = io_adr_i[5:2];
  assign sconfig_mem_a__T_105_data = sconfig_mem_a[sconfig_mem_a__T_105_addr]; // @[CICControl.scala 82:24]
  assign sconfig_mem_a_configReg_addr = sadrReg;
  assign sconfig_mem_a_configReg_data = sconfig_mem_a[sconfig_mem_a_configReg_addr]; // @[CICControl.scala 82:24]
  assign sconfig_mem_a__T_125_data = io_dat_i[3:0];
  assign sconfig_mem_a__T_125_addr = io_adr_i[5:2];
  assign sconfig_mem_a__T_125_mask = 1'h1;
  assign sconfig_mem_a__T_125_en = _T_111 & sconfig_sel;
  assign vconfig_mem__T_100_addr = io_adr_i[5:2];
  assign vconfig_mem__T_100_data = vconfig_mem[vconfig_mem__T_100_addr]; // @[CICControl.scala 83:24]
  assign vconfig_mem__T_136_addr = sconfig_mem_a_configReg_data;
  assign vconfig_mem__T_136_data = vconfig_mem[vconfig_mem__T_136_addr]; // @[CICControl.scala 83:24]
  assign vconfig_mem__T_118_data = io_dat_i[15:0];
  assign vconfig_mem__T_118_addr = io_adr_i[5:2];
  assign vconfig_mem__T_118_mask = 1'h1;
  assign vconfig_mem__T_118_en = _T_111 & vconfig_sel;
  assign blk_con_sel = io_adr_i[11:8] == 4'h0; // @[CICControl.scala 62:37]
  assign vconfig_sel = io_adr_i[11:8] == 4'h1; // @[CICControl.scala 63:37]
  assign sconfig_sel = io_adr_i[11:8] == 4'h2; // @[CICControl.scala 64:37]
  assign block_sel = io_adr_i[11:10] == 2'h1; // @[CICControl.scala 66:37]
  assign _T_5 = block_sel & io_cs_i; // @[CICControl.scala 70:31]
  assign _T_7 = io_adr_i[5:2] == 4'h0; // @[CICControl.scala 70:58]
  assign _T_11 = io_adr_i[5:2] == 4'h1; // @[CICControl.scala 70:58]
  assign _T_15 = io_adr_i[5:2] == 4'h2; // @[CICControl.scala 70:58]
  assign _T_19 = io_adr_i[5:2] == 4'h3; // @[CICControl.scala 70:58]
  assign _T_23 = io_adr_i[5:2] == 4'h4; // @[CICControl.scala 70:58]
  assign _T_27 = io_adr_i[5:2] == 4'h5; // @[CICControl.scala 70:58]
  assign _T_31 = io_adr_i[5:2] == 4'h6; // @[CICControl.scala 70:58]
  assign _T_35 = io_adr_i[5:2] == 4'h7; // @[CICControl.scala 70:58]
  assign _T_39 = io_adr_i[5:2] == 4'h8; // @[CICControl.scala 70:58]
  assign _T_43 = io_adr_i[5:2] == 4'h9; // @[CICControl.scala 70:58]
  assign _T_47 = io_adr_i[5:2] == 4'ha; // @[CICControl.scala 70:58]
  assign _T_64 = io_adr_i[2] ? 16'h0 : io_b_dat_o_10; // @[CICControl.scala 51:26]
  assign _T_67 = io_adr_i[2] ? io_b_dat_o_9 : io_b_dat_o_8; // @[CICControl.scala 51:26]
  assign _T_69 = io_adr_i[3] ? _T_64 : _T_67; // @[CICControl.scala 58:8]
  assign _T_71 = io_adr_i[4] ? 16'h0 : _T_69; // @[CICControl.scala 58:8]
  assign _T_76 = io_adr_i[2] ? io_b_dat_o_7 : io_b_dat_o_6; // @[CICControl.scala 51:26]
  assign _T_79 = io_adr_i[2] ? io_b_dat_o_5 : io_b_dat_o_4; // @[CICControl.scala 51:26]
  assign _T_81 = io_adr_i[3] ? _T_76 : _T_79; // @[CICControl.scala 58:8]
  assign _T_85 = io_adr_i[2] ? io_b_dat_o_3 : io_b_dat_o_2; // @[CICControl.scala 51:26]
  assign _T_88 = io_adr_i[2] ? io_b_dat_o_1 : io_b_dat_o_0; // @[CICControl.scala 51:26]
  assign _T_90 = io_adr_i[3] ? _T_85 : _T_88; // @[CICControl.scala 58:8]
  assign _T_92 = io_adr_i[4] ? _T_81 : _T_90; // @[CICControl.scala 58:8]
  assign dataBlock = io_adr_i[5] ? _T_71 : _T_92; // @[CICControl.scala 58:8]
  assign _T_102 = {conReg_dsiSel,conReg_end,conReg_run}; // @[CICControl.scala 87:86]
  assign muxA = io_adr_i[8] ? vconfig_mem__T_100_data : {{8'd0}, _T_102}; // @[CICControl.scala 87:17]
  assign _T_106 = {sconfig_mem_c__T_105_data,sconfig_mem_a__T_105_data}; // @[CICControl.scala 88:80]
  assign _T_111 = io_cs_i & io_we_i; // @[CICControl.scala 95:16]
  assign _T_126 = ~stDel2; // @[CICControl.scala 112:15]
  assign _T_128 = sconfig_mem_c_configReg_data == 8'h0; // @[CICControl.scala 127:39]
  assign _T_129 = vcntReg == 8'h1; // @[CICControl.scala 127:63]
  assign _T_130 = _T_128 | _T_129; // @[CICControl.scala 127:52]
  assign sadrEn = conReg_run & _T_130; // @[CICControl.scala 127:24]
  assign _T_132 = sadrReg == conReg_end; // @[CICControl.scala 129:27]
  assign _T_134 = sadrReg + 4'h1; // @[CICControl.scala 129:61]
  assign _T_137 = vcntReg != 8'h0; // @[CICControl.scala 135:16]
  assign _T_139 = vcntReg - 8'h1; // @[CICControl.scala 136:24]
  assign _T_140 = 8'h1 << conReg_dsiSel; // @[OneHot.scala 58:35]
  assign _T_141 = io_dsi_in & _T_140; // @[CICControl.scala 139:26]
  assign io_ack_o = _T_126 & stDel1; // @[CICControl.scala 112:12]
  assign io_dat_o = _T_110; // @[CICControl.scala 92:12]
  assign io_dsi_o = _T_141 != 8'h0; // @[CICControl.scala 139:12]
  assign io_b_cs_i_0 = _T_5 & _T_7; // @[CICControl.scala 70:18]
  assign io_b_cs_i_1 = _T_5 & _T_11; // @[CICControl.scala 70:18]
  assign io_b_cs_i_2 = _T_5 & _T_15; // @[CICControl.scala 70:18]
  assign io_b_cs_i_3 = _T_5 & _T_19; // @[CICControl.scala 70:18]
  assign io_b_cs_i_4 = _T_5 & _T_23; // @[CICControl.scala 70:18]
  assign io_b_cs_i_5 = _T_5 & _T_27; // @[CICControl.scala 70:18]
  assign io_b_cs_i_6 = _T_5 & _T_31; // @[CICControl.scala 70:18]
  assign io_b_cs_i_7 = _T_5 & _T_35; // @[CICControl.scala 70:18]
  assign io_b_cs_i_8 = _T_5 & _T_39; // @[CICControl.scala 70:18]
  assign io_b_cs_i_9 = _T_5 & _T_43; // @[CICControl.scala 70:18]
  assign io_b_cs_i_10 = _T_5 & _T_47; // @[CICControl.scala 70:18]
  assign io_b_we_i = io_we_i; // @[CICControl.scala 73:13]
  assign io_b_adr_i = io_adr_i[9:8]; // @[CICControl.scala 74:14]
  assign io_b_dat_i = io_dat_i[15:0]; // @[CICControl.scala 75:14]
  assign io_vout = vReg[10:0]; // @[CICControl.scala 141:11]
  assign io_irq = vReg[11]; // @[CICControl.scala 142:10]
  assign io_sync_out = vReg[12]; // @[CICControl.scala 143:15]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    sconfig_mem_c[initvar] = _RAND_0[7:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    sconfig_mem_a[initvar] = _RAND_1[3:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_2 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    vconfig_mem[initvar] = _RAND_2[15:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  conReg_dsiSel = _RAND_3[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  conReg_end = _RAND_4[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  conReg_run = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_110 = _RAND_6[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  stDel1 = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  stDel2 = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  sadrReg = _RAND_9[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  vcntReg = _RAND_10[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  vReg = _RAND_11[15:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(sconfig_mem_c__T_125_en & sconfig_mem_c__T_125_mask) begin
      sconfig_mem_c[sconfig_mem_c__T_125_addr] <= sconfig_mem_c__T_125_data; // @[CICControl.scala 82:24]
    end
    if(sconfig_mem_a__T_125_en & sconfig_mem_a__T_125_mask) begin
      sconfig_mem_a[sconfig_mem_a__T_125_addr] <= sconfig_mem_a__T_125_data; // @[CICControl.scala 82:24]
    end
    if(vconfig_mem__T_118_en & vconfig_mem__T_118_mask) begin
      vconfig_mem[vconfig_mem__T_118_addr] <= vconfig_mem__T_118_data; // @[CICControl.scala 83:24]
    end
    if (reset) begin
      conReg_dsiSel <= 3'h0;
    end else if (_T_111) begin
      if (blk_con_sel) begin
        conReg_dsiSel <= io_dat_i[7:5];
      end
    end
    if (reset) begin
      conReg_end <= 4'h0;
    end else if (_T_111) begin
      if (blk_con_sel) begin
        conReg_end <= io_dat_i[4:1];
      end
    end
    if (reset) begin
      conReg_run <= 1'h0;
    end else if (_T_111) begin
      if (blk_con_sel) begin
        conReg_run <= io_dat_i[0];
      end
    end
    if (reset) begin
      _T_110 <= 32'h0;
    end else if (io_adr_i[10]) begin
      _T_110 <= {{16'd0}, dataBlock};
    end else if (io_adr_i[9]) begin
      if (io_adr_i[8]) begin
        if (io_adr_i[2]) begin
          _T_110 <= io_dataLastBlock[63:32];
        end else begin
          _T_110 <= io_dataLastBlock[31:0];
        end
      end else begin
        _T_110 <= {{20'd0}, _T_106};
      end
    end else begin
      _T_110 <= {{16'd0}, muxA};
    end
    if (reset) begin
      stDel1 <= 1'h0;
    end else begin
      stDel1 <= io_cs_i;
    end
    if (reset) begin
      stDel2 <= 1'h0;
    end else begin
      stDel2 <= stDel1;
    end
    if (reset) begin
      sadrReg <= 4'h0;
    end else if (sadrEn) begin
      if (_T_132) begin
        sadrReg <= 4'h1;
      end else begin
        sadrReg <= _T_134;
      end
    end
    if (reset) begin
      vcntReg <= 8'h0;
    end else if (_T_137) begin
      vcntReg <= _T_139;
    end else begin
      vcntReg <= sconfig_mem_c_configReg_data;
    end
    if (reset) begin
      vReg <= 16'h0;
    end else if (conReg_run) begin
      vReg <= vconfig_mem__T_136_data;
    end
  end
endmodule
