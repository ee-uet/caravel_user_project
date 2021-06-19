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

module vedic_4x4(
  input  [3:0] io_a,
  input  [3:0] io_b,
  output [7:0] io_c
);
  wire [1:0] z1_io_a; // @[Multiplier.scala 62:20]
  wire [1:0] z1_io_b; // @[Multiplier.scala 62:20]
  wire [3:0] z1_io_c; // @[Multiplier.scala 62:20]
  wire [1:0] z2_io_a; // @[Multiplier.scala 67:20]
  wire [1:0] z2_io_b; // @[Multiplier.scala 67:20]
  wire [3:0] z2_io_c; // @[Multiplier.scala 67:20]
  wire [1:0] z3_io_a; // @[Multiplier.scala 71:20]
  wire [1:0] z3_io_b; // @[Multiplier.scala 71:20]
  wire [3:0] z3_io_c; // @[Multiplier.scala 71:20]
  wire [1:0] z4_io_a; // @[Multiplier.scala 75:20]
  wire [1:0] z4_io_b; // @[Multiplier.scala 75:20]
  wire [3:0] z4_io_c; // @[Multiplier.scala 75:20]
  wire [3:0] q0; // @[Multiplier.scala 46:18 Multiplier.scala 66:8]
  wire [3:0] temp1; // @[Cat.scala 29:58]
  wire [3:0] q1; // @[Multiplier.scala 47:18 Multiplier.scala 70:8]
  wire [3:0] q4; // @[Multiplier.scala 83:19]
  wire [3:0] q2; // @[Multiplier.scala 48:18 Multiplier.scala 74:8]
  wire [5:0] temp2; // @[Cat.scala 29:58]
  wire [3:0] q3; // @[Multiplier.scala 49:18 Multiplier.scala 78:8]
  wire [5:0] temp3; // @[Cat.scala 29:58]
  wire [5:0] q5; // @[Multiplier.scala 86:17]
  wire [5:0] temp4; // @[Cat.scala 29:58]
  wire [5:0] q6; // @[Multiplier.scala 89:17]
  wire [1:0] result1; // @[Multiplier.scala 91:19]
  vedic_2x2 z1 ( // @[Multiplier.scala 62:20]
    .io_a(z1_io_a),
    .io_b(z1_io_b),
    .io_c(z1_io_c)
  );
  vedic_2x2 z2 ( // @[Multiplier.scala 67:20]
    .io_a(z2_io_a),
    .io_b(z2_io_b),
    .io_c(z2_io_c)
  );
  vedic_2x2 z3 ( // @[Multiplier.scala 71:20]
    .io_a(z3_io_a),
    .io_b(z3_io_b),
    .io_c(z3_io_c)
  );
  vedic_2x2 z4 ( // @[Multiplier.scala 75:20]
    .io_a(z4_io_a),
    .io_b(z4_io_b),
    .io_c(z4_io_c)
  );
  assign q0 = z1_io_c; // @[Multiplier.scala 46:18 Multiplier.scala 66:8]
  assign temp1 = {2'h0,q0[3:2]}; // @[Cat.scala 29:58]
  assign q1 = z2_io_c; // @[Multiplier.scala 47:18 Multiplier.scala 70:8]
  assign q4 = q1 + temp1; // @[Multiplier.scala 83:19]
  assign q2 = z3_io_c; // @[Multiplier.scala 48:18 Multiplier.scala 74:8]
  assign temp2 = {2'h0,q2}; // @[Cat.scala 29:58]
  assign q3 = z4_io_c; // @[Multiplier.scala 49:18 Multiplier.scala 78:8]
  assign temp3 = {q3,2'h0}; // @[Cat.scala 29:58]
  assign q5 = temp2 + temp3; // @[Multiplier.scala 86:17]
  assign temp4 = {2'h0,q4}; // @[Cat.scala 29:58]
  assign q6 = temp4 + q5; // @[Multiplier.scala 89:17]
  assign result1 = q0[1:0]; // @[Multiplier.scala 91:19]
  assign io_c = {q6,result1}; // @[Multiplier.scala 94:7]
  assign z1_io_a = io_a[1:0]; // @[Multiplier.scala 64:13]
  assign z1_io_b = io_b[1:0]; // @[Multiplier.scala 65:13]
  assign z2_io_a = io_a[3:2]; // @[Multiplier.scala 68:13]
  assign z2_io_b = io_b[1:0]; // @[Multiplier.scala 69:13]
  assign z3_io_a = io_a[1:0]; // @[Multiplier.scala 72:13]
  assign z3_io_b = io_b[3:2]; // @[Multiplier.scala 73:13]
  assign z4_io_a = io_a[3:2]; // @[Multiplier.scala 76:13]
  assign z4_io_b = io_b[3:2]; // @[Multiplier.scala 77:13]
endmodule
