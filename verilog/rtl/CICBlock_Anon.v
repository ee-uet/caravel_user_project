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
module CICBlock_Anon(
  input   clock,
  input   reset,
  input   io_d_0,
  input   io_d_1,
  input   io_d_2,
  input   io_d_3,
  input   io_d_4,
  input   io_d_5,
  input   io_d_6,
  input   io_d_7,
  output  io_q_0,
  output  io_q_1,
  output  io_q_2,
  output  io_q_3,
  output  io_q_4,
  output  io_q_5,
  output  io_q_6,
  output  io_q_7
);
  reg  _T; // @[CICBlock.scala 134:25]
  reg [31:0] _RAND_0;
  reg  _T_1; // @[CICBlock.scala 134:25]
  reg [31:0] _RAND_1;
  reg  _T_2; // @[CICBlock.scala 134:25]
  reg [31:0] _RAND_2;
  reg  _T_3; // @[CICBlock.scala 134:25]
  reg [31:0] _RAND_3;
  reg  _T_4; // @[CICBlock.scala 134:25]
  reg [31:0] _RAND_4;
  reg  _T_5; // @[CICBlock.scala 134:25]
  reg [31:0] _RAND_5;
  reg  _T_6; // @[CICBlock.scala 134:25]
  reg [31:0] _RAND_6;
  reg  _T_7; // @[CICBlock.scala 134:25]
  reg [31:0] _RAND_7;
  assign io_q_0 = _T; // @[CICBlock.scala 134:15]
  assign io_q_1 = _T_1; // @[CICBlock.scala 134:15]
  assign io_q_2 = _T_2; // @[CICBlock.scala 134:15]
  assign io_q_3 = _T_3; // @[CICBlock.scala 134:15]
  assign io_q_4 = _T_4; // @[CICBlock.scala 134:15]
  assign io_q_5 = _T_5; // @[CICBlock.scala 134:15]
  assign io_q_6 = _T_6; // @[CICBlock.scala 134:15]
  assign io_q_7 = _T_7; // @[CICBlock.scala 134:15]
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
  _T = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_1 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_2 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_3 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_4 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_5 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_6 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_7 = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T <= 1'h0;
    end else begin
      _T <= io_d_0;
    end
    if (reset) begin
      _T_1 <= 1'h0;
    end else begin
      _T_1 <= io_d_1;
    end
    if (reset) begin
      _T_2 <= 1'h0;
    end else begin
      _T_2 <= io_d_2;
    end
    if (reset) begin
      _T_3 <= 1'h0;
    end else begin
      _T_3 <= io_d_3;
    end
    if (reset) begin
      _T_4 <= 1'h0;
    end else begin
      _T_4 <= io_d_4;
    end
    if (reset) begin
      _T_5 <= 1'h0;
    end else begin
      _T_5 <= io_d_5;
    end
    if (reset) begin
      _T_6 <= 1'h0;
    end else begin
      _T_6 <= io_d_6;
    end
    if (reset) begin
      _T_7 <= 1'h0;
    end else begin
      _T_7 <= io_d_7;
    end
  end
endmodule
