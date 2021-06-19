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
module vedic_16x16(
  input  [15:0] io_a,
  input  [15:0] io_b,
  output [31:0] io_c
);
  wire [7:0] z1_io_a; // @[Multiplier.scala 258:18]
  wire [7:0] z1_io_b; // @[Multiplier.scala 258:18]
  wire [15:0] z1_io_c; // @[Multiplier.scala 258:18]
  wire [7:0] z2_io_a; // @[Multiplier.scala 263:18]
  wire [7:0] z2_io_b; // @[Multiplier.scala 263:18]
  wire [15:0] z2_io_c; // @[Multiplier.scala 263:18]
  wire [7:0] z3_io_a; // @[Multiplier.scala 267:18]
  wire [7:0] z3_io_b; // @[Multiplier.scala 267:18]
  wire [15:0] z3_io_c; // @[Multiplier.scala 267:18]
  wire [3:0] z4_io_a; // @[Multiplier.scala 271:18]
  wire [3:0] z4_io_b; // @[Multiplier.scala 271:18]
  wire [7:0] z4_io_c; // @[Multiplier.scala 271:18]
  wire [15:0] _T_2; // @[Multiplier.scala 254:38]
  wire [15:0] in1_complement; // @[Multiplier.scala 254:41]
  wire [15:0] input1; // @[Multiplier.scala 255:19]
  wire [15:0] q0; // @[Multiplier.scala 240:16 Multiplier.scala 262:6]
  wire [15:0] _T_16; // @[Cat.scala 29:58]
  wire [15:0] q1; // @[Multiplier.scala 241:16 Multiplier.scala 266:6]
  wire [17:0] temp1; // @[Multiplier.scala 245:19 Multiplier.scala 278:9]
  wire [17:0] _GEN_0; // @[Multiplier.scala 279:18]
  wire [17:0] _T_19; // @[Multiplier.scala 279:18]
  wire [15:0] q2; // @[Multiplier.scala 242:16 Multiplier.scala 270:6]
  wire [23:0] temp2; // @[Cat.scala 29:58]
  wire [15:0] q3; // @[Multiplier.scala 243:16 Multiplier.scala 274:6]
  wire [23:0] temp3; // @[Cat.scala 29:58]
  wire [23:0] q5; // @[Multiplier.scala 282:15]
  wire [15:0] q4; // @[Multiplier.scala 250:16 Multiplier.scala 279:6]
  wire [23:0] temp4; // @[Cat.scala 29:58]
  wire [23:0] q6; // @[Multiplier.scala 285:15]
  wire [7:0] result1; // @[Multiplier.scala 287:19]
  wire [31:0] result; // @[Cat.scala 29:58]
  wire [31:0] _T_31; // @[Multiplier.scala 291:43]
  wire [31:0] result_complement; // @[Multiplier.scala 291:46]
  wire [31:0] _T_35; // @[Multiplier.scala 293:68]
  vedic_8x8 z1 ( // @[Multiplier.scala 258:18]
    .io_a(z1_io_a),
    .io_b(z1_io_b),
    .io_c(z1_io_c)
  );
  vedic_8x8 z2 ( // @[Multiplier.scala 263:18]
    .io_a(z2_io_a),
    .io_b(z2_io_b),
    .io_c(z2_io_c)
  );
  vedic_8x8 z3 ( // @[Multiplier.scala 267:18]
    .io_a(z3_io_a),
    .io_b(z3_io_b),
    .io_c(z3_io_c)
  );
  vedic_4x4 z4 ( // @[Multiplier.scala 271:18]
    .io_a(z4_io_a),
    .io_b(z4_io_b),
    .io_c(z4_io_c)
  );
  assign _T_2 = ~io_a; // @[Multiplier.scala 254:38]
  assign in1_complement = _T_2 + 16'h1; // @[Multiplier.scala 254:41]
  assign input1 = io_a[15] ? in1_complement : io_a; // @[Multiplier.scala 255:19]
  assign q0 = z1_io_c; // @[Multiplier.scala 240:16 Multiplier.scala 262:6]
  assign _T_16 = {8'h0,q0[15:8]}; // @[Cat.scala 29:58]
  assign q1 = z2_io_c; // @[Multiplier.scala 241:16 Multiplier.scala 266:6]
  assign temp1 = {{2'd0}, _T_16}; // @[Multiplier.scala 245:19 Multiplier.scala 278:9]
  assign _GEN_0 = {{2'd0}, q1}; // @[Multiplier.scala 279:18]
  assign _T_19 = _GEN_0 + temp1; // @[Multiplier.scala 279:18]
  assign q2 = z3_io_c; // @[Multiplier.scala 242:16 Multiplier.scala 270:6]
  assign temp2 = {8'h0,q2}; // @[Cat.scala 29:58]
  assign q3 = {{8'd0}, z4_io_c}; // @[Multiplier.scala 243:16 Multiplier.scala 274:6]
  assign temp3 = {q3,8'h0}; // @[Cat.scala 29:58]
  assign q5 = temp2 + temp3; // @[Multiplier.scala 282:15]
  assign q4 = _T_19[15:0]; // @[Multiplier.scala 250:16 Multiplier.scala 279:6]
  assign temp4 = {8'h0,q4}; // @[Cat.scala 29:58]
  assign q6 = temp4 + q5; // @[Multiplier.scala 285:15]
  assign result1 = q0[7:0]; // @[Multiplier.scala 287:19]
  assign result = {q6,result1}; // @[Cat.scala 29:58]
  assign _T_31 = ~result; // @[Multiplier.scala 291:43]
  assign result_complement = $signed(_T_31) + 32'sh1; // @[Multiplier.scala 291:46]
  assign _T_35 = {q6,result1}; // @[Multiplier.scala 293:68]
  assign io_c = io_a[15] ? $signed(result_complement) : $signed(_T_35); // @[Multiplier.scala 295:7]
  assign z1_io_a = input1[7:0]; // @[Multiplier.scala 260:11]
  assign z1_io_b = io_b[7:0]; // @[Multiplier.scala 261:11]
  assign z2_io_a = input1[15:8]; // @[Multiplier.scala 264:11]
  assign z2_io_b = io_b[7:0]; // @[Multiplier.scala 265:11]
  assign z3_io_a = input1[7:0]; // @[Multiplier.scala 268:11]
  assign z3_io_b = io_b[15:8]; // @[Multiplier.scala 269:11]
  assign z4_io_a = input1[11:8]; // @[Multiplier.scala 272:11]
  assign z4_io_b = io_b[11:8]; // @[Multiplier.scala 273:11]
endmodule
