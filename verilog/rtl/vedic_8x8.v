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
module vedic_8x8(
  input  [7:0]  io_a,
  input  [7:0]  io_b,
  output [15:0] io_c
);
  wire [3:0] z1_io_a; // @[Multiplier.scala 193:18]
  wire [3:0] z1_io_b; // @[Multiplier.scala 193:18]
  wire [7:0] z1_io_c; // @[Multiplier.scala 193:18]
  wire [3:0] z2_io_a; // @[Multiplier.scala 198:18]
  wire [3:0] z2_io_b; // @[Multiplier.scala 198:18]
  wire [7:0] z2_io_c; // @[Multiplier.scala 198:18]
  wire [3:0] z3_io_a; // @[Multiplier.scala 202:18]
  wire [3:0] z3_io_b; // @[Multiplier.scala 202:18]
  wire [7:0] z3_io_c; // @[Multiplier.scala 202:18]
  wire [3:0] z4_io_a; // @[Multiplier.scala 206:18]
  wire [3:0] z4_io_b; // @[Multiplier.scala 206:18]
  wire [7:0] z4_io_c; // @[Multiplier.scala 206:18]
  wire [15:0] q0; // @[Multiplier.scala 176:16 Multiplier.scala 197:6]
  wire [7:0] temp1; // @[Cat.scala 29:58]
  wire [15:0] q1; // @[Multiplier.scala 177:16 Multiplier.scala 201:6]
  wire [7:0] q4; // @[Multiplier.scala 214:17]
  wire [15:0] q2; // @[Multiplier.scala 178:16 Multiplier.scala 205:6]
  wire [11:0] temp2; // @[Cat.scala 29:58]
  wire [15:0] q3; // @[Multiplier.scala 179:16 Multiplier.scala 209:6]
  wire [11:0] temp3; // @[Cat.scala 29:58]
  wire [11:0] q5; // @[Multiplier.scala 217:15]
  wire [11:0] temp4; // @[Cat.scala 29:58]
  wire [11:0] q6; // @[Multiplier.scala 220:15]
  wire [3:0] result1; // @[Multiplier.scala 222:19]
  vedic_4x4 z1 ( // @[Multiplier.scala 193:18]
    .io_a(z1_io_a),
    .io_b(z1_io_b),
    .io_c(z1_io_c)
  );
  vedic_4x4 z2 ( // @[Multiplier.scala 198:18]
    .io_a(z2_io_a),
    .io_b(z2_io_b),
    .io_c(z2_io_c)
  );
  vedic_4x4 z3 ( // @[Multiplier.scala 202:18]
    .io_a(z3_io_a),
    .io_b(z3_io_b),
    .io_c(z3_io_c)
  );
  vedic_4x4 z4 ( // @[Multiplier.scala 206:18]
    .io_a(z4_io_a),
    .io_b(z4_io_b),
    .io_c(z4_io_c)
  );
  assign q0 = {{8'd0}, z1_io_c}; // @[Multiplier.scala 176:16 Multiplier.scala 197:6]
  assign temp1 = {4'h0,q0[7:4]}; // @[Cat.scala 29:58]
  assign q1 = {{8'd0}, z2_io_c}; // @[Multiplier.scala 177:16 Multiplier.scala 201:6]
  assign q4 = q1[7:0] + temp1; // @[Multiplier.scala 214:17]
  assign q2 = {{8'd0}, z3_io_c}; // @[Multiplier.scala 178:16 Multiplier.scala 205:6]
  assign temp2 = {4'h0,q2[7:0]}; // @[Cat.scala 29:58]
  assign q3 = {{8'd0}, z4_io_c}; // @[Multiplier.scala 179:16 Multiplier.scala 209:6]
  assign temp3 = {q3[7:0],4'h0}; // @[Cat.scala 29:58]
  assign q5 = temp2 + temp3; // @[Multiplier.scala 217:15]
  assign temp4 = {4'h0,q4}; // @[Cat.scala 29:58]
  assign q6 = temp4 + q5; // @[Multiplier.scala 220:15]
  assign result1 = q0[3:0]; // @[Multiplier.scala 222:19]
  assign io_c = {q6,result1}; // @[Multiplier.scala 227:7]
  assign z1_io_a = io_a[3:0]; // @[Multiplier.scala 195:11]
  assign z1_io_b = io_b[3:0]; // @[Multiplier.scala 196:11]
  assign z2_io_a = io_a[7:4]; // @[Multiplier.scala 199:11]
  assign z2_io_b = io_b[3:0]; // @[Multiplier.scala 200:11]
  assign z3_io_a = io_a[3:0]; // @[Multiplier.scala 203:11]
  assign z3_io_b = io_b[7:4]; // @[Multiplier.scala 204:11]
  assign z4_io_a = io_a[7:4]; // @[Multiplier.scala 207:11]
  assign z4_io_b = io_b[7:4]; // @[Multiplier.scala 208:11]
endmodule
