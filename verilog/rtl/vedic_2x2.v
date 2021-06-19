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
module vedic_2x2(
  input  [1:0] io_a,
  input  [1:0] io_b,
  output [3:0] io_c
);
  wire  result0; // @[Multiplier.scala 19:25]
  wire  temp0; // @[Multiplier.scala 20:23]
  wire  temp1; // @[Multiplier.scala 21:23]
  wire  temp2; // @[Multiplier.scala 22:23]
  wire  result1; // @[Multiplier.scala 27:23]
  wire  temp3; // @[Multiplier.scala 28:21]
  wire  result2; // @[Multiplier.scala 30:23]
  wire  result3; // @[Multiplier.scala 31:23]
  wire [1:0] _T_8; // @[Cat.scala 29:58]
  wire [1:0] _T_9; // @[Cat.scala 29:58]
  assign result0 = io_a[0] & io_b[0]; // @[Multiplier.scala 19:25]
  assign temp0 = io_a[1] & io_b[0]; // @[Multiplier.scala 20:23]
  assign temp1 = io_a[0] & io_b[1]; // @[Multiplier.scala 21:23]
  assign temp2 = io_a[1] & io_b[1]; // @[Multiplier.scala 22:23]
  assign result1 = temp0 ^ temp1; // @[Multiplier.scala 27:23]
  assign temp3 = temp0 & temp1; // @[Multiplier.scala 28:21]
  assign result2 = temp2 ^ temp3; // @[Multiplier.scala 30:23]
  assign result3 = temp2 & temp3; // @[Multiplier.scala 31:23]
  assign _T_8 = {result1,result0}; // @[Cat.scala 29:58]
  assign _T_9 = {result3,result2}; // @[Cat.scala 29:58]
  assign io_c = {_T_9,_T_8}; // @[Multiplier.scala 33:8]
endmodule
