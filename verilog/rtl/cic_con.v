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
module cic_con(
`ifdef USE_POWER_PINS
  inout         vccd1,
  inout         vssd1,
`endif
  input         wb_clk_i,
  input         wb_rst_i,
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
  wire  m_clock; // @[CICControl.scala 152:65]
  wire  m_reset; // @[CICControl.scala 152:65]
  wire  m_io_cs_i; // @[CICControl.scala 152:65]
  wire  m_io_ack_o; // @[CICControl.scala 152:65]
  wire  m_io_we_i; // @[CICControl.scala 152:65]
  wire [11:0] m_io_adr_i; // @[CICControl.scala 152:65]
  wire [31:0] m_io_dat_i; // @[CICControl.scala 152:65]
  wire [31:0] m_io_dat_o; // @[CICControl.scala 152:65]
  wire [7:0] m_io_dsi_in; // @[CICControl.scala 152:65]
  wire [63:0] m_io_dataLastBlock; // @[CICControl.scala 152:65]
  wire  m_io_dsi_o; // @[CICControl.scala 152:65]
  wire  m_io_b_cs_i_0; // @[CICControl.scala 152:65]
  wire  m_io_b_cs_i_1; // @[CICControl.scala 152:65]
  wire  m_io_b_cs_i_2; // @[CICControl.scala 152:65]
  wire  m_io_b_cs_i_3; // @[CICControl.scala 152:65]
  wire  m_io_b_cs_i_4; // @[CICControl.scala 152:65]
  wire  m_io_b_cs_i_5; // @[CICControl.scala 152:65]
  wire  m_io_b_cs_i_6; // @[CICControl.scala 152:65]
  wire  m_io_b_cs_i_7; // @[CICControl.scala 152:65]
  wire  m_io_b_cs_i_8; // @[CICControl.scala 152:65]
  wire  m_io_b_cs_i_9; // @[CICControl.scala 152:65]
  wire  m_io_b_cs_i_10; // @[CICControl.scala 152:65]
  wire  m_io_b_we_i; // @[CICControl.scala 152:65]
  wire [1:0] m_io_b_adr_i; // @[CICControl.scala 152:65]
  wire [15:0] m_io_b_dat_i; // @[CICControl.scala 152:65]
  wire [15:0] m_io_b_dat_o_0; // @[CICControl.scala 152:65]
  wire [15:0] m_io_b_dat_o_1; // @[CICControl.scala 152:65]
  wire [15:0] m_io_b_dat_o_2; // @[CICControl.scala 152:65]
  wire [15:0] m_io_b_dat_o_3; // @[CICControl.scala 152:65]
  wire [15:0] m_io_b_dat_o_4; // @[CICControl.scala 152:65]
  wire [15:0] m_io_b_dat_o_5; // @[CICControl.scala 152:65]
  wire [15:0] m_io_b_dat_o_6; // @[CICControl.scala 152:65]
  wire [15:0] m_io_b_dat_o_7; // @[CICControl.scala 152:65]
  wire [15:0] m_io_b_dat_o_8; // @[CICControl.scala 152:65]
  wire [15:0] m_io_b_dat_o_9; // @[CICControl.scala 152:65]
  wire [15:0] m_io_b_dat_o_10; // @[CICControl.scala 152:65]
  wire [10:0] m_io_vout; // @[CICControl.scala 152:65]
  wire  m_io_irq; // @[CICControl.scala 152:65]
  wire  m_io_sync_out; // @[CICControl.scala 152:65]
  CICControl m ( // @[CICControl.scala 152:65]
    .clock(m_clock),
    .reset(m_reset),
    .io_cs_i(m_io_cs_i),
    .io_ack_o(m_io_ack_o),
    .io_we_i(m_io_we_i),
    .io_adr_i(m_io_adr_i),
    .io_dat_i(m_io_dat_i),
    .io_dat_o(m_io_dat_o),
    .io_dsi_in(m_io_dsi_in),
    .io_dataLastBlock(m_io_dataLastBlock),
    .io_dsi_o(m_io_dsi_o),
    .io_b_cs_i_0(m_io_b_cs_i_0),
    .io_b_cs_i_1(m_io_b_cs_i_1),
    .io_b_cs_i_2(m_io_b_cs_i_2),
    .io_b_cs_i_3(m_io_b_cs_i_3),
    .io_b_cs_i_4(m_io_b_cs_i_4),
    .io_b_cs_i_5(m_io_b_cs_i_5),
    .io_b_cs_i_6(m_io_b_cs_i_6),
    .io_b_cs_i_7(m_io_b_cs_i_7),
    .io_b_cs_i_8(m_io_b_cs_i_8),
    .io_b_cs_i_9(m_io_b_cs_i_9),
    .io_b_cs_i_10(m_io_b_cs_i_10),
    .io_b_we_i(m_io_b_we_i),
    .io_b_adr_i(m_io_b_adr_i),
    .io_b_dat_i(m_io_b_dat_i),
    .io_b_dat_o_0(m_io_b_dat_o_0),
    .io_b_dat_o_1(m_io_b_dat_o_1),
    .io_b_dat_o_2(m_io_b_dat_o_2),
    .io_b_dat_o_3(m_io_b_dat_o_3),
    .io_b_dat_o_4(m_io_b_dat_o_4),
    .io_b_dat_o_5(m_io_b_dat_o_5),
    .io_b_dat_o_6(m_io_b_dat_o_6),
    .io_b_dat_o_7(m_io_b_dat_o_7),
    .io_b_dat_o_8(m_io_b_dat_o_8),
    .io_b_dat_o_9(m_io_b_dat_o_9),
    .io_b_dat_o_10(m_io_b_dat_o_10),
    .io_vout(m_io_vout),
    .io_irq(m_io_irq),
    .io_sync_out(m_io_sync_out)
  );
  assign io_ack_o = m_io_ack_o; // @[CICControl.scala 153:8]
  assign io_dat_o = m_io_dat_o; // @[CICControl.scala 153:8]
  assign io_dsi_o = m_io_dsi_o; // @[CICControl.scala 153:8]
  assign io_b_cs_i_0 = m_io_b_cs_i_0; // @[CICControl.scala 153:8]
  assign io_b_cs_i_1 = m_io_b_cs_i_1; // @[CICControl.scala 153:8]
  assign io_b_cs_i_2 = m_io_b_cs_i_2; // @[CICControl.scala 153:8]
  assign io_b_cs_i_3 = m_io_b_cs_i_3; // @[CICControl.scala 153:8]
  assign io_b_cs_i_4 = m_io_b_cs_i_4; // @[CICControl.scala 153:8]
  assign io_b_cs_i_5 = m_io_b_cs_i_5; // @[CICControl.scala 153:8]
  assign io_b_cs_i_6 = m_io_b_cs_i_6; // @[CICControl.scala 153:8]
  assign io_b_cs_i_7 = m_io_b_cs_i_7; // @[CICControl.scala 153:8]
  assign io_b_cs_i_8 = m_io_b_cs_i_8; // @[CICControl.scala 153:8]
  assign io_b_cs_i_9 = m_io_b_cs_i_9; // @[CICControl.scala 153:8]
  assign io_b_cs_i_10 = m_io_b_cs_i_10; // @[CICControl.scala 153:8]
  assign io_b_we_i = m_io_b_we_i; // @[CICControl.scala 153:8]
  assign io_b_adr_i = m_io_b_adr_i; // @[CICControl.scala 153:8]
  assign io_b_dat_i = m_io_b_dat_i; // @[CICControl.scala 153:8]
  assign io_vout = m_io_vout; // @[CICControl.scala 153:8]
  assign io_irq = m_io_irq; // @[CICControl.scala 153:8]
  assign io_sync_out = m_io_sync_out; // @[CICControl.scala 153:8]
  assign m_clock = wb_clk_i;
  assign m_reset = wb_rst_i;
  assign m_io_cs_i = io_cs_i; // @[CICControl.scala 153:8]
  assign m_io_we_i = io_we_i; // @[CICControl.scala 153:8]
  assign m_io_adr_i = io_adr_i; // @[CICControl.scala 153:8]
  assign m_io_dat_i = io_dat_i; // @[CICControl.scala 153:8]
  assign m_io_dsi_in = io_dsi_in; // @[CICControl.scala 153:8]
  assign m_io_dataLastBlock = io_dataLastBlock; // @[CICControl.scala 153:8]
  assign m_io_b_dat_o_0 = io_b_dat_o_0; // @[CICControl.scala 153:8]
  assign m_io_b_dat_o_1 = io_b_dat_o_1; // @[CICControl.scala 153:8]
  assign m_io_b_dat_o_2 = io_b_dat_o_2; // @[CICControl.scala 153:8]
  assign m_io_b_dat_o_3 = io_b_dat_o_3; // @[CICControl.scala 153:8]
  assign m_io_b_dat_o_4 = io_b_dat_o_4; // @[CICControl.scala 153:8]
  assign m_io_b_dat_o_5 = io_b_dat_o_5; // @[CICControl.scala 153:8]
  assign m_io_b_dat_o_6 = io_b_dat_o_6; // @[CICControl.scala 153:8]
  assign m_io_b_dat_o_7 = io_b_dat_o_7; // @[CICControl.scala 153:8]
  assign m_io_b_dat_o_8 = io_b_dat_o_8; // @[CICControl.scala 153:8]
  assign m_io_b_dat_o_9 = io_b_dat_o_9; // @[CICControl.scala 153:8]
  assign m_io_b_dat_o_10 = io_b_dat_o_10; // @[CICControl.scala 153:8]
endmodule
