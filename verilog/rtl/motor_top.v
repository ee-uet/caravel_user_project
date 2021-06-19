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
module motor_top(
`ifdef USE_POWER_PINS
  inout         vccd1,
  inout         vssd1,
`endif
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
  wire  m_clock; // @[UserProjectWrapper.scala 48:63]
  wire  m_reset; // @[UserProjectWrapper.scala 48:63]
  wire [11:0] m_io_wb_adr_i; // @[UserProjectWrapper.scala 48:63]
  wire [31:0] m_io_wb_dat_i; // @[UserProjectWrapper.scala 48:63]
  wire  m_io_wb_we_i; // @[UserProjectWrapper.scala 48:63]
  wire  m_io_wb_cs_i; // @[UserProjectWrapper.scala 48:63]
  wire  m_io_wb_ack_o; // @[UserProjectWrapper.scala 48:63]
  wire [31:0] m_io_wb_dat_o; // @[UserProjectWrapper.scala 48:63]
  wire  m_io_irq; // @[UserProjectWrapper.scala 48:63]
  wire  m_io_QEI_ChA; // @[UserProjectWrapper.scala 48:63]
  wire  m_io_QEI_ChB; // @[UserProjectWrapper.scala 48:63]
  wire  m_io_pwm_h; // @[UserProjectWrapper.scala 48:63]
  wire  m_io_pwm_l; // @[UserProjectWrapper.scala 48:63]
  wire  m_io_sync_in; // @[UserProjectWrapper.scala 48:63]
  wire  m_io_sync_out; // @[UserProjectWrapper.scala 48:63]
  wire  m_io_pwm_test; // @[UserProjectWrapper.scala 48:63]
  wire  m_io_clo_test; // @[UserProjectWrapper.scala 48:63]
  MotorControl m ( // @[UserProjectWrapper.scala 48:63]
    .clock(m_clock),
    .reset(m_reset),
    .io_wb_adr_i(m_io_wb_adr_i),
    .io_wb_dat_i(m_io_wb_dat_i),
    .io_wb_we_i(m_io_wb_we_i),
    .io_wb_cs_i(m_io_wb_cs_i),
    .io_wb_ack_o(m_io_wb_ack_o),
    .io_wb_dat_o(m_io_wb_dat_o),
    .io_irq(m_io_irq),
    .io_QEI_ChA(m_io_QEI_ChA),
    .io_QEI_ChB(m_io_QEI_ChB),
    .io_pwm_h(m_io_pwm_h),
    .io_pwm_l(m_io_pwm_l),
    .io_sync_in(m_io_sync_in),
    .io_sync_out(m_io_sync_out),
    .io_pwm_test(m_io_pwm_test),
    .io_clo_test(m_io_clo_test)
  );
  assign io_wb_ack_o = m_io_wb_ack_o; // @[UserProjectWrapper.scala 49:12]
  assign io_wb_dat_o = m_io_wb_dat_o; // @[UserProjectWrapper.scala 49:12]
  assign io_irq = m_io_irq; // @[UserProjectWrapper.scala 49:12]
  assign io_pwm_h = m_io_pwm_h; // @[UserProjectWrapper.scala 49:12]
  assign io_pwm_l = m_io_pwm_l; // @[UserProjectWrapper.scala 49:12]
  assign io_sync_out = m_io_sync_out; // @[UserProjectWrapper.scala 49:12]
  assign m_clock = clock;
  assign m_reset = reset;
  assign m_io_wb_adr_i = io_wb_adr_i; // @[UserProjectWrapper.scala 49:12]
  assign m_io_wb_dat_i = io_wb_dat_i; // @[UserProjectWrapper.scala 49:12]
  assign m_io_wb_we_i = io_wb_we_i; // @[UserProjectWrapper.scala 49:12]
  assign m_io_wb_cs_i = io_wb_cs_i; // @[UserProjectWrapper.scala 49:12]
  assign m_io_QEI_ChA = io_QEI_ChA; // @[UserProjectWrapper.scala 49:12]
  assign m_io_QEI_ChB = io_QEI_ChB; // @[UserProjectWrapper.scala 49:12]
  assign m_io_sync_in = io_sync_in; // @[UserProjectWrapper.scala 49:12]
  assign m_io_pwm_test = io_pwm_test; // @[UserProjectWrapper.scala 49:12]
  assign m_io_clo_test = io_clo_test; // @[UserProjectWrapper.scala 49:12]
endmodule
