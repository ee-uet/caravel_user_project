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
module PWM(
  input         clock,
  input         reset,
  input         io_reg_val_we,
  input  [31:0] io_reg_val_di,
  output [31:0] io_reg_val_do,
  input         io_reg_cfg_we,
  input  [31:0] io_reg_cfg_di,
  output [31:0] io_reg_cfg_do,
  input         io_reg_dat_we,
  input  [31:0] io_reg_dat_di,
  output [31:0] io_reg_dat_do,
  input         io_reg_duty_we,
  input  [31:0] io_reg_duty_di,
  output [31:0] io_reg_duty_do,
  input  [15:0] io_reg_pid_out,
  output        io_pwm_h,
  output        io_pwm_l,
  output        io_irq_out,
  output        io_rawirq_out,
  input         io_sync_in,
  output        io_sync_out,
  input         io_pwm_test,
  input         io_clo_test
);
  reg [31:0] value_cur; // @[PWM.scala 40:26]
  reg [31:0] _RAND_0;
  reg [31:0] value_reload; // @[PWM.scala 41:29]
  reg [31:0] _RAND_1;
  reg [31:0] pwm_duty; // @[PWM.scala 42:25]
  reg [31:0] _RAND_2;
  reg [31:0] reg_duty; // @[PWM.scala 43:25]
  reg [31:0] _RAND_3;
  reg  enable; // @[PWM.scala 50:23]
  reg [31:0] _RAND_4;
  reg  cfg_pwm_sync; // @[PWM.scala 51:29]
  reg [31:0] _RAND_5;
  reg  cfg_byp_en; // @[PWM.scala 52:27]
  reg [31:0] _RAND_6;
  reg  stopOut; // @[PWM.scala 54:24]
  reg [31:0] _RAND_7;
  reg  irqOut; // @[PWM.scala 55:23]
  reg [31:0] _RAND_8;
  reg  last_loc_enable; // @[PWM.scala 58:28]
  reg [31:0] _RAND_9;
  reg  updown; // @[PWM.scala 61:23]
  reg [31:0] _RAND_10;
  reg  irq_ena; // @[PWM.scala 64:24]
  reg [31:0] _RAND_11;
  reg  pid_out_sel; // @[PWM.scala 67:28]
  reg [31:0] _RAND_12;
  reg [3:0] pwm_db; // @[PWM.scala 70:23]
  reg [31:0] _RAND_13;
  wire  _T; // @[PWM.scala 80:13]
  wire [15:0] _T_1; // @[PWM.scala 81:40]
  reg [31:0] proc_offset; // @[PWM.scala 87:24]
  reg [31:0] _RAND_14;
  reg  pwm_ld; // @[PWM.scala 88:19]
  reg [31:0] _RAND_15;
  reg  pwm_hd; // @[PWM.scala 89:19]
  reg [31:0] _RAND_16;
  wire [4:0] pwm_db_twice; // @[PWM.scala 92:30]
  wire [31:0] _GEN_28; // @[PWM.scala 94:32]
  wire  _T_2; // @[PWM.scala 94:32]
  wire [31:0] _T_4; // @[PWM.scala 94:79]
  wire  _T_5; // @[PWM.scala 94:62]
  wire  _T_6; // @[PWM.scala 94:49]
  wire  _T_7; // @[PWM.scala 95:36]
  wire [31:0] _GEN_32; // @[PWM.scala 96:37]
  wire [31:0] _T_13; // @[PWM.scala 96:37]
  wire  _T_15; // @[PWM.scala 97:23]
  wire [31:0] _T_17; // @[PWM.scala 97:65]
  wire  _T_18; // @[PWM.scala 97:50]
  wire  _T_20; // @[PWM.scala 102:30]
  wire  _T_21; // @[PWM.scala 102:28]
  wire [3:0] _T_25; // @[Cat.scala 29:58]
  wire [27:0] _T_28; // @[Cat.scala 29:58]
  wire [3:0] _T_36; // @[PWM.scala 112:35]
  wire  _GEN_4; // @[PWM.scala 107:23]
  wire  _GEN_9; // @[PWM.scala 107:23]
  wire [31:0] value_cur_plus; // @[PWM.scala 127:38]
  wire [31:0] value_cur_minus; // @[PWM.scala 128:39]
  wire  byp_enable; // @[PWM.scala 130:23]
  wire  _T_48; // @[PWM.scala 143:18]
  wire  _T_50; // @[PWM.scala 146:30]
  wire  _T_51; // @[PWM.scala 152:33]
  wire  _T_53; // @[PWM.scala 168:33]
  wire  _T_57; // @[PWM.scala 182:22]
  assign _T = cfg_byp_en ? io_clo_test : pid_out_sel; // @[PWM.scala 80:13]
  assign _T_1 = io_reg_pid_out; // @[PWM.scala 81:40]
  assign pwm_db_twice = {pwm_db, 1'h0}; // @[PWM.scala 92:30]
  assign _GEN_28 = {{27'd0}, pwm_db_twice}; // @[PWM.scala 94:32]
  assign _T_2 = pwm_duty >= _GEN_28; // @[PWM.scala 94:32]
  assign _T_4 = value_reload - _GEN_28; // @[PWM.scala 94:79]
  assign _T_5 = pwm_duty <= _T_4; // @[PWM.scala 94:62]
  assign _T_6 = _T_2 & _T_5; // @[PWM.scala 94:49]
  assign _T_7 = pwm_duty < _GEN_28; // @[PWM.scala 95:36]
  assign _GEN_32 = {{28'd0}, pwm_db}; // @[PWM.scala 96:37]
  assign _T_13 = proc_offset - _GEN_32; // @[PWM.scala 96:37]
  assign _T_15 = value_cur > proc_offset; // @[PWM.scala 97:23]
  assign _T_17 = value_reload - _GEN_32; // @[PWM.scala 97:65]
  assign _T_18 = value_cur < _T_17; // @[PWM.scala 97:50]
  assign _T_20 = ~irqOut; // @[PWM.scala 102:30]
  assign _T_21 = stopOut & _T_20; // @[PWM.scala 102:28]
  assign _T_25 = {pid_out_sel,irq_ena,updown,enable}; // @[Cat.scala 29:58]
  assign _T_28 = {22'h0,cfg_byp_en,cfg_pwm_sync,pwm_db}; // @[Cat.scala 29:58]
  assign _T_36 = io_reg_cfg_di[7:4] + 4'h2; // @[PWM.scala 112:35]
  assign _GEN_4 = io_reg_cfg_we ? io_reg_cfg_di[1] : updown; // @[PWM.scala 107:23]
  assign _GEN_9 = io_reg_cfg_we ? io_reg_cfg_di[9] : cfg_byp_en; // @[PWM.scala 107:23]
  assign value_cur_plus = value_cur + 32'h1; // @[PWM.scala 127:38]
  assign value_cur_minus = value_cur - 32'h1; // @[PWM.scala 128:39]
  assign byp_enable = cfg_byp_en ? io_pwm_test : enable; // @[PWM.scala 130:23]
  assign _T_48 = irq_ena & _T_21; // @[PWM.scala 143:18]
  assign _T_50 = ~last_loc_enable; // @[PWM.scala 146:30]
  assign _T_51 = value_cur == value_reload; // @[PWM.scala 152:33]
  assign _T_53 = value_cur == 32'h0; // @[PWM.scala 168:33]
  assign _T_57 = cfg_pwm_sync & io_sync_in; // @[PWM.scala 182:22]
  assign io_reg_val_do = value_reload; // @[PWM.scala 118:17]
  assign io_reg_cfg_do = {_T_28,_T_25}; // @[PWM.scala 105:17]
  assign io_reg_dat_do = value_cur; // @[PWM.scala 125:17]
  assign io_reg_duty_do = pwm_duty; // @[PWM.scala 73:18]
  assign io_pwm_h = pwm_hd & byp_enable; // @[PWM.scala 179:12]
  assign io_pwm_l = pwm_ld & byp_enable; // @[PWM.scala 180:12]
  assign io_irq_out = irqOut; // @[PWM.scala 101:14]
  assign io_rawirq_out = stopOut & _T_20; // @[PWM.scala 102:17]
  assign io_sync_out = value_cur == 32'h0; // @[PWM.scala 181:15]
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
  value_cur = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  value_reload = _RAND_1[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  pwm_duty = _RAND_2[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  reg_duty = _RAND_3[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  enable = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  cfg_pwm_sync = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  cfg_byp_en = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  stopOut = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  irqOut = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  last_loc_enable = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  updown = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  irq_ena = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  pid_out_sel = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  pwm_db = _RAND_13[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  proc_offset = _RAND_14[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  pwm_ld = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  pwm_hd = _RAND_16[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      value_cur <= 32'h0;
    end else if (_T_57) begin
      value_cur <= 32'h0;
    end else if (io_reg_dat_we) begin
      value_cur <= io_reg_dat_di;
    end else if (byp_enable) begin
      if (updown) begin
        if (_T_50) begin
          value_cur <= 32'h0;
        end else if (_T_51) begin
          value_cur <= 32'h0;
        end else begin
          value_cur <= value_cur_plus;
        end
      end else if (_T_50) begin
        value_cur <= value_reload;
      end else if (_T_53) begin
        value_cur <= value_reload;
      end else begin
        value_cur <= value_cur_minus;
      end
    end
    if (reset) begin
      value_reload <= 32'hfff;
    end else if (io_reg_val_we) begin
      value_reload <= io_reg_val_di;
    end
    if (reset) begin
      pwm_duty <= 32'h0;
    end else if (stopOut) begin
      if (_T) begin
        pwm_duty <= {{16'd0}, _T_1};
      end else begin
        pwm_duty <= reg_duty;
      end
    end
    if (reset) begin
      reg_duty <= 32'h7ff;
    end else if (io_reg_duty_we) begin
      reg_duty <= io_reg_duty_di;
    end
    if (reset) begin
      enable <= 1'h0;
    end else if (io_reg_cfg_we) begin
      enable <= io_reg_cfg_di[0];
    end
    if (reset) begin
      cfg_pwm_sync <= 1'h0;
    end else if (io_reg_cfg_we) begin
      cfg_pwm_sync <= io_reg_cfg_di[8];
    end
    cfg_byp_en <= reset | _GEN_9;
    if (reset) begin
      stopOut <= 1'h0;
    end else if (!(io_reg_dat_we)) begin
      if (byp_enable) begin
        if (updown) begin
          if (_T_50) begin
            stopOut <= 1'h0;
          end else begin
            stopOut <= _T_51;
          end
        end else if (_T_50) begin
          stopOut <= 1'h0;
        end else begin
          stopOut <= _T_53;
        end
      end
    end
    if (reset) begin
      irqOut <= 1'h0;
    end else if (!(io_reg_dat_we)) begin
      if (byp_enable) begin
        irqOut <= _T_48;
      end
    end
    if (cfg_byp_en) begin
      last_loc_enable <= io_pwm_test;
    end else begin
      last_loc_enable <= enable;
    end
    updown <= reset | _GEN_4;
    if (reset) begin
      irq_ena <= 1'h0;
    end else if (io_reg_cfg_we) begin
      irq_ena <= io_reg_cfg_di[2];
    end
    if (reset) begin
      pid_out_sel <= 1'h0;
    end else if (io_reg_cfg_we) begin
      pid_out_sel <= io_reg_cfg_di[3];
    end
    if (reset) begin
      pwm_db <= 4'h2;
    end else if (io_reg_cfg_we) begin
      pwm_db <= _T_36;
    end
    if (_T_6) begin
      proc_offset <= pwm_duty;
    end else if (_T_7) begin
      proc_offset <= {{27'd0}, pwm_db_twice};
    end else begin
      proc_offset <= _T_4;
    end
    pwm_ld <= _T_15 & _T_18;
    pwm_hd <= value_cur < _T_13;
  end
endmodule
