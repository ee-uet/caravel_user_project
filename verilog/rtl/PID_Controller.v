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
module PID_Controller(
  input         clock,
  input         reset,
  input         io_fb_period,
  input         io_raw_irq,
  input         io_reg_kp_we,
  input  [15:0] io_reg_kp_di,
  output [15:0] io_reg_kp_do,
  input         io_reg_ki_we,
  input  [15:0] io_reg_ki_di,
  output [15:0] io_reg_ki_do,
  input         io_reg_kd_we,
  input  [15:0] io_reg_kd_di,
  output [15:0] io_reg_kd_do,
  input         io_reg_ref_we,
  input  [15:0] io_reg_ref_di,
  output [15:0] io_reg_ref_do,
  input         io_reg_fb_we,
  input  [15:0] io_reg_fb_di,
  output [15:0] io_reg_fb_do,
  input         io_reg_cfg_we,
  input  [15:0] io_reg_cfg_di,
  output [15:0] io_reg_cfg_do,
  input  [15:0] io_speed_fb_in,
  output [15:0] io_pid_out
);
  wire [15:0] mul_kp_io_a; // @[PID.scala 100:22]
  wire [15:0] mul_kp_io_b; // @[PID.scala 100:22]
  wire [31:0] mul_kp_io_c; // @[PID.scala 100:22]
  wire [15:0] mul_ki_io_a; // @[PID.scala 106:22]
  wire [15:0] mul_ki_io_b; // @[PID.scala 106:22]
  wire [31:0] mul_ki_io_c; // @[PID.scala 106:22]
  wire [15:0] mul_kd_io_a; // @[PID.scala 112:22]
  wire [15:0] mul_kd_io_b; // @[PID.scala 112:22]
  wire [31:0] mul_kd_io_c; // @[PID.scala 112:22]
  reg [15:0] kp; // @[PID.scala 46:19]
  reg [31:0] _RAND_0;
  reg [15:0] ki; // @[PID.scala 47:19]
  reg [31:0] _RAND_1;
  reg [15:0] kd; // @[PID.scala 48:19]
  reg [31:0] _RAND_2;
  reg [15:0] ref_; // @[PID.scala 49:20]
  reg [31:0] _RAND_3;
  reg [15:0] feedback; // @[PID.scala 50:25]
  reg [31:0] _RAND_4;
  reg [15:0] sigma_old; // @[PID.scala 51:26]
  reg [31:0] _RAND_5;
  reg  fb_sel; // @[PID.scala 52:23]
  reg [31:0] _RAND_6;
  reg [15:0] e_prev1; // @[PID.scala 54:24]
  reg [31:0] _RAND_7;
  reg [15:0] e_prev2; // @[PID.scala 55:24]
  reg [31:0] _RAND_8;
  reg [15:0] reg_pid_out; // @[PID.scala 56:28]
  reg [31:0] _RAND_9;
  wire [31:0] _T_1; // @[PID.scala 90:49]
  wire [15:0] sigma_new; // @[PID.scala 97:27]
  wire [15:0] prop_out; // @[PID.scala 103:42]
  wire [15:0] integral_out; // @[PID.scala 109:46]
  wire [15:0] derivative_out; // @[PID.scala 115:48]
  wire [15:0] pi_sum; // @[PID.scala 118:25]
  wire  _T_17; // @[PID.scala 119:39]
  wire  _T_19; // @[PID.scala 119:62]
  wire  _T_20; // @[PID.scala 119:59]
  wire  _T_22; // @[PID.scala 120:26]
  wire  _T_24; // @[PID.scala 120:43]
  wire  _T_25; // @[PID.scala 120:40]
  wire  _T_27; // @[PID.scala 120:61]
  wire  pi_sum_overflow; // @[PID.scala 119:75]
  wire [15:0] _T_30; // @[PID.scala 125:27]
  wire [15:0] _T_33; // @[PID.scala 127:22]
  wire [15:0] _T_36; // @[PID.scala 131:26]
  wire  _T_38; // @[PID.scala 134:37]
  vedic_16x16 mul_kp ( // @[PID.scala 100:22]
    .io_a(mul_kp_io_a),
    .io_b(mul_kp_io_b),
    .io_c(mul_kp_io_c)
  );
  vedic_16x16 mul_ki ( // @[PID.scala 106:22]
    .io_a(mul_ki_io_a),
    .io_b(mul_ki_io_b),
    .io_c(mul_ki_io_c)
  );
  vedic_16x16 mul_kd ( // @[PID.scala 112:22]
    .io_a(mul_kd_io_a),
    .io_b(mul_kd_io_b),
    .io_c(mul_kd_io_c)
  );
  assign _T_1 = {31'h0,fb_sel}; // @[PID.scala 90:49]
  assign sigma_new = $signed(e_prev1) + $signed(sigma_old); // @[PID.scala 97:27]
  assign prop_out = mul_kp_io_c[15:0]; // @[PID.scala 103:42]
  assign integral_out = mul_ki_io_c[15:0]; // @[PID.scala 109:46]
  assign derivative_out = mul_kd_io_c[15:0]; // @[PID.scala 115:48]
  assign pi_sum = $signed(prop_out) + $signed(integral_out); // @[PID.scala 118:25]
  assign _T_17 = prop_out[15] & integral_out[15]; // @[PID.scala 119:39]
  assign _T_19 = ~pi_sum[15]; // @[PID.scala 119:62]
  assign _T_20 = _T_17 & _T_19; // @[PID.scala 119:59]
  assign _T_22 = ~prop_out[15]; // @[PID.scala 120:26]
  assign _T_24 = ~integral_out[15]; // @[PID.scala 120:43]
  assign _T_25 = _T_22 & _T_24; // @[PID.scala 120:40]
  assign _T_27 = _T_25 & pi_sum[15]; // @[PID.scala 120:61]
  assign pi_sum_overflow = _T_20 | _T_27; // @[PID.scala 119:75]
  assign _T_30 = $signed(feedback) - $signed(ref_); // @[PID.scala 125:27]
  assign _T_33 = $signed(ref_) - $signed(feedback); // @[PID.scala 127:22]
  assign _T_36 = $signed(pi_sum) + $signed(derivative_out); // @[PID.scala 131:26]
  assign _T_38 = pi_sum_overflow | reg_pid_out[15]; // @[PID.scala 134:37]
  assign io_reg_kp_do = kp; // @[PID.scala 59:16]
  assign io_reg_ki_do = ki; // @[PID.scala 64:16]
  assign io_reg_kd_do = kd; // @[PID.scala 69:16]
  assign io_reg_ref_do = ref_; // @[PID.scala 75:17]
  assign io_reg_fb_do = feedback; // @[PID.scala 80:16]
  assign io_reg_cfg_do = _T_1[15:0]; // @[PID.scala 90:17]
  assign io_pid_out = _T_38 ? $signed(16'sh0) : $signed(reg_pid_out); // @[PID.scala 134:14]
  assign mul_kp_io_a = e_prev1; // @[PID.scala 101:15]
  assign mul_kp_io_b = kp; // @[PID.scala 102:15]
  assign mul_ki_io_a = $signed(e_prev1) + $signed(sigma_old); // @[PID.scala 107:15]
  assign mul_ki_io_b = ki; // @[PID.scala 108:15]
  assign mul_kd_io_a = $signed(e_prev1) - $signed(e_prev2); // @[PID.scala 113:15]
  assign mul_kd_io_b = kd; // @[PID.scala 114:15]
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
  kp = _RAND_0[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  ki = _RAND_1[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  kd = _RAND_2[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  ref_ = _RAND_3[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  feedback = _RAND_4[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  sigma_old = _RAND_5[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  fb_sel = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  e_prev1 = _RAND_7[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  e_prev2 = _RAND_8[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  reg_pid_out = _RAND_9[15:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      kp <= 16'sh1;
    end else if (io_reg_kp_we) begin
      kp <= io_reg_kp_di;
    end
    if (reset) begin
      ki <= 16'sh1;
    end else if (io_reg_ki_we) begin
      ki <= io_reg_ki_di;
    end
    if (reset) begin
      kd <= 16'sh0;
    end else if (io_reg_kd_we) begin
      kd <= io_reg_kd_di;
    end
    if (reset) begin
      ref_ <= 16'sh14;
    end else if (io_reg_ref_we) begin
      ref_ <= io_reg_ref_di;
    end
    if (reset) begin
      feedback <= 16'sh0;
    end else if (fb_sel) begin
      if (io_reg_fb_we) begin
        feedback <= io_reg_fb_di;
      end
    end else begin
      feedback <= io_speed_fb_in;
    end
    if (reset) begin
      sigma_old <= 16'sh0;
    end else if (io_raw_irq) begin
      sigma_old <= sigma_new;
    end
    if (reset) begin
      fb_sel <= 1'h0;
    end else if (io_reg_cfg_we) begin
      fb_sel <= io_reg_cfg_di[0];
    end
    if (reset) begin
      e_prev1 <= 16'sh0;
    end else if (io_raw_irq) begin
      if (io_fb_period) begin
        e_prev1 <= _T_30;
      end else begin
        e_prev1 <= _T_33;
      end
    end
    if (reset) begin
      e_prev2 <= 16'sh0;
    end else if (io_raw_irq) begin
      e_prev2 <= e_prev1;
    end
    if (reset) begin
      reg_pid_out <= 16'sh0;
    end else if (io_raw_irq) begin
      reg_pid_out <= _T_36;
    end
  end
endmodule
