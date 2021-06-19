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
module ACC8(
  input        clock,
  input  [7:0] io_i_in1,
  input        io_i_ci,
  output [7:0] io_o_out,
  output       io_o_co,
  input  [1:0] io_c_sel,
  input        io_v
);
  wire [8:0] _T_6; // @[Cat.scala 29:58]
  reg [7:0] regOut; // @[Reg.scala 15:16]
  reg [31:0] _RAND_0;
  reg [7:0] prevIn1; // @[Reg.scala 15:16]
  reg [31:0] _RAND_1;
  wire [7:0] muxB; // @[CICBlock.scala 37:17]
  wire [7:0] _T_3; // @[CICBlock.scala 36:31]
  wire [7:0] muxA; // @[CICBlock.scala 36:17]
  wire [7:0] muxC; // @[CICBlock.scala 38:17]
  wire [8:0] _T_7; // @[Cat.scala 29:58]
  wire [8:0] _T_9; // @[CICBlock.scala 40:48]
  wire [8:0] _GEN_2; // @[CICBlock.scala 40:21]
  wire [8:0] accOut; // @[CICBlock.scala 40:21]
  assign _T_6 = {1'h0,io_i_in1}; // @[Cat.scala 29:58]
  assign muxB = io_c_sel[0] ? regOut : prevIn1; // @[CICBlock.scala 37:17]
  assign _T_3 = ~io_i_in1; // @[CICBlock.scala 36:31]
  assign muxA = io_c_sel[0] ? _T_3 : 8'h0; // @[CICBlock.scala 36:17]
  assign muxC = io_c_sel[1] ? muxB : muxA; // @[CICBlock.scala 38:17]
  assign _T_7 = {1'h0,muxC}; // @[Cat.scala 29:58]
  assign _T_9 = _T_6 + _T_7; // @[CICBlock.scala 40:48]
  assign _GEN_2 = {{8'd0}, io_i_ci}; // @[CICBlock.scala 40:21]
  assign accOut = _GEN_2 + _T_9; // @[CICBlock.scala 40:21]
  assign io_o_out = regOut; // @[CICBlock.scala 42:12]
  assign io_o_co = accOut[8]; // @[CICBlock.scala 43:11]
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
  regOut = _RAND_0[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  prevIn1 = _RAND_1[7:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (io_v) begin
      regOut <= accOut[7:0];
    end
    if (io_v) begin
      prevIn1 <= _T_3;
    end
  end
endmodule
