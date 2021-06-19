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
module cic_block(
`ifdef USE_POWER_PINS
  inout         vccd1,
  inout         vssd1,
`endif
  input         wb_clk_i,
  input         wb_rst_i,
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
  wire  m_clock; // @[CICBlock.scala 162:65]
  wire  m_reset; // @[CICBlock.scala 162:65]
  wire [7:0] m_io_i_0_in1; // @[CICBlock.scala 162:65]
  wire  m_io_i_0_ci; // @[CICBlock.scala 162:65]
  wire [7:0] m_io_i_1_in1; // @[CICBlock.scala 162:65]
  wire  m_io_i_1_ci; // @[CICBlock.scala 162:65]
  wire [7:0] m_io_i_2_in1; // @[CICBlock.scala 162:65]
  wire  m_io_i_2_ci; // @[CICBlock.scala 162:65]
  wire [7:0] m_io_i_3_in1; // @[CICBlock.scala 162:65]
  wire  m_io_i_3_ci; // @[CICBlock.scala 162:65]
  wire [7:0] m_io_i_4_in1; // @[CICBlock.scala 162:65]
  wire  m_io_i_4_ci; // @[CICBlock.scala 162:65]
  wire [7:0] m_io_i_5_in1; // @[CICBlock.scala 162:65]
  wire  m_io_i_5_ci; // @[CICBlock.scala 162:65]
  wire [7:0] m_io_i_6_in1; // @[CICBlock.scala 162:65]
  wire  m_io_i_6_ci; // @[CICBlock.scala 162:65]
  wire [7:0] m_io_i_7_in1; // @[CICBlock.scala 162:65]
  wire  m_io_i_7_ci; // @[CICBlock.scala 162:65]
  wire [7:0] m_io_o_0_out; // @[CICBlock.scala 162:65]
  wire  m_io_o_0_co; // @[CICBlock.scala 162:65]
  wire [7:0] m_io_o_1_out; // @[CICBlock.scala 162:65]
  wire  m_io_o_1_co; // @[CICBlock.scala 162:65]
  wire [7:0] m_io_o_2_out; // @[CICBlock.scala 162:65]
  wire  m_io_o_2_co; // @[CICBlock.scala 162:65]
  wire [7:0] m_io_o_3_out; // @[CICBlock.scala 162:65]
  wire  m_io_o_3_co; // @[CICBlock.scala 162:65]
  wire [7:0] m_io_o_4_out; // @[CICBlock.scala 162:65]
  wire  m_io_o_4_co; // @[CICBlock.scala 162:65]
  wire [7:0] m_io_o_5_out; // @[CICBlock.scala 162:65]
  wire  m_io_o_5_co; // @[CICBlock.scala 162:65]
  wire [7:0] m_io_o_6_out; // @[CICBlock.scala 162:65]
  wire  m_io_o_6_co; // @[CICBlock.scala 162:65]
  wire [7:0] m_io_o_7_out; // @[CICBlock.scala 162:65]
  wire  m_io_o_7_co; // @[CICBlock.scala 162:65]
  wire  m_io_vi; // @[CICBlock.scala 162:65]
  wire  m_io_vci; // @[CICBlock.scala 162:65]
  wire  m_io_vco; // @[CICBlock.scala 162:65]
  wire [63:0] m_io_eo; // @[CICBlock.scala 162:65]
  wire [63:0] m_io_wo; // @[CICBlock.scala 162:65]
  wire  m_io_cs_i; // @[CICBlock.scala 162:65]
  wire  m_io_we_i; // @[CICBlock.scala 162:65]
  wire [1:0] m_io_adr_i; // @[CICBlock.scala 162:65]
  wire [15:0] m_io_dat_i; // @[CICBlock.scala 162:65]
  wire [15:0] m_io_dat_o; // @[CICBlock.scala 162:65]
  CICBlock m ( // @[CICBlock.scala 162:65]
    .clock(m_clock),
    .reset(m_reset),
    .io_i_0_in1(m_io_i_0_in1),
    .io_i_0_ci(m_io_i_0_ci),
    .io_i_1_in1(m_io_i_1_in1),
    .io_i_1_ci(m_io_i_1_ci),
    .io_i_2_in1(m_io_i_2_in1),
    .io_i_2_ci(m_io_i_2_ci),
    .io_i_3_in1(m_io_i_3_in1),
    .io_i_3_ci(m_io_i_3_ci),
    .io_i_4_in1(m_io_i_4_in1),
    .io_i_4_ci(m_io_i_4_ci),
    .io_i_5_in1(m_io_i_5_in1),
    .io_i_5_ci(m_io_i_5_ci),
    .io_i_6_in1(m_io_i_6_in1),
    .io_i_6_ci(m_io_i_6_ci),
    .io_i_7_in1(m_io_i_7_in1),
    .io_i_7_ci(m_io_i_7_ci),
    .io_o_0_out(m_io_o_0_out),
    .io_o_0_co(m_io_o_0_co),
    .io_o_1_out(m_io_o_1_out),
    .io_o_1_co(m_io_o_1_co),
    .io_o_2_out(m_io_o_2_out),
    .io_o_2_co(m_io_o_2_co),
    .io_o_3_out(m_io_o_3_out),
    .io_o_3_co(m_io_o_3_co),
    .io_o_4_out(m_io_o_4_out),
    .io_o_4_co(m_io_o_4_co),
    .io_o_5_out(m_io_o_5_out),
    .io_o_5_co(m_io_o_5_co),
    .io_o_6_out(m_io_o_6_out),
    .io_o_6_co(m_io_o_6_co),
    .io_o_7_out(m_io_o_7_out),
    .io_o_7_co(m_io_o_7_co),
    .io_vi(m_io_vi),
    .io_vci(m_io_vci),
    .io_vco(m_io_vco),
    .io_eo(m_io_eo),
    .io_wo(m_io_wo),
    .io_cs_i(m_io_cs_i),
    .io_we_i(m_io_we_i),
    .io_adr_i(m_io_adr_i),
    .io_dat_i(m_io_dat_i),
    .io_dat_o(m_io_dat_o)
  );
  assign io_o_0_out = m_io_o_0_out; // @[CICBlock.scala 163:8]
  assign io_o_0_co = m_io_o_0_co; // @[CICBlock.scala 163:8]
  assign io_o_1_out = m_io_o_1_out; // @[CICBlock.scala 163:8]
  assign io_o_1_co = m_io_o_1_co; // @[CICBlock.scala 163:8]
  assign io_o_2_out = m_io_o_2_out; // @[CICBlock.scala 163:8]
  assign io_o_2_co = m_io_o_2_co; // @[CICBlock.scala 163:8]
  assign io_o_3_out = m_io_o_3_out; // @[CICBlock.scala 163:8]
  assign io_o_3_co = m_io_o_3_co; // @[CICBlock.scala 163:8]
  assign io_o_4_out = m_io_o_4_out; // @[CICBlock.scala 163:8]
  assign io_o_4_co = m_io_o_4_co; // @[CICBlock.scala 163:8]
  assign io_o_5_out = m_io_o_5_out; // @[CICBlock.scala 163:8]
  assign io_o_5_co = m_io_o_5_co; // @[CICBlock.scala 163:8]
  assign io_o_6_out = m_io_o_6_out; // @[CICBlock.scala 163:8]
  assign io_o_6_co = m_io_o_6_co; // @[CICBlock.scala 163:8]
  assign io_o_7_out = m_io_o_7_out; // @[CICBlock.scala 163:8]
  assign io_o_7_co = m_io_o_7_co; // @[CICBlock.scala 163:8]
  assign io_vco = m_io_vco; // @[CICBlock.scala 163:8]
  assign io_wo = m_io_wo; // @[CICBlock.scala 163:8]
  assign io_dat_o = m_io_dat_o; // @[CICBlock.scala 163:8]
  assign m_clock = wb_clk_i;
  assign m_reset = wb_rst_i;
  assign m_io_i_0_in1 = io_i_0_in1; // @[CICBlock.scala 163:8]
  assign m_io_i_0_ci = io_i_0_ci; // @[CICBlock.scala 163:8]
  assign m_io_i_1_in1 = io_i_1_in1; // @[CICBlock.scala 163:8]
  assign m_io_i_1_ci = io_i_1_ci; // @[CICBlock.scala 163:8]
  assign m_io_i_2_in1 = io_i_2_in1; // @[CICBlock.scala 163:8]
  assign m_io_i_2_ci = io_i_2_ci; // @[CICBlock.scala 163:8]
  assign m_io_i_3_in1 = io_i_3_in1; // @[CICBlock.scala 163:8]
  assign m_io_i_3_ci = io_i_3_ci; // @[CICBlock.scala 163:8]
  assign m_io_i_4_in1 = io_i_4_in1; // @[CICBlock.scala 163:8]
  assign m_io_i_4_ci = io_i_4_ci; // @[CICBlock.scala 163:8]
  assign m_io_i_5_in1 = io_i_5_in1; // @[CICBlock.scala 163:8]
  assign m_io_i_5_ci = io_i_5_ci; // @[CICBlock.scala 163:8]
  assign m_io_i_6_in1 = io_i_6_in1; // @[CICBlock.scala 163:8]
  assign m_io_i_6_ci = io_i_6_ci; // @[CICBlock.scala 163:8]
  assign m_io_i_7_in1 = io_i_7_in1; // @[CICBlock.scala 163:8]
  assign m_io_i_7_ci = io_i_7_ci; // @[CICBlock.scala 163:8]
  assign m_io_vi = io_vi; // @[CICBlock.scala 163:8]
  assign m_io_vci = io_vci; // @[CICBlock.scala 163:8]
  assign m_io_eo = io_eo; // @[CICBlock.scala 163:8]
  assign m_io_cs_i = io_cs_i; // @[CICBlock.scala 163:8]
  assign m_io_we_i = io_we_i; // @[CICBlock.scala 163:8]
  assign m_io_adr_i = io_adr_i; // @[CICBlock.scala 163:8]
  assign m_io_dat_i = io_dat_i; // @[CICBlock.scala 163:8]
endmodule
