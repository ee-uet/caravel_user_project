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
// SPDX-FileContributor: Created by Muhammad Tahir <mtahir@uet.edu.pk>
// Genereted with Chisel HDL
module Quad_Encoder(
  input         clock,
  input         reset,
  input         io_quadA,
  input         io_quadB,
  input         io_raw_irq,
  input         io_reg_count_we,
  input  [31:0] io_reg_count_di,
  output [31:0] io_reg_count_do,
  input         io_reg_cfg_we,
  input  [31:0] io_reg_cfg_di,
  output [31:0] io_reg_cfg_do,
  output [15:0] io_reg_speed_do,
  output        io_fb_period
);
  reg [2:0] quadA_delayed; // @[QEI.scala 29:26]
  reg [31:0] _RAND_0;
  reg [2:0] quadB_delayed; // @[QEI.scala 30:26]
  reg [31:0] _RAND_1;
  reg [31:0] count_reg; // @[QEI.scala 31:22]
  reg [31:0] _RAND_2;
  reg [15:0] count_reg2; // @[QEI.scala 32:23]
  reg [31:0] _RAND_3;
  reg [15:0] period_count; // @[QEI.scala 33:25]
  reg [31:0] _RAND_4;
  reg  speed_enable; // @[QEI.scala 35:29]
  reg [31:0] _RAND_5;
  reg  count_sel_2x; // @[QEI.scala 36:29]
  reg [31:0] _RAND_6;
  reg [15:0] qei_output; // @[QEI.scala 38:27]
  reg [31:0] _RAND_7;
  reg [15:0] qei_speed_count; // @[QEI.scala 39:32]
  reg [31:0] _RAND_8;
  reg [15:0] qei_period_count; // @[QEI.scala 40:33]
  reg [31:0] _RAND_9;
  reg  period_sel; // @[QEI.scala 41:27]
  reg [31:0] _RAND_10;
  wire [1:0] _T_2; // @[Cat.scala 29:58]
  wire [1:0] _T_6; // @[Cat.scala 29:58]
  wire  count_2x; // @[QEI.scala 48:51]
  wire  _T_15; // @[QEI.scala 49:68]
  wire  count_4x; // @[QEI.scala 49:85]
  wire  count_direction; // @[QEI.scala 50:58]
  wire  count_pulses; // @[QEI.scala 51:25]
  wire [31:0] _T_22; // @[QEI.scala 58:30]
  wire [31:0] _T_24; // @[QEI.scala 60:30]
  wire  _T_25; // @[QEI.scala 65:20]
  wire [15:0] _T_27; // @[QEI.scala 70:32]
  wire [15:0] _T_29; // @[QEI.scala 80:36]
  wire [1:0] _T_31; // @[Cat.scala 29:58]
  wire [29:0] _T_32; // @[Cat.scala 29:58]
  wire  _GEN_10; // @[QEI.scala 96:28]
  wire  _GEN_11; // @[QEI.scala 96:28]
  wire  _GEN_14; // @[QEI.scala 94:25]
  wire  _GEN_15; // @[QEI.scala 94:25]
  assign _T_2 = {quadA_delayed[1],quadA_delayed[0]}; // @[Cat.scala 29:58]
  assign _T_6 = {quadB_delayed[1],quadB_delayed[0]}; // @[Cat.scala 29:58]
  assign count_2x = quadA_delayed[1] ^ quadA_delayed[2]; // @[QEI.scala 48:51]
  assign _T_15 = count_2x ^ quadB_delayed[1]; // @[QEI.scala 49:68]
  assign count_4x = _T_15 ^ quadB_delayed[2]; // @[QEI.scala 49:85]
  assign count_direction = quadA_delayed[1] ^ quadB_delayed[2]; // @[QEI.scala 50:58]
  assign count_pulses = count_sel_2x ? count_2x : count_4x; // @[QEI.scala 51:25]
  assign _T_22 = count_reg + 32'h1; // @[QEI.scala 58:30]
  assign _T_24 = count_reg - 32'h1; // @[QEI.scala 60:30]
  assign _T_25 = io_raw_irq | count_pulses; // @[QEI.scala 65:20]
  assign _T_27 = count_reg2 + 16'h1; // @[QEI.scala 70:32]
  assign _T_29 = period_count + 16'h1; // @[QEI.scala 80:36]
  assign _T_31 = {speed_enable,count_sel_2x}; // @[Cat.scala 29:58]
  assign _T_32 = {29'h0,period_sel}; // @[Cat.scala 29:58]
  assign _GEN_10 = io_reg_cfg_we ? io_reg_cfg_di[0] : count_sel_2x; // @[QEI.scala 96:28]
  assign _GEN_11 = io_reg_cfg_we ? io_reg_cfg_di[1] : speed_enable; // @[QEI.scala 96:28]
  assign _GEN_14 = io_reg_count_we ? count_sel_2x : _GEN_10; // @[QEI.scala 94:25]
  assign _GEN_15 = io_reg_count_we ? speed_enable : _GEN_11; // @[QEI.scala 94:25]
  assign io_reg_count_do = count_reg; // @[QEI.scala 43:19]
  assign io_reg_cfg_do = {_T_32,_T_31}; // @[QEI.scala 88:17]
  assign io_reg_speed_do = qei_output; // @[QEI.scala 91:19]
  assign io_fb_period = period_sel; // @[QEI.scala 92:16]
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
  quadA_delayed = _RAND_0[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  quadB_delayed = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  count_reg = _RAND_2[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  count_reg2 = _RAND_3[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  period_count = _RAND_4[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  speed_enable = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  count_sel_2x = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  qei_output = _RAND_7[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  qei_speed_count = _RAND_8[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  qei_period_count = _RAND_9[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  period_sel = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    quadA_delayed <= {_T_2,io_quadA};
    quadB_delayed <= {_T_6,io_quadB};
    if (io_reg_count_we) begin
      count_reg <= io_reg_count_di;
    end else if (count_pulses) begin
      if (count_direction) begin
        count_reg <= _T_22;
      end else begin
        count_reg <= _T_24;
      end
    end
    if (_T_25) begin
      if (io_raw_irq) begin
        count_reg2 <= 16'h0;
      end else begin
        count_reg2 <= _T_27;
      end
    end
    if (period_sel) begin
      if (count_pulses) begin
        period_count <= 16'h0;
      end else begin
        period_count <= _T_29;
      end
    end
    speed_enable <= reset | _GEN_15;
    count_sel_2x <= reset | _GEN_14;
    if (reset) begin
      qei_output <= 16'h0;
    end else if (period_sel) begin
      qei_output <= qei_period_count;
    end else begin
      qei_output <= qei_speed_count;
    end
    if (reset) begin
      qei_speed_count <= 16'h0;
    end else if (_T_25) begin
      if (io_raw_irq) begin
        qei_speed_count <= count_reg2;
      end
    end
    if (reset) begin
      qei_period_count <= 16'h1fff;
    end else if (period_sel) begin
      if (count_pulses) begin
        qei_period_count <= period_count;
      end
    end
    if (reset) begin
      period_sel <= 1'h0;
    end else if (!(io_reg_count_we)) begin
      if (io_reg_cfg_we) begin
        period_sel <= io_reg_cfg_di[2];
      end
    end
  end
endmodule
