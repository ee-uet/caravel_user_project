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
module MotorControl(
  input         clock,
  input         reset,
  input  [11:0] io_wb_adr_i,
  input  [31:0] io_wb_dat_i,
  input         io_wb_we_i,
  input         io_wb_cs_i,
  output        io_wb_ack_o,
  output [31:0] io_wb_dat_o,
  output        io_irq,
  input         io_QEI_ChA,
  input         io_QEI_ChB,
  output        io_pwm_h,
  output        io_pwm_l,
  input         io_sync_in,
  output        io_sync_out,
  input         io_pwm_test,
  input         io_clo_test
);
  wire [11:0] IL_module_io_bus_adr_i; // @[MotorControl.scala 42:25]
  wire  IL_module_io_bus_we_i; // @[MotorControl.scala 42:25]
  wire  IL_module_io_bus_cs_i; // @[MotorControl.scala 42:25]
  wire  IL_module_io_bus_ack_o; // @[MotorControl.scala 42:25]
  wire [31:0] IL_module_io_bus_dat_o; // @[MotorControl.scala 42:25]
  wire  IL_module_io_tmr_val_we; // @[MotorControl.scala 42:25]
  wire [31:0] IL_module_io_tmr_val_do; // @[MotorControl.scala 42:25]
  wire  IL_module_io_tmr_dat_we; // @[MotorControl.scala 42:25]
  wire [31:0] IL_module_io_tmr_dat_do; // @[MotorControl.scala 42:25]
  wire  IL_module_io_tmr_duty_we; // @[MotorControl.scala 42:25]
  wire [31:0] IL_module_io_tmr_duty_do; // @[MotorControl.scala 42:25]
  wire  IL_module_io_tmr_cfg_we; // @[MotorControl.scala 42:25]
  wire [31:0] IL_module_io_tmr_cfg_do; // @[MotorControl.scala 42:25]
  wire  IL_module_io_qei_count_we; // @[MotorControl.scala 42:25]
  wire [31:0] IL_module_io_qei_count_do; // @[MotorControl.scala 42:25]
  wire  IL_module_io_qei_cfg_we; // @[MotorControl.scala 42:25]
  wire [31:0] IL_module_io_qei_cfg_do; // @[MotorControl.scala 42:25]
  wire [15:0] IL_module_io_qei_speed_do; // @[MotorControl.scala 42:25]
  wire  IL_module_io_pid_kp_we; // @[MotorControl.scala 42:25]
  wire [15:0] IL_module_io_pid_kp_do; // @[MotorControl.scala 42:25]
  wire  IL_module_io_pid_ki_we; // @[MotorControl.scala 42:25]
  wire [15:0] IL_module_io_pid_ki_do; // @[MotorControl.scala 42:25]
  wire  IL_module_io_pid_kd_we; // @[MotorControl.scala 42:25]
  wire [15:0] IL_module_io_pid_kd_do; // @[MotorControl.scala 42:25]
  wire  IL_module_io_pid_ref_we; // @[MotorControl.scala 42:25]
  wire [15:0] IL_module_io_pid_ref_do; // @[MotorControl.scala 42:25]
  wire  IL_module_io_pid_fb_we; // @[MotorControl.scala 42:25]
  wire [15:0] IL_module_io_pid_fb_do; // @[MotorControl.scala 42:25]
  wire  IL_module_io_pid_cfg_we; // @[MotorControl.scala 42:25]
  wire [15:0] IL_module_io_pid_cfg_do; // @[MotorControl.scala 42:25]
  wire  timer_module_clock; // @[MotorControl.scala 52:28]
  wire  timer_module_reset; // @[MotorControl.scala 52:28]
  wire  timer_module_io_reg_val_we; // @[MotorControl.scala 52:28]
  wire [31:0] timer_module_io_reg_val_di; // @[MotorControl.scala 52:28]
  wire [31:0] timer_module_io_reg_val_do; // @[MotorControl.scala 52:28]
  wire  timer_module_io_reg_cfg_we; // @[MotorControl.scala 52:28]
  wire [31:0] timer_module_io_reg_cfg_di; // @[MotorControl.scala 52:28]
  wire [31:0] timer_module_io_reg_cfg_do; // @[MotorControl.scala 52:28]
  wire  timer_module_io_reg_dat_we; // @[MotorControl.scala 52:28]
  wire [31:0] timer_module_io_reg_dat_di; // @[MotorControl.scala 52:28]
  wire [31:0] timer_module_io_reg_dat_do; // @[MotorControl.scala 52:28]
  wire  timer_module_io_reg_duty_we; // @[MotorControl.scala 52:28]
  wire [31:0] timer_module_io_reg_duty_di; // @[MotorControl.scala 52:28]
  wire [31:0] timer_module_io_reg_duty_do; // @[MotorControl.scala 52:28]
  wire [15:0] timer_module_io_reg_pid_out; // @[MotorControl.scala 52:28]
  wire  timer_module_io_pwm_h; // @[MotorControl.scala 52:28]
  wire  timer_module_io_pwm_l; // @[MotorControl.scala 52:28]
  wire  timer_module_io_irq_out; // @[MotorControl.scala 52:28]
  wire  timer_module_io_rawirq_out; // @[MotorControl.scala 52:28]
  wire  timer_module_io_sync_in; // @[MotorControl.scala 52:28]
  wire  timer_module_io_sync_out; // @[MotorControl.scala 52:28]
  wire  timer_module_io_pwm_test; // @[MotorControl.scala 52:28]
  wire  timer_module_io_clo_test; // @[MotorControl.scala 52:28]
  wire  QEI_clock; // @[MotorControl.scala 83:19]
  wire  QEI_reset; // @[MotorControl.scala 83:19]
  wire  QEI_io_quadA; // @[MotorControl.scala 83:19]
  wire  QEI_io_quadB; // @[MotorControl.scala 83:19]
  wire  QEI_io_raw_irq; // @[MotorControl.scala 83:19]
  wire  QEI_io_reg_count_we; // @[MotorControl.scala 83:19]
  wire [31:0] QEI_io_reg_count_di; // @[MotorControl.scala 83:19]
  wire [31:0] QEI_io_reg_count_do; // @[MotorControl.scala 83:19]
  wire  QEI_io_reg_cfg_we; // @[MotorControl.scala 83:19]
  wire [31:0] QEI_io_reg_cfg_di; // @[MotorControl.scala 83:19]
  wire [31:0] QEI_io_reg_cfg_do; // @[MotorControl.scala 83:19]
  wire [15:0] QEI_io_reg_speed_do; // @[MotorControl.scala 83:19]
  wire  QEI_io_fb_period; // @[MotorControl.scala 83:19]
  wire  PID_clock; // @[MotorControl.scala 99:19]
  wire  PID_reset; // @[MotorControl.scala 99:19]
  wire  PID_io_fb_period; // @[MotorControl.scala 99:19]
  wire  PID_io_raw_irq; // @[MotorControl.scala 99:19]
  wire  PID_io_reg_kp_we; // @[MotorControl.scala 99:19]
  wire [15:0] PID_io_reg_kp_di; // @[MotorControl.scala 99:19]
  wire [15:0] PID_io_reg_kp_do; // @[MotorControl.scala 99:19]
  wire  PID_io_reg_ki_we; // @[MotorControl.scala 99:19]
  wire [15:0] PID_io_reg_ki_di; // @[MotorControl.scala 99:19]
  wire [15:0] PID_io_reg_ki_do; // @[MotorControl.scala 99:19]
  wire  PID_io_reg_kd_we; // @[MotorControl.scala 99:19]
  wire [15:0] PID_io_reg_kd_di; // @[MotorControl.scala 99:19]
  wire [15:0] PID_io_reg_kd_do; // @[MotorControl.scala 99:19]
  wire  PID_io_reg_ref_we; // @[MotorControl.scala 99:19]
  wire [15:0] PID_io_reg_ref_di; // @[MotorControl.scala 99:19]
  wire [15:0] PID_io_reg_ref_do; // @[MotorControl.scala 99:19]
  wire  PID_io_reg_fb_we; // @[MotorControl.scala 99:19]
  wire [15:0] PID_io_reg_fb_di; // @[MotorControl.scala 99:19]
  wire [15:0] PID_io_reg_fb_do; // @[MotorControl.scala 99:19]
  wire  PID_io_reg_cfg_we; // @[MotorControl.scala 99:19]
  wire [15:0] PID_io_reg_cfg_di; // @[MotorControl.scala 99:19]
  wire [15:0] PID_io_reg_cfg_do; // @[MotorControl.scala 99:19]
  wire [15:0] PID_io_speed_fb_in; // @[MotorControl.scala 99:19]
  wire [15:0] PID_io_pid_out; // @[MotorControl.scala 99:19]
  wire [7:0] _T_1; // @[MotorControl.scala 104:44]
  Interlink_Module IL_module ( // @[MotorControl.scala 42:25]
    .io_bus_adr_i(IL_module_io_bus_adr_i),
    .io_bus_we_i(IL_module_io_bus_we_i),
    .io_bus_cs_i(IL_module_io_bus_cs_i),
    .io_bus_ack_o(IL_module_io_bus_ack_o),
    .io_bus_dat_o(IL_module_io_bus_dat_o),
    .io_tmr_val_we(IL_module_io_tmr_val_we),
    .io_tmr_val_do(IL_module_io_tmr_val_do),
    .io_tmr_dat_we(IL_module_io_tmr_dat_we),
    .io_tmr_dat_do(IL_module_io_tmr_dat_do),
    .io_tmr_duty_we(IL_module_io_tmr_duty_we),
    .io_tmr_duty_do(IL_module_io_tmr_duty_do),
    .io_tmr_cfg_we(IL_module_io_tmr_cfg_we),
    .io_tmr_cfg_do(IL_module_io_tmr_cfg_do),
    .io_qei_count_we(IL_module_io_qei_count_we),
    .io_qei_count_do(IL_module_io_qei_count_do),
    .io_qei_cfg_we(IL_module_io_qei_cfg_we),
    .io_qei_cfg_do(IL_module_io_qei_cfg_do),
    .io_qei_speed_do(IL_module_io_qei_speed_do),
    .io_pid_kp_we(IL_module_io_pid_kp_we),
    .io_pid_kp_do(IL_module_io_pid_kp_do),
    .io_pid_ki_we(IL_module_io_pid_ki_we),
    .io_pid_ki_do(IL_module_io_pid_ki_do),
    .io_pid_kd_we(IL_module_io_pid_kd_we),
    .io_pid_kd_do(IL_module_io_pid_kd_do),
    .io_pid_ref_we(IL_module_io_pid_ref_we),
    .io_pid_ref_do(IL_module_io_pid_ref_do),
    .io_pid_fb_we(IL_module_io_pid_fb_we),
    .io_pid_fb_do(IL_module_io_pid_fb_do),
    .io_pid_cfg_we(IL_module_io_pid_cfg_we),
    .io_pid_cfg_do(IL_module_io_pid_cfg_do)
  );
  PWM timer_module ( // @[MotorControl.scala 52:28]
    .clock(timer_module_clock),
    .reset(timer_module_reset),
    .io_reg_val_we(timer_module_io_reg_val_we),
    .io_reg_val_di(timer_module_io_reg_val_di),
    .io_reg_val_do(timer_module_io_reg_val_do),
    .io_reg_cfg_we(timer_module_io_reg_cfg_we),
    .io_reg_cfg_di(timer_module_io_reg_cfg_di),
    .io_reg_cfg_do(timer_module_io_reg_cfg_do),
    .io_reg_dat_we(timer_module_io_reg_dat_we),
    .io_reg_dat_di(timer_module_io_reg_dat_di),
    .io_reg_dat_do(timer_module_io_reg_dat_do),
    .io_reg_duty_we(timer_module_io_reg_duty_we),
    .io_reg_duty_di(timer_module_io_reg_duty_di),
    .io_reg_duty_do(timer_module_io_reg_duty_do),
    .io_reg_pid_out(timer_module_io_reg_pid_out),
    .io_pwm_h(timer_module_io_pwm_h),
    .io_pwm_l(timer_module_io_pwm_l),
    .io_irq_out(timer_module_io_irq_out),
    .io_rawirq_out(timer_module_io_rawirq_out),
    .io_sync_in(timer_module_io_sync_in),
    .io_sync_out(timer_module_io_sync_out),
    .io_pwm_test(timer_module_io_pwm_test),
    .io_clo_test(timer_module_io_clo_test)
  );
  Quad_Encoder QEI ( // @[MotorControl.scala 83:19]
    .clock(QEI_clock),
    .reset(QEI_reset),
    .io_quadA(QEI_io_quadA),
    .io_quadB(QEI_io_quadB),
    .io_raw_irq(QEI_io_raw_irq),
    .io_reg_count_we(QEI_io_reg_count_we),
    .io_reg_count_di(QEI_io_reg_count_di),
    .io_reg_count_do(QEI_io_reg_count_do),
    .io_reg_cfg_we(QEI_io_reg_cfg_we),
    .io_reg_cfg_di(QEI_io_reg_cfg_di),
    .io_reg_cfg_do(QEI_io_reg_cfg_do),
    .io_reg_speed_do(QEI_io_reg_speed_do),
    .io_fb_period(QEI_io_fb_period)
  );
  PID_Controller PID ( // @[MotorControl.scala 99:19]
    .clock(PID_clock),
    .reset(PID_reset),
    .io_fb_period(PID_io_fb_period),
    .io_raw_irq(PID_io_raw_irq),
    .io_reg_kp_we(PID_io_reg_kp_we),
    .io_reg_kp_di(PID_io_reg_kp_di),
    .io_reg_kp_do(PID_io_reg_kp_do),
    .io_reg_ki_we(PID_io_reg_ki_we),
    .io_reg_ki_di(PID_io_reg_ki_di),
    .io_reg_ki_do(PID_io_reg_ki_do),
    .io_reg_kd_we(PID_io_reg_kd_we),
    .io_reg_kd_di(PID_io_reg_kd_di),
    .io_reg_kd_do(PID_io_reg_kd_do),
    .io_reg_ref_we(PID_io_reg_ref_we),
    .io_reg_ref_di(PID_io_reg_ref_di),
    .io_reg_ref_do(PID_io_reg_ref_do),
    .io_reg_fb_we(PID_io_reg_fb_we),
    .io_reg_fb_di(PID_io_reg_fb_di),
    .io_reg_fb_do(PID_io_reg_fb_do),
    .io_reg_cfg_we(PID_io_reg_cfg_we),
    .io_reg_cfg_di(PID_io_reg_cfg_di),
    .io_reg_cfg_do(PID_io_reg_cfg_do),
    .io_speed_fb_in(PID_io_speed_fb_in),
    .io_pid_out(PID_io_pid_out)
  );
  assign _T_1 = io_wb_dat_i[7:0]; // @[MotorControl.scala 104:44]
  assign io_wb_ack_o = IL_module_io_bus_ack_o; // @[MotorControl.scala 49:15]
  assign io_wb_dat_o = IL_module_io_bus_dat_o; // @[MotorControl.scala 48:15]
  assign io_irq = timer_module_io_irq_out; // @[MotorControl.scala 70:11]
  assign io_pwm_h = timer_module_io_pwm_h; // @[MotorControl.scala 78:13]
  assign io_pwm_l = timer_module_io_pwm_l; // @[MotorControl.scala 79:13]
  assign io_sync_out = timer_module_io_sync_out; // @[MotorControl.scala 74:16]
  assign IL_module_io_bus_adr_i = io_wb_adr_i; // @[MotorControl.scala 45:26]
  assign IL_module_io_bus_we_i = io_wb_we_i; // @[MotorControl.scala 47:25]
  assign IL_module_io_bus_cs_i = io_wb_cs_i; // @[MotorControl.scala 46:25]
  assign IL_module_io_tmr_val_do = timer_module_io_reg_val_do; // @[MotorControl.scala 55:28]
  assign IL_module_io_tmr_dat_do = timer_module_io_reg_dat_do; // @[MotorControl.scala 63:28]
  assign IL_module_io_tmr_duty_do = timer_module_io_reg_duty_do; // @[MotorControl.scala 67:29]
  assign IL_module_io_tmr_cfg_do = timer_module_io_reg_cfg_do; // @[MotorControl.scala 59:28]
  assign IL_module_io_qei_count_do = QEI_io_reg_count_do; // @[MotorControl.scala 90:29]
  assign IL_module_io_qei_cfg_do = QEI_io_reg_cfg_do; // @[MotorControl.scala 94:27]
  assign IL_module_io_qei_speed_do = QEI_io_reg_speed_do; // @[MotorControl.scala 96:29]
  assign IL_module_io_pid_kp_do = PID_io_reg_kp_do; // @[MotorControl.scala 105:27]
  assign IL_module_io_pid_ki_do = PID_io_reg_ki_do; // @[MotorControl.scala 109:27]
  assign IL_module_io_pid_kd_do = PID_io_reg_kd_do; // @[MotorControl.scala 113:27]
  assign IL_module_io_pid_ref_do = PID_io_reg_ref_do; // @[MotorControl.scala 117:28]
  assign IL_module_io_pid_fb_do = PID_io_reg_fb_do; // @[MotorControl.scala 121:27]
  assign IL_module_io_pid_cfg_do = PID_io_reg_cfg_do; // @[MotorControl.scala 125:28]
  assign timer_module_clock = clock;
  assign timer_module_reset = reset;
  assign timer_module_io_reg_val_we = IL_module_io_tmr_val_we; // @[MotorControl.scala 53:31]
  assign timer_module_io_reg_val_di = io_wb_dat_i; // @[MotorControl.scala 54:31]
  assign timer_module_io_reg_cfg_we = IL_module_io_tmr_cfg_we; // @[MotorControl.scala 57:31]
  assign timer_module_io_reg_cfg_di = io_wb_dat_i; // @[MotorControl.scala 58:31]
  assign timer_module_io_reg_dat_we = IL_module_io_tmr_dat_we; // @[MotorControl.scala 61:31]
  assign timer_module_io_reg_dat_di = io_wb_dat_i; // @[MotorControl.scala 62:31]
  assign timer_module_io_reg_duty_we = IL_module_io_tmr_duty_we; // @[MotorControl.scala 65:32]
  assign timer_module_io_reg_duty_di = io_wb_dat_i; // @[MotorControl.scala 66:32]
  assign timer_module_io_reg_pid_out = PID_io_pid_out; // @[MotorControl.scala 69:32]
  assign timer_module_io_sync_in = io_sync_in; // @[MotorControl.scala 71:28]
  assign timer_module_io_pwm_test = io_pwm_test; // @[MotorControl.scala 73:29]
  assign timer_module_io_clo_test = io_clo_test; // @[MotorControl.scala 72:29]
  assign QEI_clock = clock;
  assign QEI_reset = reset;
  assign QEI_io_quadA = io_QEI_ChA; // @[MotorControl.scala 84:16]
  assign QEI_io_quadB = io_QEI_ChB; // @[MotorControl.scala 85:16]
  assign QEI_io_raw_irq = timer_module_io_rawirq_out; // @[MotorControl.scala 86:18]
  assign QEI_io_reg_count_we = IL_module_io_qei_count_we; // @[MotorControl.scala 88:23]
  assign QEI_io_reg_count_di = io_wb_dat_i; // @[MotorControl.scala 89:23]
  assign QEI_io_reg_cfg_we = IL_module_io_qei_cfg_we; // @[MotorControl.scala 92:21]
  assign QEI_io_reg_cfg_di = io_wb_dat_i; // @[MotorControl.scala 93:21]
  assign PID_clock = clock;
  assign PID_reset = reset;
  assign PID_io_fb_period = QEI_io_fb_period; // @[MotorControl.scala 100:20]
  assign PID_io_raw_irq = timer_module_io_rawirq_out; // @[MotorControl.scala 128:18]
  assign PID_io_reg_kp_we = IL_module_io_pid_kp_we; // @[MotorControl.scala 103:20]
  assign PID_io_reg_kp_di = {{8{_T_1[7]}},_T_1}; // @[MotorControl.scala 104:20]
  assign PID_io_reg_ki_we = IL_module_io_pid_ki_we; // @[MotorControl.scala 107:20]
  assign PID_io_reg_ki_di = {{8{_T_1[7]}},_T_1}; // @[MotorControl.scala 108:20]
  assign PID_io_reg_kd_we = IL_module_io_pid_kd_we; // @[MotorControl.scala 111:20]
  assign PID_io_reg_kd_di = {{8{_T_1[7]}},_T_1}; // @[MotorControl.scala 112:20]
  assign PID_io_reg_ref_we = IL_module_io_pid_ref_we; // @[MotorControl.scala 115:21]
  assign PID_io_reg_ref_di = io_wb_dat_i[15:0]; // @[MotorControl.scala 116:21]
  assign PID_io_reg_fb_we = IL_module_io_pid_fb_we; // @[MotorControl.scala 119:20]
  assign PID_io_reg_fb_di = io_wb_dat_i[15:0]; // @[MotorControl.scala 120:20]
  assign PID_io_reg_cfg_we = IL_module_io_pid_cfg_we; // @[MotorControl.scala 123:21]
  assign PID_io_reg_cfg_di = io_wb_dat_i[15:0]; // @[MotorControl.scala 124:21]
  assign PID_io_speed_fb_in = QEI_io_reg_speed_do; // @[MotorControl.scala 101:22]
endmodule
