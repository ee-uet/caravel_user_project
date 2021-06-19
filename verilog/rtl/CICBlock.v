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
module CICBlock(
  input         clock,
  input         reset,
  input  [7:0]  io_i_0_in1,
  input         io_i_0_ci,
  input  [7:0]  io_i_1_in1,
  input         io_i_1_ci,
  input  [7:0]  io_i_2_in1,
  input         io_i_2_ci,
  input  [7:0]  io_i_3_in1,
  input         io_i_3_ci,
  input  [7:0]  io_i_4_in1,
  input         io_i_4_ci,
  input  [7:0]  io_i_5_in1,
  input         io_i_5_ci,
  input  [7:0]  io_i_6_in1,
  input         io_i_6_ci,
  input  [7:0]  io_i_7_in1,
  input         io_i_7_ci,
  output [7:0]  io_o_0_out,
  output        io_o_0_co,
  output [7:0]  io_o_1_out,
  output        io_o_1_co,
  output [7:0]  io_o_2_out,
  output        io_o_2_co,
  output [7:0]  io_o_3_out,
  output        io_o_3_co,
  output [7:0]  io_o_4_out,
  output        io_o_4_co,
  output [7:0]  io_o_5_out,
  output        io_o_5_co,
  output [7:0]  io_o_6_out,
  output        io_o_6_co,
  output [7:0]  io_o_7_out,
  output        io_o_7_co,
  input         io_vi,
  input         io_vci,
  output        io_vco,
  input  [63:0] io_eo,
  output [63:0] io_wo,
  input         io_cs_i,
  input         io_we_i,
  input  [1:0]  io_adr_i,
  input  [15:0] io_dat_i,
  output [15:0] io_dat_o
);
  wire  acc0_clock; // @[CICBlock.scala 81:19]
  wire [7:0] acc0_io_i_in1; // @[CICBlock.scala 81:19]
  wire  acc0_io_i_ci; // @[CICBlock.scala 81:19]
  wire [7:0] acc0_io_o_out; // @[CICBlock.scala 81:19]
  wire  acc0_io_o_co; // @[CICBlock.scala 81:19]
  wire [1:0] acc0_io_c_sel; // @[CICBlock.scala 81:19]
  wire  acc0_io_v; // @[CICBlock.scala 81:19]
  wire  acc1_clock; // @[CICBlock.scala 81:19]
  wire [7:0] acc1_io_i_in1; // @[CICBlock.scala 81:19]
  wire  acc1_io_i_ci; // @[CICBlock.scala 81:19]
  wire [7:0] acc1_io_o_out; // @[CICBlock.scala 81:19]
  wire  acc1_io_o_co; // @[CICBlock.scala 81:19]
  wire [1:0] acc1_io_c_sel; // @[CICBlock.scala 81:19]
  wire  acc1_io_v; // @[CICBlock.scala 81:19]
  wire  acc2_clock; // @[CICBlock.scala 81:19]
  wire [7:0] acc2_io_i_in1; // @[CICBlock.scala 81:19]
  wire  acc2_io_i_ci; // @[CICBlock.scala 81:19]
  wire [7:0] acc2_io_o_out; // @[CICBlock.scala 81:19]
  wire  acc2_io_o_co; // @[CICBlock.scala 81:19]
  wire [1:0] acc2_io_c_sel; // @[CICBlock.scala 81:19]
  wire  acc2_io_v; // @[CICBlock.scala 81:19]
  wire  acc3_clock; // @[CICBlock.scala 81:19]
  wire [7:0] acc3_io_i_in1; // @[CICBlock.scala 81:19]
  wire  acc3_io_i_ci; // @[CICBlock.scala 81:19]
  wire [7:0] acc3_io_o_out; // @[CICBlock.scala 81:19]
  wire  acc3_io_o_co; // @[CICBlock.scala 81:19]
  wire [1:0] acc3_io_c_sel; // @[CICBlock.scala 81:19]
  wire  acc3_io_v; // @[CICBlock.scala 81:19]
  wire  acc4_clock; // @[CICBlock.scala 81:19]
  wire [7:0] acc4_io_i_in1; // @[CICBlock.scala 81:19]
  wire  acc4_io_i_ci; // @[CICBlock.scala 81:19]
  wire [7:0] acc4_io_o_out; // @[CICBlock.scala 81:19]
  wire  acc4_io_o_co; // @[CICBlock.scala 81:19]
  wire [1:0] acc4_io_c_sel; // @[CICBlock.scala 81:19]
  wire  acc4_io_v; // @[CICBlock.scala 81:19]
  wire  acc5_clock; // @[CICBlock.scala 81:19]
  wire [7:0] acc5_io_i_in1; // @[CICBlock.scala 81:19]
  wire  acc5_io_i_ci; // @[CICBlock.scala 81:19]
  wire [7:0] acc5_io_o_out; // @[CICBlock.scala 81:19]
  wire  acc5_io_o_co; // @[CICBlock.scala 81:19]
  wire [1:0] acc5_io_c_sel; // @[CICBlock.scala 81:19]
  wire  acc5_io_v; // @[CICBlock.scala 81:19]
  wire  acc6_clock; // @[CICBlock.scala 81:19]
  wire [7:0] acc6_io_i_in1; // @[CICBlock.scala 81:19]
  wire  acc6_io_i_ci; // @[CICBlock.scala 81:19]
  wire [7:0] acc6_io_o_out; // @[CICBlock.scala 81:19]
  wire  acc6_io_o_co; // @[CICBlock.scala 81:19]
  wire [1:0] acc6_io_c_sel; // @[CICBlock.scala 81:19]
  wire  acc6_io_v; // @[CICBlock.scala 81:19]
  wire  acc7_clock; // @[CICBlock.scala 81:19]
  wire [7:0] acc7_io_i_in1; // @[CICBlock.scala 81:19]
  wire  acc7_io_i_ci; // @[CICBlock.scala 81:19]
  wire [7:0] acc7_io_o_out; // @[CICBlock.scala 81:19]
  wire  acc7_io_o_co; // @[CICBlock.scala 81:19]
  wire [1:0] acc7_io_c_sel; // @[CICBlock.scala 81:19]
  wire  acc7_io_v; // @[CICBlock.scala 81:19]
  wire  regs_clock; // @[CICBlock.scala 128:20]
  wire  regs_reset; // @[CICBlock.scala 128:20]
  wire  regs_io_d_0; // @[CICBlock.scala 128:20]
  wire  regs_io_d_1; // @[CICBlock.scala 128:20]
  wire  regs_io_d_2; // @[CICBlock.scala 128:20]
  wire  regs_io_d_3; // @[CICBlock.scala 128:20]
  wire  regs_io_d_4; // @[CICBlock.scala 128:20]
  wire  regs_io_d_5; // @[CICBlock.scala 128:20]
  wire  regs_io_d_6; // @[CICBlock.scala 128:20]
  wire  regs_io_d_7; // @[CICBlock.scala 128:20]
  wire  regs_io_q_0; // @[CICBlock.scala 128:20]
  wire  regs_io_q_1; // @[CICBlock.scala 128:20]
  wire  regs_io_q_2; // @[CICBlock.scala 128:20]
  wire  regs_io_q_3; // @[CICBlock.scala 128:20]
  wire  regs_io_q_4; // @[CICBlock.scala 128:20]
  wire  regs_io_q_5; // @[CICBlock.scala 128:20]
  wire  regs_io_q_6; // @[CICBlock.scala 128:20]
  wire  regs_io_q_7; // @[CICBlock.scala 128:20]
  wire  selIn1s_sel; // @[CICBlock.scala 88:31]
  wire  selCis_sel; // @[CICBlock.scala 89:31]
  wire  selVs_sel; // @[CICBlock.scala 90:30]
  wire  func_sel; // @[CICBlock.scala 91:29]
  reg [1:0] selIn1s_0; // @[CICBlock.scala 94:24]
  reg [31:0] _RAND_0;
  reg [1:0] selIn1s_1; // @[CICBlock.scala 94:24]
  reg [31:0] _RAND_1;
  reg [1:0] selIn1s_2; // @[CICBlock.scala 94:24]
  reg [31:0] _RAND_2;
  reg [1:0] selIn1s_3; // @[CICBlock.scala 94:24]
  reg [31:0] _RAND_3;
  reg [1:0] selIn1s_4; // @[CICBlock.scala 94:24]
  reg [31:0] _RAND_4;
  reg [1:0] selIn1s_5; // @[CICBlock.scala 94:24]
  reg [31:0] _RAND_5;
  reg [1:0] selIn1s_6; // @[CICBlock.scala 94:24]
  reg [31:0] _RAND_6;
  reg [1:0] selIn1s_7; // @[CICBlock.scala 94:24]
  reg [31:0] _RAND_7;
  reg [1:0] selCis_0; // @[CICBlock.scala 95:23]
  reg [31:0] _RAND_8;
  reg [1:0] selCis_1; // @[CICBlock.scala 95:23]
  reg [31:0] _RAND_9;
  reg [1:0] selCis_2; // @[CICBlock.scala 95:23]
  reg [31:0] _RAND_10;
  reg [1:0] selCis_3; // @[CICBlock.scala 95:23]
  reg [31:0] _RAND_11;
  reg [1:0] selCis_4; // @[CICBlock.scala 95:23]
  reg [31:0] _RAND_12;
  reg [1:0] selCis_5; // @[CICBlock.scala 95:23]
  reg [31:0] _RAND_13;
  reg [1:0] selCis_6; // @[CICBlock.scala 95:23]
  reg [31:0] _RAND_14;
  reg [1:0] selCis_7; // @[CICBlock.scala 95:23]
  reg [31:0] _RAND_15;
  reg [1:0] selVs_0; // @[CICBlock.scala 96:22]
  reg [31:0] _RAND_16;
  reg [1:0] selVs_1; // @[CICBlock.scala 96:22]
  reg [31:0] _RAND_17;
  reg [1:0] selVs_2; // @[CICBlock.scala 96:22]
  reg [31:0] _RAND_18;
  reg [1:0] selVs_3; // @[CICBlock.scala 96:22]
  reg [31:0] _RAND_19;
  reg [1:0] selVs_4; // @[CICBlock.scala 96:22]
  reg [31:0] _RAND_20;
  reg [1:0] selVs_5; // @[CICBlock.scala 96:22]
  reg [31:0] _RAND_21;
  reg [1:0] selVs_6; // @[CICBlock.scala 96:22]
  reg [31:0] _RAND_22;
  reg [1:0] selVs_7; // @[CICBlock.scala 96:22]
  reg [31:0] _RAND_23;
  reg [1:0] funcs_0; // @[CICBlock.scala 97:22]
  reg [31:0] _RAND_24;
  reg [1:0] funcs_1; // @[CICBlock.scala 97:22]
  reg [31:0] _RAND_25;
  reg [1:0] funcs_2; // @[CICBlock.scala 97:22]
  reg [31:0] _RAND_26;
  reg [1:0] funcs_3; // @[CICBlock.scala 97:22]
  reg [31:0] _RAND_27;
  reg [1:0] funcs_4; // @[CICBlock.scala 97:22]
  reg [31:0] _RAND_28;
  reg [1:0] funcs_5; // @[CICBlock.scala 97:22]
  reg [31:0] _RAND_29;
  reg [1:0] funcs_6; // @[CICBlock.scala 97:22]
  reg [31:0] _RAND_30;
  reg [1:0] funcs_7; // @[CICBlock.scala 97:22]
  reg [31:0] _RAND_31;
  wire [15:0] _T_5; // @[Bitwise.scala 72:12]
  wire [15:0] _T_12; // @[CICBlock.scala 100:54]
  wire [15:0] _T_13; // @[CICBlock.scala 100:38]
  wire [15:0] _T_15; // @[Bitwise.scala 72:12]
  wire [15:0] _T_22; // @[CICBlock.scala 100:97]
  wire [15:0] _T_23; // @[CICBlock.scala 100:82]
  wire [15:0] _T_24; // @[CICBlock.scala 100:58]
  wire [15:0] _T_26; // @[Bitwise.scala 72:12]
  wire [15:0] _T_33; // @[CICBlock.scala 100:138]
  wire [15:0] _T_34; // @[CICBlock.scala 100:124]
  wire [15:0] _T_35; // @[CICBlock.scala 100:101]
  wire [15:0] _T_37; // @[Bitwise.scala 72:12]
  wire [15:0] _T_44; // @[CICBlock.scala 100:178]
  wire [15:0] _T_45; // @[CICBlock.scala 100:164]
  wire  _T_47; // @[CICBlock.scala 103:16]
  wire [7:0] _T_93; // @[CICBlock.scala 67:19]
  wire [7:0] _T_95; // @[CICBlock.scala 68:19]
  wire  _T_101; // @[CICBlock.scala 68:19]
  wire  _T_105; // @[CICBlock.scala 67:19]
  wire  _T_107; // @[CICBlock.scala 68:19]
  wire [7:0] accIOs_0_o_out; // @[CICBlock.scala 73:20 CICBlock.scala 83:10]
  wire [7:0] _T_111; // @[CICBlock.scala 67:19]
  wire [7:0] _T_113; // @[CICBlock.scala 68:19]
  wire  accIOs_0_o_co; // @[CICBlock.scala 73:20 CICBlock.scala 83:10]
  wire  _T_119; // @[CICBlock.scala 68:19]
  wire  _T_123; // @[CICBlock.scala 67:19]
  wire  _T_125; // @[CICBlock.scala 68:19]
  wire [7:0] accIOs_1_o_out; // @[CICBlock.scala 73:20 CICBlock.scala 83:10]
  wire [7:0] _T_129; // @[CICBlock.scala 67:19]
  wire [7:0] _T_131; // @[CICBlock.scala 68:19]
  wire  accIOs_1_o_co; // @[CICBlock.scala 73:20 CICBlock.scala 83:10]
  wire  _T_137; // @[CICBlock.scala 68:19]
  wire  _T_141; // @[CICBlock.scala 67:19]
  wire  _T_143; // @[CICBlock.scala 68:19]
  wire [7:0] accIOs_2_o_out; // @[CICBlock.scala 73:20 CICBlock.scala 83:10]
  wire [7:0] _T_147; // @[CICBlock.scala 67:19]
  wire [7:0] _T_149; // @[CICBlock.scala 68:19]
  wire  accIOs_2_o_co; // @[CICBlock.scala 73:20 CICBlock.scala 83:10]
  wire  _T_155; // @[CICBlock.scala 68:19]
  wire  _T_159; // @[CICBlock.scala 67:19]
  wire  _T_161; // @[CICBlock.scala 68:19]
  wire [7:0] accIOs_3_o_out; // @[CICBlock.scala 73:20 CICBlock.scala 83:10]
  wire [7:0] _T_165; // @[CICBlock.scala 67:19]
  wire [7:0] _T_167; // @[CICBlock.scala 68:19]
  wire  accIOs_3_o_co; // @[CICBlock.scala 73:20 CICBlock.scala 83:10]
  wire  _T_173; // @[CICBlock.scala 68:19]
  wire  _T_177; // @[CICBlock.scala 67:19]
  wire  _T_179; // @[CICBlock.scala 68:19]
  wire [7:0] accIOs_4_o_out; // @[CICBlock.scala 73:20 CICBlock.scala 83:10]
  wire [7:0] _T_183; // @[CICBlock.scala 67:19]
  wire [7:0] _T_185; // @[CICBlock.scala 68:19]
  wire  accIOs_4_o_co; // @[CICBlock.scala 73:20 CICBlock.scala 83:10]
  wire  _T_191; // @[CICBlock.scala 68:19]
  wire  _T_195; // @[CICBlock.scala 67:19]
  wire  _T_197; // @[CICBlock.scala 68:19]
  wire [7:0] accIOs_5_o_out; // @[CICBlock.scala 73:20 CICBlock.scala 83:10]
  wire [7:0] _T_201; // @[CICBlock.scala 67:19]
  wire [7:0] _T_203; // @[CICBlock.scala 68:19]
  wire  accIOs_5_o_co; // @[CICBlock.scala 73:20 CICBlock.scala 83:10]
  wire  _T_209; // @[CICBlock.scala 68:19]
  wire  _T_213; // @[CICBlock.scala 67:19]
  wire  _T_215; // @[CICBlock.scala 68:19]
  wire [7:0] accIOs_6_o_out; // @[CICBlock.scala 73:20 CICBlock.scala 83:10]
  wire [7:0] _T_219; // @[CICBlock.scala 67:19]
  wire [7:0] _T_221; // @[CICBlock.scala 68:19]
  wire  accIOs_6_o_co; // @[CICBlock.scala 73:20 CICBlock.scala 83:10]
  wire  _T_227; // @[CICBlock.scala 68:19]
  wire  _T_231; // @[CICBlock.scala 67:19]
  wire  _T_233; // @[CICBlock.scala 68:19]
  ACC8 acc0 ( // @[CICBlock.scala 81:19]
    .clock(acc0_clock),
    .io_i_in1(acc0_io_i_in1),
    .io_i_ci(acc0_io_i_ci),
    .io_o_out(acc0_io_o_out),
    .io_o_co(acc0_io_o_co),
    .io_c_sel(acc0_io_c_sel),
    .io_v(acc0_io_v)
  );
  ACC8 acc1 ( // @[CICBlock.scala 81:19]
    .clock(acc1_clock),
    .io_i_in1(acc1_io_i_in1),
    .io_i_ci(acc1_io_i_ci),
    .io_o_out(acc1_io_o_out),
    .io_o_co(acc1_io_o_co),
    .io_c_sel(acc1_io_c_sel),
    .io_v(acc1_io_v)
  );
  ACC8 acc2 ( // @[CICBlock.scala 81:19]
    .clock(acc2_clock),
    .io_i_in1(acc2_io_i_in1),
    .io_i_ci(acc2_io_i_ci),
    .io_o_out(acc2_io_o_out),
    .io_o_co(acc2_io_o_co),
    .io_c_sel(acc2_io_c_sel),
    .io_v(acc2_io_v)
  );
  ACC8 acc3 ( // @[CICBlock.scala 81:19]
    .clock(acc3_clock),
    .io_i_in1(acc3_io_i_in1),
    .io_i_ci(acc3_io_i_ci),
    .io_o_out(acc3_io_o_out),
    .io_o_co(acc3_io_o_co),
    .io_c_sel(acc3_io_c_sel),
    .io_v(acc3_io_v)
  );
  ACC8 acc4 ( // @[CICBlock.scala 81:19]
    .clock(acc4_clock),
    .io_i_in1(acc4_io_i_in1),
    .io_i_ci(acc4_io_i_ci),
    .io_o_out(acc4_io_o_out),
    .io_o_co(acc4_io_o_co),
    .io_c_sel(acc4_io_c_sel),
    .io_v(acc4_io_v)
  );
  ACC8 acc5 ( // @[CICBlock.scala 81:19]
    .clock(acc5_clock),
    .io_i_in1(acc5_io_i_in1),
    .io_i_ci(acc5_io_i_ci),
    .io_o_out(acc5_io_o_out),
    .io_o_co(acc5_io_o_co),
    .io_c_sel(acc5_io_c_sel),
    .io_v(acc5_io_v)
  );
  ACC8 acc6 ( // @[CICBlock.scala 81:19]
    .clock(acc6_clock),
    .io_i_in1(acc6_io_i_in1),
    .io_i_ci(acc6_io_i_ci),
    .io_o_out(acc6_io_o_out),
    .io_o_co(acc6_io_o_co),
    .io_c_sel(acc6_io_c_sel),
    .io_v(acc6_io_v)
  );
  ACC8 acc7 ( // @[CICBlock.scala 81:19]
    .clock(acc7_clock),
    .io_i_in1(acc7_io_i_in1),
    .io_i_ci(acc7_io_i_ci),
    .io_o_out(acc7_io_o_out),
    .io_o_co(acc7_io_o_co),
    .io_c_sel(acc7_io_c_sel),
    .io_v(acc7_io_v)
  );
  CICBlock_Anon regs ( // @[CICBlock.scala 128:20]
    .clock(regs_clock),
    .reset(regs_reset),
    .io_d_0(regs_io_d_0),
    .io_d_1(regs_io_d_1),
    .io_d_2(regs_io_d_2),
    .io_d_3(regs_io_d_3),
    .io_d_4(regs_io_d_4),
    .io_d_5(regs_io_d_5),
    .io_d_6(regs_io_d_6),
    .io_d_7(regs_io_d_7),
    .io_q_0(regs_io_q_0),
    .io_q_1(regs_io_q_1),
    .io_q_2(regs_io_q_2),
    .io_q_3(regs_io_q_3),
    .io_q_4(regs_io_q_4),
    .io_q_5(regs_io_q_5),
    .io_q_6(regs_io_q_6),
    .io_q_7(regs_io_q_7)
  );
  assign selIn1s_sel = io_adr_i == 2'h0; // @[CICBlock.scala 88:31]
  assign selCis_sel = io_adr_i == 2'h1; // @[CICBlock.scala 89:31]
  assign selVs_sel = io_adr_i == 2'h2; // @[CICBlock.scala 90:30]
  assign func_sel = io_adr_i == 2'h3; // @[CICBlock.scala 91:29]
  assign _T_5 = selIn1s_sel ? 16'hffff : 16'h0; // @[Bitwise.scala 72:12]
  assign _T_12 = {selIn1s_7,selIn1s_6,selIn1s_5,selIn1s_4,selIn1s_3,selIn1s_2,selIn1s_1,selIn1s_0}; // @[CICBlock.scala 100:54]
  assign _T_13 = _T_5 & _T_12; // @[CICBlock.scala 100:38]
  assign _T_15 = selCis_sel ? 16'hffff : 16'h0; // @[Bitwise.scala 72:12]
  assign _T_22 = {selCis_7,selCis_6,selCis_5,selCis_4,selCis_3,selCis_2,selCis_1,selCis_0}; // @[CICBlock.scala 100:97]
  assign _T_23 = _T_15 & _T_22; // @[CICBlock.scala 100:82]
  assign _T_24 = _T_13 | _T_23; // @[CICBlock.scala 100:58]
  assign _T_26 = selVs_sel ? 16'hffff : 16'h0; // @[Bitwise.scala 72:12]
  assign _T_33 = {selVs_7,selVs_6,selVs_5,selVs_4,selVs_3,selVs_2,selVs_1,selVs_0}; // @[CICBlock.scala 100:138]
  assign _T_34 = _T_26 & _T_33; // @[CICBlock.scala 100:124]
  assign _T_35 = _T_24 | _T_34; // @[CICBlock.scala 100:101]
  assign _T_37 = func_sel ? 16'hffff : 16'h0; // @[Bitwise.scala 72:12]
  assign _T_44 = {funcs_7,funcs_6,funcs_5,funcs_4,funcs_3,funcs_2,funcs_1,funcs_0}; // @[CICBlock.scala 100:178]
  assign _T_45 = _T_37 & _T_44; // @[CICBlock.scala 100:164]
  assign _T_47 = io_cs_i & io_we_i; // @[CICBlock.scala 103:16]
  assign _T_93 = selIn1s_0[0] ? io_i_7_in1 : io_i_0_in1; // @[CICBlock.scala 67:19]
  assign _T_95 = selIn1s_0[0] ? io_i_4_in1 : io_i_6_in1; // @[CICBlock.scala 68:19]
  assign _T_101 = selCis_0[0] ? io_i_7_ci : io_i_0_ci; // @[CICBlock.scala 68:19]
  assign _T_105 = selVs_0[0] ? io_vi : 1'h1; // @[CICBlock.scala 67:19]
  assign _T_107 = selVs_0[0] ? regs_io_q_0 : regs_io_d_0; // @[CICBlock.scala 68:19]
  assign accIOs_0_o_out = acc0_io_o_out; // @[CICBlock.scala 73:20 CICBlock.scala 83:10]
  assign _T_111 = selIn1s_1[0] ? accIOs_0_o_out : io_i_1_in1; // @[CICBlock.scala 67:19]
  assign _T_113 = selIn1s_1[0] ? io_i_5_in1 : io_i_7_in1; // @[CICBlock.scala 68:19]
  assign accIOs_0_o_co = acc0_io_o_co; // @[CICBlock.scala 73:20 CICBlock.scala 83:10]
  assign _T_119 = selCis_1[0] ? accIOs_0_o_co : io_i_1_ci; // @[CICBlock.scala 68:19]
  assign _T_123 = selVs_1[0] ? io_vi : 1'h1; // @[CICBlock.scala 67:19]
  assign _T_125 = selVs_1[0] ? regs_io_q_1 : regs_io_d_1; // @[CICBlock.scala 68:19]
  assign accIOs_1_o_out = acc1_io_o_out; // @[CICBlock.scala 73:20 CICBlock.scala 83:10]
  assign _T_129 = selIn1s_2[0] ? accIOs_1_o_out : io_i_2_in1; // @[CICBlock.scala 67:19]
  assign _T_131 = selIn1s_2[0] ? io_i_6_in1 : accIOs_0_o_out; // @[CICBlock.scala 68:19]
  assign accIOs_1_o_co = acc1_io_o_co; // @[CICBlock.scala 73:20 CICBlock.scala 83:10]
  assign _T_137 = selCis_2[0] ? accIOs_1_o_co : io_i_2_ci; // @[CICBlock.scala 68:19]
  assign _T_141 = selVs_2[0] ? io_vi : 1'h1; // @[CICBlock.scala 67:19]
  assign _T_143 = selVs_2[0] ? regs_io_q_2 : regs_io_d_2; // @[CICBlock.scala 68:19]
  assign accIOs_2_o_out = acc2_io_o_out; // @[CICBlock.scala 73:20 CICBlock.scala 83:10]
  assign _T_147 = selIn1s_3[0] ? accIOs_2_o_out : io_i_3_in1; // @[CICBlock.scala 67:19]
  assign _T_149 = selIn1s_3[0] ? io_i_7_in1 : accIOs_1_o_out; // @[CICBlock.scala 68:19]
  assign accIOs_2_o_co = acc2_io_o_co; // @[CICBlock.scala 73:20 CICBlock.scala 83:10]
  assign _T_155 = selCis_3[0] ? accIOs_2_o_co : io_i_3_ci; // @[CICBlock.scala 68:19]
  assign _T_159 = selVs_3[0] ? io_vi : 1'h1; // @[CICBlock.scala 67:19]
  assign _T_161 = selVs_3[0] ? regs_io_q_3 : regs_io_d_3; // @[CICBlock.scala 68:19]
  assign accIOs_3_o_out = acc3_io_o_out; // @[CICBlock.scala 73:20 CICBlock.scala 83:10]
  assign _T_165 = selIn1s_4[0] ? accIOs_3_o_out : io_i_4_in1; // @[CICBlock.scala 67:19]
  assign _T_167 = selIn1s_4[0] ? accIOs_0_o_out : accIOs_2_o_out; // @[CICBlock.scala 68:19]
  assign accIOs_3_o_co = acc3_io_o_co; // @[CICBlock.scala 73:20 CICBlock.scala 83:10]
  assign _T_173 = selCis_4[0] ? accIOs_3_o_co : io_i_4_ci; // @[CICBlock.scala 68:19]
  assign _T_177 = selVs_4[0] ? io_vi : 1'h1; // @[CICBlock.scala 67:19]
  assign _T_179 = selVs_4[0] ? regs_io_q_4 : regs_io_d_4; // @[CICBlock.scala 68:19]
  assign accIOs_4_o_out = acc4_io_o_out; // @[CICBlock.scala 73:20 CICBlock.scala 83:10]
  assign _T_183 = selIn1s_5[0] ? accIOs_4_o_out : io_i_5_in1; // @[CICBlock.scala 67:19]
  assign _T_185 = selIn1s_5[0] ? accIOs_1_o_out : accIOs_3_o_out; // @[CICBlock.scala 68:19]
  assign accIOs_4_o_co = acc4_io_o_co; // @[CICBlock.scala 73:20 CICBlock.scala 83:10]
  assign _T_191 = selCis_5[0] ? accIOs_4_o_co : io_i_5_ci; // @[CICBlock.scala 68:19]
  assign _T_195 = selVs_5[0] ? io_vi : 1'h1; // @[CICBlock.scala 67:19]
  assign _T_197 = selVs_5[0] ? regs_io_q_5 : regs_io_d_5; // @[CICBlock.scala 68:19]
  assign accIOs_5_o_out = acc5_io_o_out; // @[CICBlock.scala 73:20 CICBlock.scala 83:10]
  assign _T_201 = selIn1s_6[0] ? accIOs_5_o_out : io_i_6_in1; // @[CICBlock.scala 67:19]
  assign _T_203 = selIn1s_6[0] ? accIOs_2_o_out : accIOs_4_o_out; // @[CICBlock.scala 68:19]
  assign accIOs_5_o_co = acc5_io_o_co; // @[CICBlock.scala 73:20 CICBlock.scala 83:10]
  assign _T_209 = selCis_6[0] ? accIOs_5_o_co : io_i_6_ci; // @[CICBlock.scala 68:19]
  assign _T_213 = selVs_6[0] ? io_vi : 1'h1; // @[CICBlock.scala 67:19]
  assign _T_215 = selVs_6[0] ? regs_io_q_6 : regs_io_d_6; // @[CICBlock.scala 68:19]
  assign accIOs_6_o_out = acc6_io_o_out; // @[CICBlock.scala 73:20 CICBlock.scala 83:10]
  assign _T_219 = selIn1s_7[0] ? accIOs_6_o_out : io_i_7_in1; // @[CICBlock.scala 67:19]
  assign _T_221 = selIn1s_7[0] ? accIOs_3_o_out : accIOs_5_o_out; // @[CICBlock.scala 68:19]
  assign accIOs_6_o_co = acc6_io_o_co; // @[CICBlock.scala 73:20 CICBlock.scala 83:10]
  assign _T_227 = selCis_7[0] ? accIOs_6_o_co : io_i_7_ci; // @[CICBlock.scala 68:19]
  assign _T_231 = selVs_7[0] ? io_vi : 1'h1; // @[CICBlock.scala 67:19]
  assign _T_233 = selVs_7[0] ? regs_io_q_7 : regs_io_d_7; // @[CICBlock.scala 68:19]
  assign io_o_0_out = acc0_io_o_out; // @[CICBlock.scala 141:17]
  assign io_o_0_co = acc0_io_o_co; // @[CICBlock.scala 142:16]
  assign io_o_1_out = acc1_io_o_out; // @[CICBlock.scala 141:17]
  assign io_o_1_co = acc1_io_o_co; // @[CICBlock.scala 142:16]
  assign io_o_2_out = acc2_io_o_out; // @[CICBlock.scala 141:17]
  assign io_o_2_co = acc2_io_o_co; // @[CICBlock.scala 142:16]
  assign io_o_3_out = acc3_io_o_out; // @[CICBlock.scala 141:17]
  assign io_o_3_co = acc3_io_o_co; // @[CICBlock.scala 142:16]
  assign io_o_4_out = acc4_io_o_out; // @[CICBlock.scala 141:17]
  assign io_o_4_co = acc4_io_o_co; // @[CICBlock.scala 142:16]
  assign io_o_5_out = acc5_io_o_out; // @[CICBlock.scala 141:17]
  assign io_o_5_co = acc5_io_o_co; // @[CICBlock.scala 142:16]
  assign io_o_6_out = acc6_io_o_out; // @[CICBlock.scala 141:17]
  assign io_o_6_co = acc6_io_o_co; // @[CICBlock.scala 142:16]
  assign io_o_7_out = acc7_io_o_out; // @[CICBlock.scala 141:17]
  assign io_o_7_co = acc7_io_o_co; // @[CICBlock.scala 142:16]
  assign io_vco = selVs_7[1] ? _T_233 : _T_231; // @[CICBlock.scala 151:10]
  assign io_wo = io_eo; // @[CICBlock.scala 152:9]
  assign io_dat_o = _T_35 | _T_45; // @[CICBlock.scala 100:12]
  assign acc0_clock = clock;
  assign acc0_io_i_in1 = selIn1s_0[1] ? _T_95 : _T_93; // @[CICBlock.scala 83:10]
  assign acc0_io_i_ci = selCis_0[1] ? _T_101 : selCis_0[0]; // @[CICBlock.scala 83:10]
  assign acc0_io_c_sel = funcs_0; // @[CICBlock.scala 83:10]
  assign acc0_io_v = selVs_0[1] ? _T_107 : _T_105; // @[CICBlock.scala 83:10]
  assign acc1_clock = clock;
  assign acc1_io_i_in1 = selIn1s_1[1] ? _T_113 : _T_111; // @[CICBlock.scala 83:10]
  assign acc1_io_i_ci = selCis_1[1] ? _T_119 : selCis_1[0]; // @[CICBlock.scala 83:10]
  assign acc1_io_c_sel = funcs_1; // @[CICBlock.scala 83:10]
  assign acc1_io_v = selVs_1[1] ? _T_125 : _T_123; // @[CICBlock.scala 83:10]
  assign acc2_clock = clock;
  assign acc2_io_i_in1 = selIn1s_2[1] ? _T_131 : _T_129; // @[CICBlock.scala 83:10]
  assign acc2_io_i_ci = selCis_2[1] ? _T_137 : selCis_2[0]; // @[CICBlock.scala 83:10]
  assign acc2_io_c_sel = funcs_2; // @[CICBlock.scala 83:10]
  assign acc2_io_v = selVs_2[1] ? _T_143 : _T_141; // @[CICBlock.scala 83:10]
  assign acc3_clock = clock;
  assign acc3_io_i_in1 = selIn1s_3[1] ? _T_149 : _T_147; // @[CICBlock.scala 83:10]
  assign acc3_io_i_ci = selCis_3[1] ? _T_155 : selCis_3[0]; // @[CICBlock.scala 83:10]
  assign acc3_io_c_sel = funcs_3; // @[CICBlock.scala 83:10]
  assign acc3_io_v = selVs_3[1] ? _T_161 : _T_159; // @[CICBlock.scala 83:10]
  assign acc4_clock = clock;
  assign acc4_io_i_in1 = selIn1s_4[1] ? _T_167 : _T_165; // @[CICBlock.scala 83:10]
  assign acc4_io_i_ci = selCis_4[1] ? _T_173 : selCis_4[0]; // @[CICBlock.scala 83:10]
  assign acc4_io_c_sel = funcs_4; // @[CICBlock.scala 83:10]
  assign acc4_io_v = selVs_4[1] ? _T_179 : _T_177; // @[CICBlock.scala 83:10]
  assign acc5_clock = clock;
  assign acc5_io_i_in1 = selIn1s_5[1] ? _T_185 : _T_183; // @[CICBlock.scala 83:10]
  assign acc5_io_i_ci = selCis_5[1] ? _T_191 : selCis_5[0]; // @[CICBlock.scala 83:10]
  assign acc5_io_c_sel = funcs_5; // @[CICBlock.scala 83:10]
  assign acc5_io_v = selVs_5[1] ? _T_197 : _T_195; // @[CICBlock.scala 83:10]
  assign acc6_clock = clock;
  assign acc6_io_i_in1 = selIn1s_6[1] ? _T_203 : _T_201; // @[CICBlock.scala 83:10]
  assign acc6_io_i_ci = selCis_6[1] ? _T_209 : selCis_6[0]; // @[CICBlock.scala 83:10]
  assign acc6_io_c_sel = funcs_6; // @[CICBlock.scala 83:10]
  assign acc6_io_v = selVs_6[1] ? _T_215 : _T_213; // @[CICBlock.scala 83:10]
  assign acc7_clock = clock;
  assign acc7_io_i_in1 = selIn1s_7[1] ? _T_221 : _T_219; // @[CICBlock.scala 83:10]
  assign acc7_io_i_ci = selCis_7[1] ? _T_227 : selCis_7[0]; // @[CICBlock.scala 83:10]
  assign acc7_io_c_sel = funcs_7; // @[CICBlock.scala 83:10]
  assign acc7_io_v = selVs_7[1] ? _T_233 : _T_231; // @[CICBlock.scala 83:10]
  assign regs_clock = clock;
  assign regs_reset = reset;
  assign regs_io_d_0 = io_vci; // @[CICBlock.scala 148:18]
  assign regs_io_d_1 = selVs_0[1] ? _T_107 : _T_105; // @[CICBlock.scala 148:18]
  assign regs_io_d_2 = selVs_1[1] ? _T_125 : _T_123; // @[CICBlock.scala 148:18]
  assign regs_io_d_3 = selVs_2[1] ? _T_143 : _T_141; // @[CICBlock.scala 148:18]
  assign regs_io_d_4 = selVs_3[1] ? _T_161 : _T_159; // @[CICBlock.scala 148:18]
  assign regs_io_d_5 = selVs_4[1] ? _T_179 : _T_177; // @[CICBlock.scala 148:18]
  assign regs_io_d_6 = selVs_5[1] ? _T_197 : _T_195; // @[CICBlock.scala 148:18]
  assign regs_io_d_7 = selVs_6[1] ? _T_215 : _T_213; // @[CICBlock.scala 148:18]
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
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  selIn1s_0 = _RAND_0[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  selIn1s_1 = _RAND_1[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  selIn1s_2 = _RAND_2[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  selIn1s_3 = _RAND_3[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  selIn1s_4 = _RAND_4[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  selIn1s_5 = _RAND_5[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  selIn1s_6 = _RAND_6[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  selIn1s_7 = _RAND_7[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  selCis_0 = _RAND_8[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  selCis_1 = _RAND_9[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  selCis_2 = _RAND_10[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  selCis_3 = _RAND_11[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  selCis_4 = _RAND_12[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  selCis_5 = _RAND_13[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  selCis_6 = _RAND_14[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  selCis_7 = _RAND_15[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  selVs_0 = _RAND_16[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  selVs_1 = _RAND_17[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  selVs_2 = _RAND_18[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  selVs_3 = _RAND_19[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  selVs_4 = _RAND_20[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  selVs_5 = _RAND_21[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  selVs_6 = _RAND_22[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  selVs_7 = _RAND_23[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  funcs_0 = _RAND_24[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  funcs_1 = _RAND_25[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  funcs_2 = _RAND_26[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  funcs_3 = _RAND_27[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  funcs_4 = _RAND_28[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  funcs_5 = _RAND_29[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  funcs_6 = _RAND_30[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  funcs_7 = _RAND_31[1:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      selIn1s_0 <= 2'h0;
    end else if (_T_47) begin
      if (selIn1s_sel) begin
        selIn1s_0 <= io_dat_i[1:0];
      end
    end
    if (reset) begin
      selIn1s_1 <= 2'h0;
    end else if (_T_47) begin
      if (selIn1s_sel) begin
        selIn1s_1 <= io_dat_i[3:2];
      end
    end
    if (reset) begin
      selIn1s_2 <= 2'h0;
    end else if (_T_47) begin
      if (selIn1s_sel) begin
        selIn1s_2 <= io_dat_i[5:4];
      end
    end
    if (reset) begin
      selIn1s_3 <= 2'h0;
    end else if (_T_47) begin
      if (selIn1s_sel) begin
        selIn1s_3 <= io_dat_i[7:6];
      end
    end
    if (reset) begin
      selIn1s_4 <= 2'h0;
    end else if (_T_47) begin
      if (selIn1s_sel) begin
        selIn1s_4 <= io_dat_i[9:8];
      end
    end
    if (reset) begin
      selIn1s_5 <= 2'h0;
    end else if (_T_47) begin
      if (selIn1s_sel) begin
        selIn1s_5 <= io_dat_i[11:10];
      end
    end
    if (reset) begin
      selIn1s_6 <= 2'h0;
    end else if (_T_47) begin
      if (selIn1s_sel) begin
        selIn1s_6 <= io_dat_i[13:12];
      end
    end
    if (reset) begin
      selIn1s_7 <= 2'h0;
    end else if (_T_47) begin
      if (selIn1s_sel) begin
        selIn1s_7 <= io_dat_i[15:14];
      end
    end
    if (reset) begin
      selCis_0 <= 2'h0;
    end else if (_T_47) begin
      if (selCis_sel) begin
        selCis_0 <= io_dat_i[1:0];
      end
    end
    if (reset) begin
      selCis_1 <= 2'h0;
    end else if (_T_47) begin
      if (selCis_sel) begin
        selCis_1 <= io_dat_i[3:2];
      end
    end
    if (reset) begin
      selCis_2 <= 2'h0;
    end else if (_T_47) begin
      if (selCis_sel) begin
        selCis_2 <= io_dat_i[5:4];
      end
    end
    if (reset) begin
      selCis_3 <= 2'h0;
    end else if (_T_47) begin
      if (selCis_sel) begin
        selCis_3 <= io_dat_i[7:6];
      end
    end
    if (reset) begin
      selCis_4 <= 2'h0;
    end else if (_T_47) begin
      if (selCis_sel) begin
        selCis_4 <= io_dat_i[9:8];
      end
    end
    if (reset) begin
      selCis_5 <= 2'h0;
    end else if (_T_47) begin
      if (selCis_sel) begin
        selCis_5 <= io_dat_i[11:10];
      end
    end
    if (reset) begin
      selCis_6 <= 2'h0;
    end else if (_T_47) begin
      if (selCis_sel) begin
        selCis_6 <= io_dat_i[13:12];
      end
    end
    if (reset) begin
      selCis_7 <= 2'h0;
    end else if (_T_47) begin
      if (selCis_sel) begin
        selCis_7 <= io_dat_i[15:14];
      end
    end
    if (reset) begin
      selVs_0 <= 2'h0;
    end else if (_T_47) begin
      if (selVs_sel) begin
        selVs_0 <= io_dat_i[1:0];
      end
    end
    if (reset) begin
      selVs_1 <= 2'h0;
    end else if (_T_47) begin
      if (selVs_sel) begin
        selVs_1 <= io_dat_i[3:2];
      end
    end
    if (reset) begin
      selVs_2 <= 2'h0;
    end else if (_T_47) begin
      if (selVs_sel) begin
        selVs_2 <= io_dat_i[5:4];
      end
    end
    if (reset) begin
      selVs_3 <= 2'h0;
    end else if (_T_47) begin
      if (selVs_sel) begin
        selVs_3 <= io_dat_i[7:6];
      end
    end
    if (reset) begin
      selVs_4 <= 2'h0;
    end else if (_T_47) begin
      if (selVs_sel) begin
        selVs_4 <= io_dat_i[9:8];
      end
    end
    if (reset) begin
      selVs_5 <= 2'h0;
    end else if (_T_47) begin
      if (selVs_sel) begin
        selVs_5 <= io_dat_i[11:10];
      end
    end
    if (reset) begin
      selVs_6 <= 2'h0;
    end else if (_T_47) begin
      if (selVs_sel) begin
        selVs_6 <= io_dat_i[13:12];
      end
    end
    if (reset) begin
      selVs_7 <= 2'h0;
    end else if (_T_47) begin
      if (selVs_sel) begin
        selVs_7 <= io_dat_i[15:14];
      end
    end
    if (reset) begin
      funcs_0 <= 2'h0;
    end else if (_T_47) begin
      if (func_sel) begin
        funcs_0 <= io_dat_i[1:0];
      end
    end
    if (reset) begin
      funcs_1 <= 2'h0;
    end else if (_T_47) begin
      if (func_sel) begin
        funcs_1 <= io_dat_i[3:2];
      end
    end
    if (reset) begin
      funcs_2 <= 2'h0;
    end else if (_T_47) begin
      if (func_sel) begin
        funcs_2 <= io_dat_i[5:4];
      end
    end
    if (reset) begin
      funcs_3 <= 2'h0;
    end else if (_T_47) begin
      if (func_sel) begin
        funcs_3 <= io_dat_i[7:6];
      end
    end
    if (reset) begin
      funcs_4 <= 2'h0;
    end else if (_T_47) begin
      if (func_sel) begin
        funcs_4 <= io_dat_i[9:8];
      end
    end
    if (reset) begin
      funcs_5 <= 2'h0;
    end else if (_T_47) begin
      if (func_sel) begin
        funcs_5 <= io_dat_i[11:10];
      end
    end
    if (reset) begin
      funcs_6 <= 2'h0;
    end else if (_T_47) begin
      if (func_sel) begin
        funcs_6 <= io_dat_i[13:12];
      end
    end
    if (reset) begin
      funcs_7 <= 2'h0;
    end else if (_T_47) begin
      if (func_sel) begin
        funcs_7 <= io_dat_i[15:14];
      end
    end
  end
endmodule
