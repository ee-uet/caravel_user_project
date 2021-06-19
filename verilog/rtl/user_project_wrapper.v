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
module user_project_wrapper(
`ifdef USE_POWER_PINS
  inout          vccd1,
  inout          vdda1,
  inout          vdda2,
  inout          vssa1,
  inout          vssa2,
  inout          vccd2,
  inout          vssd2,
  inout          vssd1,
`endif
  input          wb_clk_i,
  input          wb_rst_i,
  input          wbs_stb_i,
  input          wbs_cyc_i,
  input          wbs_we_i,
  input  [3:0]   wbs_sel_i,
  input  [31:0]  wbs_dat_i,
  input  [31:0]  wbs_adr_i,
  output         wbs_ack_o,
  output [31:0]  wbs_dat_o,
  input  [127:0] la_data_in,
  output [127:0] la_data_out,
  input  [127:0] la_oenb,
  input  [37:0]  io_in,
  output [37:0]  io_out,
  output [37:0]  io_oeb,
  output [2:0]   user_irq,
  input          user_clock2,
  inout  [28:0]  analog_io
);
  wire  icon_wb_clk_i; // @[UserProjectWrapper.scala 17:20]
  wire  icon_wb_rst_i; // @[UserProjectWrapper.scala 17:20]
  wire  icon_wbs_stb_i; // @[UserProjectWrapper.scala 17:20]
  wire  icon_wbs_cyc_i; // @[UserProjectWrapper.scala 17:20]
  wire  icon_wbs_we_i; // @[UserProjectWrapper.scala 17:20]
  wire [3:0] icon_wbs_sel_i; // @[UserProjectWrapper.scala 17:20]
  wire [31:0] icon_wbs_dat_i; // @[UserProjectWrapper.scala 17:20]
  wire [31:0] icon_wbs_adr_i; // @[UserProjectWrapper.scala 17:20]
  wire  icon_wbs_ack_o; // @[UserProjectWrapper.scala 17:20]
  wire [31:0] icon_wbs_dat_o; // @[UserProjectWrapper.scala 17:20]
  wire [37:0] icon_io_in; // @[UserProjectWrapper.scala 17:20]
  wire [37:0] icon_io_out; // @[UserProjectWrapper.scala 17:20]
  wire [37:0] icon_io_oeb; // @[UserProjectWrapper.scala 17:20]
  wire [2:0] icon_irq; // @[UserProjectWrapper.scala 17:20]
  wire  icon_m_wb_clk_i; // @[UserProjectWrapper.scala 17:20]
  wire  icon_m_wb_rst_i; // @[UserProjectWrapper.scala 17:20]
  wire [11:0] icon_la_reset; // @[UserProjectWrapper.scala 17:20]
  wire [11:0] icon_m_la_reset; // @[UserProjectWrapper.scala 17:20]
  wire  icon_m_wbs_we_i; // @[UserProjectWrapper.scala 17:20]
  wire [11:0] icon_m_wbs_cs_i; // @[UserProjectWrapper.scala 17:20]
  wire [11:0] icon_m_wbs_adr_i; // @[UserProjectWrapper.scala 17:20]
  wire [31:0] icon_m_wbs_dat_i; // @[UserProjectWrapper.scala 17:20]
  wire [11:0] icon_m_wbs_ack_o; // @[UserProjectWrapper.scala 17:20]
  wire [31:0] icon_m_wbs_dat_o_0; // @[UserProjectWrapper.scala 17:20]
  wire [31:0] icon_m_wbs_dat_o_1; // @[UserProjectWrapper.scala 17:20]
  wire [31:0] icon_m_wbs_dat_o_2; // @[UserProjectWrapper.scala 17:20]
  wire [31:0] icon_m_wbs_dat_o_3; // @[UserProjectWrapper.scala 17:20]
  wire [31:0] icon_m_wbs_dat_o_4; // @[UserProjectWrapper.scala 17:20]
  wire [31:0] icon_m_wbs_dat_o_5; // @[UserProjectWrapper.scala 17:20]
  wire [31:0] icon_m_wbs_dat_o_6; // @[UserProjectWrapper.scala 17:20]
  wire [31:0] icon_m_wbs_dat_o_7; // @[UserProjectWrapper.scala 17:20]
  wire [31:0] icon_m_wbs_dat_o_8; // @[UserProjectWrapper.scala 17:20]
  wire [31:0] icon_m_wbs_dat_o_9; // @[UserProjectWrapper.scala 17:20]
  wire [31:0] icon_m_wbs_dat_o_10; // @[UserProjectWrapper.scala 17:20]
  wire [31:0] icon_m_wbs_dat_o_11; // @[UserProjectWrapper.scala 17:20]
  wire [11:0] icon_m_irqs; // @[UserProjectWrapper.scala 17:20]
  wire [7:0] icon_dsi; // @[UserProjectWrapper.scala 17:20]
  wire  icon_mt_QEI_ChA_0; // @[UserProjectWrapper.scala 17:20]
  wire  icon_mt_QEI_ChA_1; // @[UserProjectWrapper.scala 17:20]
  wire  icon_mt_QEI_ChA_2; // @[UserProjectWrapper.scala 17:20]
  wire  icon_mt_QEI_ChA_3; // @[UserProjectWrapper.scala 17:20]
  wire  icon_mt_QEI_ChB_0; // @[UserProjectWrapper.scala 17:20]
  wire  icon_mt_QEI_ChB_1; // @[UserProjectWrapper.scala 17:20]
  wire  icon_mt_QEI_ChB_2; // @[UserProjectWrapper.scala 17:20]
  wire  icon_mt_QEI_ChB_3; // @[UserProjectWrapper.scala 17:20]
  wire  icon_mt_pwm_h_0; // @[UserProjectWrapper.scala 17:20]
  wire  icon_mt_pwm_h_1; // @[UserProjectWrapper.scala 17:20]
  wire  icon_mt_pwm_h_2; // @[UserProjectWrapper.scala 17:20]
  wire  icon_mt_pwm_h_3; // @[UserProjectWrapper.scala 17:20]
  wire  icon_mt_pwm_l_0; // @[UserProjectWrapper.scala 17:20]
  wire  icon_mt_pwm_l_1; // @[UserProjectWrapper.scala 17:20]
  wire  icon_mt_pwm_l_2; // @[UserProjectWrapper.scala 17:20]
  wire  icon_mt_pwm_l_3; // @[UserProjectWrapper.scala 17:20]
  wire  icon_mt_pwm_test; // @[UserProjectWrapper.scala 17:20]
  wire  icon_mt_clo_test; // @[UserProjectWrapper.scala 17:20]
  wire [7:0] icon_mt_sync_in; // @[UserProjectWrapper.scala 17:20]
  wire  icon_mt_sync_out; // @[UserProjectWrapper.scala 17:20]
  wire  cordic_asel; // @[UserProjectWrapper.scala 29:22]
  wire [31:0] cordic_e_o; // @[UserProjectWrapper.scala 29:22]
  wire [31:0] cordic_w_o; // @[UserProjectWrapper.scala 29:22]
  wire [31:0] cordic_se_o; // @[UserProjectWrapper.scala 29:22]
  wire [31:0] cordic_sw_o; // @[UserProjectWrapper.scala 29:22]
  wire [31:0] cordic_e_i; // @[UserProjectWrapper.scala 29:22]
  wire [31:0] cordic_w_i; // @[UserProjectWrapper.scala 29:22]
  wire [31:0] cordic_se_i; // @[UserProjectWrapper.scala 29:22]
  wire [31:0] cordic_sw_i; // @[UserProjectWrapper.scala 29:22]
  wire  mcons_0_clock; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_0_reset; // @[UserProjectWrapper.scala 42:22]
  wire [11:0] mcons_0_io_wb_adr_i; // @[UserProjectWrapper.scala 42:22]
  wire [31:0] mcons_0_io_wb_dat_i; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_0_io_wb_we_i; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_0_io_wb_cs_i; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_0_io_wb_ack_o; // @[UserProjectWrapper.scala 42:22]
  wire [31:0] mcons_0_io_wb_dat_o; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_0_io_irq; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_0_io_QEI_ChA; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_0_io_QEI_ChB; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_0_io_pwm_h; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_0_io_pwm_l; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_0_io_sync_in; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_0_io_sync_out; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_0_io_pwm_test; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_0_io_clo_test; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_1_clock; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_1_reset; // @[UserProjectWrapper.scala 42:22]
  wire [11:0] mcons_1_io_wb_adr_i; // @[UserProjectWrapper.scala 42:22]
  wire [31:0] mcons_1_io_wb_dat_i; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_1_io_wb_we_i; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_1_io_wb_cs_i; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_1_io_wb_ack_o; // @[UserProjectWrapper.scala 42:22]
  wire [31:0] mcons_1_io_wb_dat_o; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_1_io_irq; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_1_io_QEI_ChA; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_1_io_QEI_ChB; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_1_io_pwm_h; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_1_io_pwm_l; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_1_io_sync_in; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_1_io_sync_out; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_1_io_pwm_test; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_1_io_clo_test; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_2_clock; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_2_reset; // @[UserProjectWrapper.scala 42:22]
  wire [11:0] mcons_2_io_wb_adr_i; // @[UserProjectWrapper.scala 42:22]
  wire [31:0] mcons_2_io_wb_dat_i; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_2_io_wb_we_i; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_2_io_wb_cs_i; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_2_io_wb_ack_o; // @[UserProjectWrapper.scala 42:22]
  wire [31:0] mcons_2_io_wb_dat_o; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_2_io_irq; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_2_io_QEI_ChA; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_2_io_QEI_ChB; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_2_io_pwm_h; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_2_io_pwm_l; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_2_io_sync_in; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_2_io_sync_out; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_2_io_pwm_test; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_2_io_clo_test; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_3_clock; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_3_reset; // @[UserProjectWrapper.scala 42:22]
  wire [11:0] mcons_3_io_wb_adr_i; // @[UserProjectWrapper.scala 42:22]
  wire [31:0] mcons_3_io_wb_dat_i; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_3_io_wb_we_i; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_3_io_wb_cs_i; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_3_io_wb_ack_o; // @[UserProjectWrapper.scala 42:22]
  wire [31:0] mcons_3_io_wb_dat_o; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_3_io_irq; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_3_io_QEI_ChA; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_3_io_QEI_ChB; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_3_io_pwm_h; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_3_io_pwm_l; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_3_io_sync_in; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_3_io_sync_out; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_3_io_pwm_test; // @[UserProjectWrapper.scala 42:22]
  wire  mcons_3_io_clo_test; // @[UserProjectWrapper.scala 42:22]
  wire  ccon_0_wb_clk_i; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_0_wb_rst_i; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_0_io_cs_i; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_0_io_ack_o; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_0_io_we_i; // @[UserProjectWrapper.scala 80:19]
  wire [11:0] ccon_0_io_adr_i; // @[UserProjectWrapper.scala 80:19]
  wire [31:0] ccon_0_io_dat_i; // @[UserProjectWrapper.scala 80:19]
  wire [31:0] ccon_0_io_dat_o; // @[UserProjectWrapper.scala 80:19]
  wire [7:0] ccon_0_io_dsi_in; // @[UserProjectWrapper.scala 80:19]
  wire [63:0] ccon_0_io_dataLastBlock; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_0_io_dsi_o; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_0_io_b_cs_i_0; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_0_io_b_cs_i_1; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_0_io_b_cs_i_2; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_0_io_b_cs_i_3; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_0_io_b_cs_i_4; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_0_io_b_cs_i_5; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_0_io_b_cs_i_6; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_0_io_b_cs_i_7; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_0_io_b_cs_i_8; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_0_io_b_cs_i_9; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_0_io_b_cs_i_10; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_0_io_b_we_i; // @[UserProjectWrapper.scala 80:19]
  wire [1:0] ccon_0_io_b_adr_i; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_0_io_b_dat_i; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_0_io_b_dat_o_0; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_0_io_b_dat_o_1; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_0_io_b_dat_o_2; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_0_io_b_dat_o_3; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_0_io_b_dat_o_4; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_0_io_b_dat_o_5; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_0_io_b_dat_o_6; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_0_io_b_dat_o_7; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_0_io_b_dat_o_8; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_0_io_b_dat_o_9; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_0_io_b_dat_o_10; // @[UserProjectWrapper.scala 80:19]
  wire [10:0] ccon_0_io_vout; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_0_io_irq; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_0_io_sync_out; // @[UserProjectWrapper.scala 80:19]
  wire  cb_0_0_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_0_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_0_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_0_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_0_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_0_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_0_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_0_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_0_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_0_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_0_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_0_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_0_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_0_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_0_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_0_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_0_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_0_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_0_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_0_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_0_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_0_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_0_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_0_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_0_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_0_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_0_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_0_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_0_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_0_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_0_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_0_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_0_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_0_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_0_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_0_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_0_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_0_0_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_0_0_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_0_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_0_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_0_0_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_0_0_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_0_0_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_1_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_1_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_1_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_1_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_1_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_1_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_1_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_1_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_1_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_1_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_1_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_1_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_1_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_1_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_1_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_1_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_1_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_1_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_1_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_1_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_1_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_1_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_1_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_1_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_1_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_1_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_1_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_1_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_1_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_1_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_1_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_1_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_1_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_1_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_1_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_1_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_1_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_0_1_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_0_1_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_1_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_1_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_0_1_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_0_1_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_0_1_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_2_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_2_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_2_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_2_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_2_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_2_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_2_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_2_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_2_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_2_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_2_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_2_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_2_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_2_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_2_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_2_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_2_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_2_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_2_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_2_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_2_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_2_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_2_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_2_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_2_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_2_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_2_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_2_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_2_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_2_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_2_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_2_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_2_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_2_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_2_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_2_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_2_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_0_2_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_0_2_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_2_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_2_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_0_2_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_0_2_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_0_2_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_3_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_3_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_3_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_3_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_3_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_3_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_3_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_3_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_3_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_3_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_3_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_3_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_3_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_3_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_3_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_3_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_3_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_3_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_3_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_3_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_3_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_3_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_3_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_3_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_3_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_3_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_3_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_3_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_3_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_3_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_3_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_3_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_3_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_3_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_3_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_3_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_3_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_0_3_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_0_3_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_3_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_3_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_0_3_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_0_3_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_0_3_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_4_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_4_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_4_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_4_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_4_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_4_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_4_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_4_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_4_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_4_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_4_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_4_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_4_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_4_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_4_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_4_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_4_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_4_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_4_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_4_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_4_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_4_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_4_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_4_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_4_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_4_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_4_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_4_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_4_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_4_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_4_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_4_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_4_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_4_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_4_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_4_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_4_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_0_4_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_0_4_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_4_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_4_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_0_4_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_0_4_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_0_4_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_5_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_5_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_5_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_5_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_5_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_5_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_5_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_5_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_5_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_5_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_5_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_5_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_5_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_5_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_5_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_5_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_5_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_5_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_5_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_5_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_5_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_5_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_5_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_5_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_5_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_5_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_5_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_5_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_5_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_5_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_5_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_5_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_5_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_5_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_5_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_5_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_5_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_0_5_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_0_5_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_5_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_5_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_0_5_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_0_5_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_0_5_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_6_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_6_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_6_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_6_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_6_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_6_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_6_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_6_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_6_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_6_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_6_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_6_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_6_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_6_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_6_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_6_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_6_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_6_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_6_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_6_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_6_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_6_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_6_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_6_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_6_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_6_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_6_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_6_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_6_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_6_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_6_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_6_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_6_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_6_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_6_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_6_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_6_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_0_6_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_0_6_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_6_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_6_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_0_6_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_0_6_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_0_6_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_7_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_7_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_7_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_7_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_7_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_7_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_7_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_7_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_7_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_7_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_7_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_7_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_7_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_7_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_7_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_7_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_7_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_7_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_7_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_7_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_7_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_7_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_7_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_7_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_7_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_7_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_7_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_7_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_7_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_7_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_7_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_7_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_7_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_7_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_7_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_7_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_7_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_0_7_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_0_7_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_7_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_7_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_0_7_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_0_7_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_0_7_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_8_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_8_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_8_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_8_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_8_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_8_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_8_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_8_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_8_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_8_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_8_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_8_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_8_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_8_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_8_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_8_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_8_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_8_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_8_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_8_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_8_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_8_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_8_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_8_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_8_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_8_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_8_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_8_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_8_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_8_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_8_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_8_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_8_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_8_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_8_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_8_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_8_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_0_8_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_0_8_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_8_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_8_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_0_8_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_0_8_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_0_8_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_9_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_9_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_9_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_9_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_9_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_9_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_9_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_9_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_9_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_9_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_9_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_9_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_9_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_9_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_9_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_9_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_9_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_9_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_9_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_9_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_9_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_9_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_9_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_9_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_9_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_9_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_9_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_9_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_9_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_9_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_9_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_9_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_9_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_9_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_9_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_9_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_9_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_0_9_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_0_9_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_9_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_9_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_0_9_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_0_9_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_0_9_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_10_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_10_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_10_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_10_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_10_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_10_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_10_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_10_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_10_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_10_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_10_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_10_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_10_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_10_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_10_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_10_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_10_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_10_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_10_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_10_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_10_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_10_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_10_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_10_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_10_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_10_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_10_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_10_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_10_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_10_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_10_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_10_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_0_10_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_10_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_10_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_10_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_10_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_0_10_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_0_10_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_10_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_0_10_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_0_10_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_0_10_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_0_10_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  ccon_1_wb_clk_i; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_1_wb_rst_i; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_1_io_cs_i; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_1_io_ack_o; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_1_io_we_i; // @[UserProjectWrapper.scala 80:19]
  wire [11:0] ccon_1_io_adr_i; // @[UserProjectWrapper.scala 80:19]
  wire [31:0] ccon_1_io_dat_i; // @[UserProjectWrapper.scala 80:19]
  wire [31:0] ccon_1_io_dat_o; // @[UserProjectWrapper.scala 80:19]
  wire [7:0] ccon_1_io_dsi_in; // @[UserProjectWrapper.scala 80:19]
  wire [63:0] ccon_1_io_dataLastBlock; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_1_io_dsi_o; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_1_io_b_cs_i_0; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_1_io_b_cs_i_1; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_1_io_b_cs_i_2; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_1_io_b_cs_i_3; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_1_io_b_cs_i_4; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_1_io_b_cs_i_5; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_1_io_b_cs_i_6; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_1_io_b_cs_i_7; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_1_io_b_cs_i_8; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_1_io_b_cs_i_9; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_1_io_b_cs_i_10; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_1_io_b_we_i; // @[UserProjectWrapper.scala 80:19]
  wire [1:0] ccon_1_io_b_adr_i; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_1_io_b_dat_i; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_1_io_b_dat_o_0; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_1_io_b_dat_o_1; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_1_io_b_dat_o_2; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_1_io_b_dat_o_3; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_1_io_b_dat_o_4; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_1_io_b_dat_o_5; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_1_io_b_dat_o_6; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_1_io_b_dat_o_7; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_1_io_b_dat_o_8; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_1_io_b_dat_o_9; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_1_io_b_dat_o_10; // @[UserProjectWrapper.scala 80:19]
  wire [10:0] ccon_1_io_vout; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_1_io_irq; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_1_io_sync_out; // @[UserProjectWrapper.scala 80:19]
  wire  cb_1_0_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_0_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_0_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_0_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_0_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_0_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_0_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_0_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_0_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_0_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_0_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_0_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_0_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_0_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_0_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_0_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_0_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_0_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_0_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_0_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_0_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_0_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_0_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_0_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_0_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_0_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_0_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_0_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_0_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_0_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_0_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_0_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_0_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_0_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_0_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_0_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_0_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_1_0_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_1_0_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_0_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_0_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_1_0_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_1_0_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_1_0_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_1_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_1_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_1_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_1_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_1_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_1_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_1_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_1_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_1_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_1_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_1_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_1_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_1_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_1_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_1_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_1_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_1_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_1_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_1_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_1_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_1_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_1_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_1_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_1_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_1_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_1_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_1_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_1_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_1_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_1_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_1_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_1_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_1_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_1_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_1_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_1_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_1_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_1_1_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_1_1_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_1_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_1_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_1_1_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_1_1_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_1_1_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_2_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_2_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_2_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_2_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_2_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_2_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_2_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_2_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_2_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_2_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_2_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_2_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_2_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_2_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_2_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_2_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_2_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_2_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_2_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_2_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_2_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_2_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_2_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_2_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_2_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_2_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_2_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_2_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_2_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_2_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_2_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_2_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_2_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_2_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_2_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_2_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_2_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_1_2_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_1_2_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_2_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_2_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_1_2_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_1_2_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_1_2_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_3_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_3_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_3_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_3_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_3_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_3_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_3_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_3_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_3_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_3_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_3_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_3_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_3_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_3_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_3_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_3_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_3_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_3_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_3_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_3_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_3_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_3_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_3_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_3_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_3_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_3_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_3_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_3_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_3_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_3_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_3_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_3_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_3_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_3_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_3_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_3_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_3_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_1_3_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_1_3_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_3_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_3_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_1_3_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_1_3_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_1_3_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_4_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_4_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_4_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_4_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_4_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_4_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_4_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_4_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_4_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_4_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_4_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_4_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_4_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_4_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_4_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_4_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_4_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_4_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_4_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_4_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_4_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_4_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_4_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_4_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_4_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_4_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_4_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_4_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_4_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_4_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_4_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_4_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_4_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_4_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_4_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_4_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_4_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_1_4_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_1_4_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_4_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_4_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_1_4_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_1_4_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_1_4_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_5_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_5_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_5_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_5_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_5_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_5_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_5_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_5_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_5_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_5_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_5_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_5_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_5_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_5_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_5_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_5_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_5_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_5_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_5_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_5_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_5_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_5_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_5_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_5_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_5_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_5_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_5_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_5_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_5_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_5_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_5_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_5_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_5_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_5_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_5_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_5_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_5_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_1_5_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_1_5_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_5_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_5_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_1_5_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_1_5_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_1_5_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_6_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_6_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_6_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_6_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_6_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_6_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_6_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_6_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_6_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_6_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_6_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_6_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_6_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_6_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_6_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_6_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_6_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_6_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_6_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_6_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_6_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_6_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_6_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_6_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_6_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_6_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_6_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_6_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_6_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_6_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_6_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_6_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_6_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_6_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_6_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_6_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_6_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_1_6_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_1_6_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_6_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_6_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_1_6_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_1_6_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_1_6_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_7_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_7_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_7_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_7_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_7_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_7_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_7_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_7_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_7_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_7_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_7_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_7_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_7_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_7_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_7_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_7_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_7_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_7_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_7_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_7_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_7_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_7_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_7_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_7_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_7_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_7_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_7_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_7_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_7_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_7_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_7_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_7_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_7_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_7_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_7_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_7_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_7_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_1_7_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_1_7_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_7_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_7_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_1_7_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_1_7_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_1_7_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_8_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_8_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_8_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_8_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_8_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_8_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_8_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_8_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_8_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_8_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_8_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_8_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_8_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_8_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_8_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_8_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_8_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_8_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_8_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_8_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_8_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_8_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_8_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_8_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_8_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_8_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_8_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_8_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_8_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_8_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_8_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_8_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_8_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_8_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_8_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_8_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_8_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_1_8_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_1_8_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_8_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_8_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_1_8_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_1_8_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_1_8_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_9_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_9_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_9_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_9_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_9_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_9_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_9_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_9_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_9_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_9_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_9_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_9_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_9_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_9_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_9_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_9_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_9_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_9_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_9_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_9_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_9_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_9_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_9_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_9_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_9_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_9_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_9_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_9_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_9_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_9_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_9_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_9_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_9_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_9_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_9_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_9_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_9_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_1_9_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_1_9_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_9_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_9_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_1_9_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_1_9_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_1_9_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_10_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_10_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_10_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_10_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_10_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_10_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_10_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_10_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_10_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_10_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_10_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_10_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_10_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_10_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_10_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_10_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_10_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_10_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_10_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_10_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_10_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_10_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_10_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_10_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_10_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_10_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_10_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_10_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_10_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_10_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_10_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_10_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_1_10_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_10_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_10_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_10_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_10_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_1_10_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_1_10_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_10_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_1_10_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_1_10_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_1_10_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_1_10_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  ccon_2_wb_clk_i; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_2_wb_rst_i; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_2_io_cs_i; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_2_io_ack_o; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_2_io_we_i; // @[UserProjectWrapper.scala 80:19]
  wire [11:0] ccon_2_io_adr_i; // @[UserProjectWrapper.scala 80:19]
  wire [31:0] ccon_2_io_dat_i; // @[UserProjectWrapper.scala 80:19]
  wire [31:0] ccon_2_io_dat_o; // @[UserProjectWrapper.scala 80:19]
  wire [7:0] ccon_2_io_dsi_in; // @[UserProjectWrapper.scala 80:19]
  wire [63:0] ccon_2_io_dataLastBlock; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_2_io_dsi_o; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_2_io_b_cs_i_0; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_2_io_b_cs_i_1; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_2_io_b_cs_i_2; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_2_io_b_cs_i_3; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_2_io_b_cs_i_4; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_2_io_b_cs_i_5; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_2_io_b_cs_i_6; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_2_io_b_cs_i_7; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_2_io_b_cs_i_8; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_2_io_b_cs_i_9; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_2_io_b_cs_i_10; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_2_io_b_we_i; // @[UserProjectWrapper.scala 80:19]
  wire [1:0] ccon_2_io_b_adr_i; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_2_io_b_dat_i; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_2_io_b_dat_o_0; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_2_io_b_dat_o_1; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_2_io_b_dat_o_2; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_2_io_b_dat_o_3; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_2_io_b_dat_o_4; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_2_io_b_dat_o_5; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_2_io_b_dat_o_6; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_2_io_b_dat_o_7; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_2_io_b_dat_o_8; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_2_io_b_dat_o_9; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_2_io_b_dat_o_10; // @[UserProjectWrapper.scala 80:19]
  wire [10:0] ccon_2_io_vout; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_2_io_irq; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_2_io_sync_out; // @[UserProjectWrapper.scala 80:19]
  wire  cb_2_0_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_0_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_0_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_0_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_0_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_0_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_0_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_0_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_0_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_0_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_0_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_0_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_0_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_0_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_0_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_0_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_0_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_0_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_0_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_0_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_0_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_0_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_0_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_0_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_0_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_0_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_0_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_0_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_0_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_0_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_0_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_0_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_0_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_0_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_0_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_0_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_0_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_2_0_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_2_0_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_0_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_0_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_2_0_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_2_0_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_2_0_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_1_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_1_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_1_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_1_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_1_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_1_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_1_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_1_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_1_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_1_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_1_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_1_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_1_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_1_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_1_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_1_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_1_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_1_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_1_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_1_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_1_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_1_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_1_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_1_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_1_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_1_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_1_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_1_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_1_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_1_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_1_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_1_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_1_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_1_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_1_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_1_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_1_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_2_1_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_2_1_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_1_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_1_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_2_1_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_2_1_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_2_1_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_2_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_2_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_2_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_2_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_2_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_2_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_2_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_2_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_2_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_2_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_2_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_2_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_2_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_2_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_2_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_2_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_2_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_2_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_2_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_2_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_2_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_2_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_2_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_2_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_2_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_2_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_2_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_2_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_2_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_2_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_2_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_2_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_2_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_2_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_2_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_2_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_2_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_2_2_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_2_2_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_2_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_2_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_2_2_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_2_2_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_2_2_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_3_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_3_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_3_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_3_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_3_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_3_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_3_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_3_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_3_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_3_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_3_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_3_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_3_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_3_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_3_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_3_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_3_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_3_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_3_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_3_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_3_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_3_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_3_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_3_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_3_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_3_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_3_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_3_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_3_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_3_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_3_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_3_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_3_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_3_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_3_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_3_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_3_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_2_3_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_2_3_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_3_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_3_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_2_3_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_2_3_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_2_3_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_4_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_4_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_4_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_4_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_4_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_4_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_4_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_4_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_4_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_4_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_4_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_4_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_4_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_4_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_4_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_4_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_4_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_4_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_4_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_4_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_4_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_4_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_4_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_4_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_4_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_4_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_4_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_4_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_4_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_4_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_4_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_4_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_4_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_4_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_4_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_4_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_4_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_2_4_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_2_4_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_4_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_4_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_2_4_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_2_4_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_2_4_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_5_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_5_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_5_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_5_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_5_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_5_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_5_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_5_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_5_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_5_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_5_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_5_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_5_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_5_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_5_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_5_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_5_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_5_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_5_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_5_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_5_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_5_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_5_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_5_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_5_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_5_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_5_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_5_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_5_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_5_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_5_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_5_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_5_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_5_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_5_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_5_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_5_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_2_5_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_2_5_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_5_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_5_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_2_5_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_2_5_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_2_5_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_6_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_6_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_6_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_6_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_6_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_6_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_6_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_6_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_6_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_6_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_6_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_6_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_6_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_6_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_6_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_6_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_6_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_6_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_6_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_6_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_6_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_6_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_6_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_6_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_6_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_6_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_6_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_6_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_6_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_6_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_6_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_6_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_6_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_6_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_6_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_6_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_6_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_2_6_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_2_6_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_6_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_6_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_2_6_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_2_6_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_2_6_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_7_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_7_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_7_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_7_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_7_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_7_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_7_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_7_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_7_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_7_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_7_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_7_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_7_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_7_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_7_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_7_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_7_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_7_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_7_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_7_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_7_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_7_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_7_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_7_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_7_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_7_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_7_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_7_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_7_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_7_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_7_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_7_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_7_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_7_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_7_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_7_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_7_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_2_7_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_2_7_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_7_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_7_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_2_7_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_2_7_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_2_7_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_8_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_8_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_8_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_8_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_8_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_8_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_8_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_8_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_8_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_8_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_8_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_8_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_8_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_8_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_8_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_8_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_8_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_8_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_8_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_8_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_8_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_8_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_8_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_8_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_8_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_8_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_8_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_8_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_8_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_8_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_8_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_8_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_8_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_8_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_8_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_8_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_8_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_2_8_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_2_8_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_8_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_8_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_2_8_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_2_8_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_2_8_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_9_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_9_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_9_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_9_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_9_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_9_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_9_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_9_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_9_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_9_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_9_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_9_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_9_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_9_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_9_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_9_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_9_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_9_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_9_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_9_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_9_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_9_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_9_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_9_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_9_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_9_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_9_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_9_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_9_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_9_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_9_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_9_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_9_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_9_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_9_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_9_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_9_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_2_9_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_2_9_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_9_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_9_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_2_9_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_2_9_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_2_9_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_10_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_10_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_10_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_10_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_10_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_10_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_10_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_10_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_10_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_10_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_10_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_10_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_10_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_10_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_10_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_10_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_10_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_10_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_10_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_10_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_10_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_10_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_10_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_10_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_10_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_10_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_10_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_10_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_10_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_10_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_10_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_10_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_2_10_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_10_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_10_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_10_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_10_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_2_10_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_2_10_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_10_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_2_10_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_2_10_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_2_10_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_2_10_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  ccon_3_wb_clk_i; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_3_wb_rst_i; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_3_io_cs_i; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_3_io_ack_o; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_3_io_we_i; // @[UserProjectWrapper.scala 80:19]
  wire [11:0] ccon_3_io_adr_i; // @[UserProjectWrapper.scala 80:19]
  wire [31:0] ccon_3_io_dat_i; // @[UserProjectWrapper.scala 80:19]
  wire [31:0] ccon_3_io_dat_o; // @[UserProjectWrapper.scala 80:19]
  wire [7:0] ccon_3_io_dsi_in; // @[UserProjectWrapper.scala 80:19]
  wire [63:0] ccon_3_io_dataLastBlock; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_3_io_dsi_o; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_3_io_b_cs_i_0; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_3_io_b_cs_i_1; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_3_io_b_cs_i_2; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_3_io_b_cs_i_3; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_3_io_b_cs_i_4; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_3_io_b_cs_i_5; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_3_io_b_cs_i_6; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_3_io_b_cs_i_7; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_3_io_b_cs_i_8; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_3_io_b_cs_i_9; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_3_io_b_cs_i_10; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_3_io_b_we_i; // @[UserProjectWrapper.scala 80:19]
  wire [1:0] ccon_3_io_b_adr_i; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_3_io_b_dat_i; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_3_io_b_dat_o_0; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_3_io_b_dat_o_1; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_3_io_b_dat_o_2; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_3_io_b_dat_o_3; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_3_io_b_dat_o_4; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_3_io_b_dat_o_5; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_3_io_b_dat_o_6; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_3_io_b_dat_o_7; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_3_io_b_dat_o_8; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_3_io_b_dat_o_9; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_3_io_b_dat_o_10; // @[UserProjectWrapper.scala 80:19]
  wire [10:0] ccon_3_io_vout; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_3_io_irq; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_3_io_sync_out; // @[UserProjectWrapper.scala 80:19]
  wire  cb_3_0_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_0_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_0_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_0_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_0_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_0_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_0_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_0_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_0_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_0_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_0_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_0_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_0_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_0_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_0_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_0_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_0_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_0_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_0_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_0_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_0_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_0_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_0_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_0_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_0_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_0_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_0_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_0_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_0_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_0_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_0_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_0_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_0_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_0_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_0_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_0_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_0_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_3_0_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_3_0_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_0_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_0_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_3_0_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_3_0_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_3_0_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_1_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_1_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_1_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_1_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_1_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_1_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_1_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_1_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_1_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_1_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_1_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_1_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_1_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_1_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_1_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_1_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_1_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_1_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_1_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_1_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_1_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_1_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_1_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_1_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_1_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_1_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_1_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_1_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_1_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_1_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_1_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_1_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_1_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_1_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_1_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_1_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_1_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_3_1_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_3_1_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_1_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_1_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_3_1_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_3_1_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_3_1_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_2_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_2_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_2_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_2_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_2_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_2_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_2_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_2_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_2_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_2_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_2_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_2_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_2_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_2_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_2_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_2_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_2_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_2_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_2_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_2_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_2_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_2_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_2_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_2_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_2_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_2_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_2_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_2_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_2_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_2_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_2_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_2_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_2_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_2_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_2_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_2_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_2_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_3_2_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_3_2_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_2_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_2_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_3_2_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_3_2_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_3_2_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_3_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_3_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_3_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_3_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_3_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_3_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_3_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_3_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_3_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_3_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_3_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_3_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_3_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_3_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_3_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_3_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_3_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_3_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_3_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_3_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_3_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_3_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_3_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_3_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_3_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_3_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_3_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_3_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_3_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_3_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_3_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_3_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_3_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_3_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_3_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_3_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_3_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_3_3_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_3_3_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_3_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_3_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_3_3_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_3_3_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_3_3_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_4_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_4_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_4_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_4_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_4_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_4_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_4_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_4_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_4_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_4_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_4_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_4_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_4_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_4_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_4_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_4_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_4_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_4_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_4_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_4_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_4_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_4_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_4_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_4_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_4_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_4_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_4_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_4_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_4_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_4_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_4_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_4_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_4_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_4_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_4_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_4_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_4_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_3_4_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_3_4_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_4_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_4_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_3_4_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_3_4_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_3_4_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_5_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_5_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_5_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_5_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_5_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_5_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_5_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_5_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_5_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_5_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_5_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_5_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_5_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_5_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_5_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_5_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_5_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_5_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_5_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_5_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_5_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_5_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_5_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_5_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_5_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_5_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_5_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_5_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_5_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_5_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_5_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_5_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_5_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_5_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_5_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_5_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_5_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_3_5_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_3_5_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_5_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_5_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_3_5_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_3_5_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_3_5_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_6_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_6_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_6_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_6_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_6_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_6_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_6_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_6_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_6_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_6_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_6_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_6_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_6_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_6_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_6_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_6_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_6_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_6_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_6_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_6_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_6_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_6_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_6_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_6_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_6_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_6_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_6_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_6_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_6_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_6_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_6_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_6_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_6_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_6_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_6_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_6_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_6_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_3_6_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_3_6_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_6_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_6_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_3_6_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_3_6_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_3_6_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_7_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_7_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_7_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_7_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_7_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_7_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_7_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_7_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_7_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_7_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_7_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_7_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_7_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_7_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_7_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_7_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_7_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_7_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_7_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_7_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_7_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_7_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_7_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_7_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_7_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_7_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_7_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_7_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_7_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_7_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_7_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_7_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_7_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_7_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_7_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_7_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_7_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_3_7_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_3_7_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_7_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_7_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_3_7_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_3_7_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_3_7_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_8_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_8_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_8_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_8_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_8_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_8_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_8_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_8_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_8_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_8_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_8_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_8_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_8_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_8_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_8_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_8_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_8_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_8_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_8_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_8_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_8_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_8_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_8_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_8_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_8_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_8_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_8_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_8_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_8_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_8_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_8_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_8_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_8_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_8_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_8_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_8_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_8_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_3_8_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_3_8_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_8_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_8_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_3_8_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_3_8_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_3_8_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_9_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_9_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_9_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_9_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_9_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_9_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_9_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_9_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_9_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_9_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_9_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_9_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_9_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_9_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_9_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_9_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_9_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_9_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_9_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_9_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_9_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_9_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_9_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_9_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_9_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_9_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_9_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_9_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_9_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_9_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_9_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_9_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_9_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_9_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_9_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_9_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_9_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_3_9_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_3_9_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_9_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_9_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_3_9_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_3_9_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_3_9_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_10_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_10_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_10_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_10_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_10_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_10_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_10_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_10_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_10_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_10_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_10_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_10_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_10_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_10_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_10_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_10_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_10_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_10_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_10_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_10_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_10_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_10_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_10_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_10_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_10_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_10_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_10_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_10_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_10_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_10_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_10_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_10_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_3_10_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_10_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_10_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_10_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_10_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_3_10_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_3_10_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_10_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_3_10_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_3_10_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_3_10_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_3_10_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  ccon_4_wb_clk_i; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_4_wb_rst_i; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_4_io_cs_i; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_4_io_ack_o; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_4_io_we_i; // @[UserProjectWrapper.scala 80:19]
  wire [11:0] ccon_4_io_adr_i; // @[UserProjectWrapper.scala 80:19]
  wire [31:0] ccon_4_io_dat_i; // @[UserProjectWrapper.scala 80:19]
  wire [31:0] ccon_4_io_dat_o; // @[UserProjectWrapper.scala 80:19]
  wire [7:0] ccon_4_io_dsi_in; // @[UserProjectWrapper.scala 80:19]
  wire [63:0] ccon_4_io_dataLastBlock; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_4_io_dsi_o; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_4_io_b_cs_i_0; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_4_io_b_cs_i_1; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_4_io_b_cs_i_2; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_4_io_b_cs_i_3; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_4_io_b_cs_i_4; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_4_io_b_cs_i_5; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_4_io_b_cs_i_6; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_4_io_b_cs_i_7; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_4_io_b_cs_i_8; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_4_io_b_cs_i_9; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_4_io_b_cs_i_10; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_4_io_b_we_i; // @[UserProjectWrapper.scala 80:19]
  wire [1:0] ccon_4_io_b_adr_i; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_4_io_b_dat_i; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_4_io_b_dat_o_0; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_4_io_b_dat_o_1; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_4_io_b_dat_o_2; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_4_io_b_dat_o_3; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_4_io_b_dat_o_4; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_4_io_b_dat_o_5; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_4_io_b_dat_o_6; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_4_io_b_dat_o_7; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_4_io_b_dat_o_8; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_4_io_b_dat_o_9; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_4_io_b_dat_o_10; // @[UserProjectWrapper.scala 80:19]
  wire [10:0] ccon_4_io_vout; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_4_io_irq; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_4_io_sync_out; // @[UserProjectWrapper.scala 80:19]
  wire  cb_4_0_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_0_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_0_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_0_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_0_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_0_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_0_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_0_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_0_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_0_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_0_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_0_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_0_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_0_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_0_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_0_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_0_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_0_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_0_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_0_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_0_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_0_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_0_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_0_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_0_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_0_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_0_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_0_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_0_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_0_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_0_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_0_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_0_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_0_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_0_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_0_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_0_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_4_0_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_4_0_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_0_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_0_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_4_0_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_4_0_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_4_0_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_1_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_1_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_1_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_1_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_1_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_1_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_1_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_1_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_1_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_1_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_1_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_1_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_1_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_1_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_1_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_1_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_1_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_1_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_1_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_1_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_1_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_1_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_1_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_1_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_1_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_1_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_1_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_1_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_1_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_1_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_1_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_1_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_1_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_1_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_1_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_1_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_1_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_4_1_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_4_1_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_1_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_1_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_4_1_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_4_1_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_4_1_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_2_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_2_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_2_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_2_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_2_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_2_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_2_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_2_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_2_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_2_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_2_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_2_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_2_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_2_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_2_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_2_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_2_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_2_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_2_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_2_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_2_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_2_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_2_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_2_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_2_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_2_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_2_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_2_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_2_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_2_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_2_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_2_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_2_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_2_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_2_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_2_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_2_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_4_2_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_4_2_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_2_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_2_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_4_2_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_4_2_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_4_2_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_3_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_3_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_3_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_3_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_3_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_3_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_3_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_3_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_3_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_3_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_3_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_3_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_3_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_3_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_3_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_3_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_3_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_3_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_3_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_3_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_3_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_3_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_3_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_3_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_3_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_3_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_3_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_3_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_3_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_3_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_3_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_3_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_3_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_3_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_3_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_3_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_3_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_4_3_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_4_3_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_3_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_3_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_4_3_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_4_3_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_4_3_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_4_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_4_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_4_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_4_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_4_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_4_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_4_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_4_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_4_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_4_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_4_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_4_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_4_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_4_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_4_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_4_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_4_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_4_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_4_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_4_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_4_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_4_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_4_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_4_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_4_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_4_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_4_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_4_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_4_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_4_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_4_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_4_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_4_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_4_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_4_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_4_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_4_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_4_4_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_4_4_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_4_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_4_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_4_4_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_4_4_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_4_4_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_5_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_5_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_5_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_5_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_5_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_5_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_5_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_5_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_5_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_5_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_5_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_5_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_5_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_5_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_5_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_5_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_5_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_5_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_5_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_5_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_5_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_5_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_5_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_5_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_5_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_5_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_5_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_5_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_5_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_5_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_5_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_5_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_5_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_5_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_5_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_5_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_5_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_4_5_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_4_5_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_5_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_5_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_4_5_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_4_5_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_4_5_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_6_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_6_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_6_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_6_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_6_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_6_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_6_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_6_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_6_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_6_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_6_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_6_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_6_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_6_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_6_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_6_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_6_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_6_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_6_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_6_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_6_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_6_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_6_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_6_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_6_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_6_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_6_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_6_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_6_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_6_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_6_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_6_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_6_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_6_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_6_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_6_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_6_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_4_6_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_4_6_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_6_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_6_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_4_6_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_4_6_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_4_6_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_7_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_7_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_7_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_7_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_7_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_7_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_7_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_7_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_7_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_7_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_7_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_7_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_7_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_7_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_7_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_7_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_7_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_7_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_7_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_7_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_7_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_7_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_7_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_7_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_7_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_7_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_7_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_7_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_7_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_7_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_7_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_7_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_7_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_7_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_7_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_7_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_7_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_4_7_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_4_7_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_7_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_7_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_4_7_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_4_7_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_4_7_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_8_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_8_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_8_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_8_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_8_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_8_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_8_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_8_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_8_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_8_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_8_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_8_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_8_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_8_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_8_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_8_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_8_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_8_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_8_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_8_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_8_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_8_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_8_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_8_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_8_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_8_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_8_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_8_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_8_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_8_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_8_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_8_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_8_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_8_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_8_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_8_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_8_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_4_8_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_4_8_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_8_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_8_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_4_8_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_4_8_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_4_8_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_9_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_9_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_9_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_9_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_9_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_9_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_9_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_9_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_9_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_9_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_9_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_9_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_9_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_9_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_9_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_9_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_9_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_9_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_9_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_9_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_9_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_9_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_9_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_9_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_9_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_9_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_9_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_9_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_9_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_9_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_9_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_9_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_9_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_9_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_9_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_9_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_9_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_4_9_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_4_9_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_9_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_9_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_4_9_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_4_9_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_4_9_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_10_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_10_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_10_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_10_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_10_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_10_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_10_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_10_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_10_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_10_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_10_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_10_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_10_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_10_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_10_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_10_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_10_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_10_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_10_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_10_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_10_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_10_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_10_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_10_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_10_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_10_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_10_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_10_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_10_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_10_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_10_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_10_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_4_10_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_10_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_10_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_10_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_10_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_4_10_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_4_10_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_10_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_4_10_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_4_10_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_4_10_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_4_10_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  ccon_5_wb_clk_i; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_5_wb_rst_i; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_5_io_cs_i; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_5_io_ack_o; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_5_io_we_i; // @[UserProjectWrapper.scala 80:19]
  wire [11:0] ccon_5_io_adr_i; // @[UserProjectWrapper.scala 80:19]
  wire [31:0] ccon_5_io_dat_i; // @[UserProjectWrapper.scala 80:19]
  wire [31:0] ccon_5_io_dat_o; // @[UserProjectWrapper.scala 80:19]
  wire [7:0] ccon_5_io_dsi_in; // @[UserProjectWrapper.scala 80:19]
  wire [63:0] ccon_5_io_dataLastBlock; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_5_io_dsi_o; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_5_io_b_cs_i_0; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_5_io_b_cs_i_1; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_5_io_b_cs_i_2; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_5_io_b_cs_i_3; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_5_io_b_cs_i_4; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_5_io_b_cs_i_5; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_5_io_b_cs_i_6; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_5_io_b_cs_i_7; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_5_io_b_cs_i_8; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_5_io_b_cs_i_9; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_5_io_b_cs_i_10; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_5_io_b_we_i; // @[UserProjectWrapper.scala 80:19]
  wire [1:0] ccon_5_io_b_adr_i; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_5_io_b_dat_i; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_5_io_b_dat_o_0; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_5_io_b_dat_o_1; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_5_io_b_dat_o_2; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_5_io_b_dat_o_3; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_5_io_b_dat_o_4; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_5_io_b_dat_o_5; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_5_io_b_dat_o_6; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_5_io_b_dat_o_7; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_5_io_b_dat_o_8; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_5_io_b_dat_o_9; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_5_io_b_dat_o_10; // @[UserProjectWrapper.scala 80:19]
  wire [10:0] ccon_5_io_vout; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_5_io_irq; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_5_io_sync_out; // @[UserProjectWrapper.scala 80:19]
  wire  cb_5_0_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_0_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_0_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_0_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_0_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_0_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_0_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_0_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_0_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_0_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_0_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_0_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_0_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_0_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_0_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_0_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_0_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_0_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_0_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_0_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_0_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_0_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_0_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_0_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_0_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_0_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_0_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_0_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_0_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_0_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_0_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_0_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_0_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_0_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_0_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_0_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_0_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_5_0_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_5_0_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_0_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_0_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_5_0_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_5_0_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_5_0_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_1_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_1_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_1_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_1_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_1_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_1_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_1_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_1_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_1_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_1_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_1_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_1_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_1_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_1_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_1_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_1_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_1_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_1_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_1_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_1_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_1_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_1_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_1_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_1_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_1_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_1_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_1_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_1_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_1_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_1_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_1_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_1_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_1_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_1_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_1_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_1_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_1_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_5_1_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_5_1_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_1_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_1_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_5_1_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_5_1_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_5_1_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_2_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_2_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_2_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_2_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_2_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_2_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_2_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_2_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_2_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_2_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_2_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_2_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_2_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_2_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_2_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_2_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_2_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_2_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_2_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_2_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_2_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_2_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_2_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_2_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_2_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_2_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_2_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_2_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_2_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_2_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_2_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_2_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_2_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_2_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_2_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_2_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_2_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_5_2_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_5_2_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_2_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_2_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_5_2_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_5_2_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_5_2_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_3_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_3_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_3_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_3_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_3_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_3_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_3_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_3_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_3_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_3_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_3_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_3_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_3_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_3_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_3_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_3_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_3_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_3_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_3_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_3_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_3_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_3_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_3_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_3_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_3_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_3_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_3_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_3_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_3_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_3_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_3_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_3_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_3_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_3_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_3_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_3_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_3_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_5_3_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_5_3_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_3_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_3_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_5_3_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_5_3_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_5_3_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_4_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_4_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_4_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_4_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_4_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_4_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_4_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_4_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_4_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_4_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_4_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_4_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_4_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_4_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_4_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_4_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_4_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_4_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_4_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_4_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_4_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_4_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_4_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_4_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_4_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_4_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_4_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_4_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_4_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_4_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_4_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_4_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_4_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_4_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_4_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_4_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_4_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_5_4_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_5_4_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_4_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_4_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_5_4_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_5_4_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_5_4_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_5_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_5_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_5_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_5_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_5_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_5_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_5_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_5_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_5_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_5_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_5_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_5_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_5_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_5_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_5_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_5_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_5_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_5_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_5_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_5_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_5_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_5_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_5_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_5_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_5_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_5_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_5_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_5_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_5_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_5_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_5_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_5_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_5_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_5_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_5_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_5_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_5_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_5_5_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_5_5_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_5_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_5_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_5_5_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_5_5_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_5_5_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_6_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_6_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_6_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_6_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_6_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_6_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_6_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_6_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_6_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_6_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_6_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_6_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_6_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_6_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_6_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_6_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_6_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_6_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_6_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_6_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_6_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_6_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_6_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_6_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_6_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_6_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_6_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_6_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_6_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_6_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_6_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_6_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_6_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_6_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_6_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_6_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_6_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_5_6_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_5_6_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_6_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_6_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_5_6_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_5_6_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_5_6_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_7_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_7_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_7_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_7_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_7_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_7_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_7_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_7_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_7_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_7_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_7_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_7_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_7_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_7_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_7_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_7_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_7_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_7_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_7_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_7_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_7_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_7_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_7_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_7_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_7_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_7_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_7_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_7_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_7_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_7_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_7_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_7_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_7_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_7_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_7_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_7_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_7_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_5_7_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_5_7_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_7_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_7_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_5_7_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_5_7_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_5_7_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_8_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_8_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_8_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_8_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_8_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_8_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_8_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_8_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_8_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_8_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_8_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_8_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_8_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_8_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_8_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_8_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_8_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_8_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_8_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_8_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_8_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_8_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_8_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_8_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_8_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_8_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_8_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_8_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_8_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_8_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_8_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_8_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_8_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_8_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_8_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_8_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_8_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_5_8_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_5_8_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_8_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_8_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_5_8_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_5_8_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_5_8_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_9_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_9_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_9_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_9_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_9_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_9_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_9_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_9_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_9_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_9_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_9_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_9_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_9_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_9_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_9_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_9_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_9_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_9_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_9_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_9_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_9_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_9_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_9_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_9_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_9_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_9_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_9_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_9_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_9_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_9_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_9_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_9_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_9_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_9_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_9_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_9_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_9_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_5_9_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_5_9_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_9_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_9_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_5_9_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_5_9_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_5_9_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_10_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_10_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_10_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_10_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_10_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_10_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_10_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_10_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_10_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_10_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_10_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_10_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_10_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_10_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_10_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_10_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_10_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_10_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_10_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_10_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_10_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_10_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_10_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_10_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_10_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_10_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_10_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_10_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_10_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_10_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_10_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_10_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_5_10_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_10_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_10_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_10_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_10_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_5_10_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_5_10_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_10_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_5_10_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_5_10_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_5_10_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_5_10_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  ccon_6_wb_clk_i; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_6_wb_rst_i; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_6_io_cs_i; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_6_io_ack_o; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_6_io_we_i; // @[UserProjectWrapper.scala 80:19]
  wire [11:0] ccon_6_io_adr_i; // @[UserProjectWrapper.scala 80:19]
  wire [31:0] ccon_6_io_dat_i; // @[UserProjectWrapper.scala 80:19]
  wire [31:0] ccon_6_io_dat_o; // @[UserProjectWrapper.scala 80:19]
  wire [7:0] ccon_6_io_dsi_in; // @[UserProjectWrapper.scala 80:19]
  wire [63:0] ccon_6_io_dataLastBlock; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_6_io_dsi_o; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_6_io_b_cs_i_0; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_6_io_b_cs_i_1; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_6_io_b_cs_i_2; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_6_io_b_cs_i_3; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_6_io_b_cs_i_4; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_6_io_b_cs_i_5; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_6_io_b_cs_i_6; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_6_io_b_cs_i_7; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_6_io_b_cs_i_8; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_6_io_b_cs_i_9; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_6_io_b_cs_i_10; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_6_io_b_we_i; // @[UserProjectWrapper.scala 80:19]
  wire [1:0] ccon_6_io_b_adr_i; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_6_io_b_dat_i; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_6_io_b_dat_o_0; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_6_io_b_dat_o_1; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_6_io_b_dat_o_2; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_6_io_b_dat_o_3; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_6_io_b_dat_o_4; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_6_io_b_dat_o_5; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_6_io_b_dat_o_6; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_6_io_b_dat_o_7; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_6_io_b_dat_o_8; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_6_io_b_dat_o_9; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_6_io_b_dat_o_10; // @[UserProjectWrapper.scala 80:19]
  wire [10:0] ccon_6_io_vout; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_6_io_irq; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_6_io_sync_out; // @[UserProjectWrapper.scala 80:19]
  wire  cb_6_0_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_0_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_0_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_0_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_0_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_0_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_0_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_0_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_0_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_0_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_0_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_0_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_0_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_0_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_0_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_0_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_0_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_0_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_0_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_0_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_0_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_0_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_0_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_0_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_0_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_0_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_0_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_0_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_0_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_0_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_0_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_0_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_0_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_0_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_0_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_0_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_0_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_6_0_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_6_0_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_0_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_0_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_6_0_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_6_0_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_6_0_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_1_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_1_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_1_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_1_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_1_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_1_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_1_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_1_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_1_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_1_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_1_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_1_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_1_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_1_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_1_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_1_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_1_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_1_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_1_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_1_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_1_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_1_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_1_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_1_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_1_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_1_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_1_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_1_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_1_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_1_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_1_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_1_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_1_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_1_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_1_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_1_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_1_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_6_1_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_6_1_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_1_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_1_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_6_1_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_6_1_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_6_1_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_2_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_2_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_2_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_2_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_2_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_2_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_2_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_2_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_2_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_2_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_2_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_2_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_2_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_2_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_2_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_2_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_2_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_2_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_2_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_2_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_2_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_2_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_2_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_2_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_2_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_2_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_2_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_2_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_2_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_2_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_2_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_2_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_2_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_2_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_2_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_2_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_2_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_6_2_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_6_2_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_2_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_2_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_6_2_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_6_2_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_6_2_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_3_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_3_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_3_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_3_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_3_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_3_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_3_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_3_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_3_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_3_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_3_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_3_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_3_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_3_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_3_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_3_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_3_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_3_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_3_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_3_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_3_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_3_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_3_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_3_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_3_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_3_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_3_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_3_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_3_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_3_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_3_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_3_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_3_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_3_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_3_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_3_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_3_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_6_3_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_6_3_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_3_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_3_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_6_3_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_6_3_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_6_3_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_4_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_4_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_4_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_4_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_4_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_4_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_4_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_4_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_4_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_4_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_4_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_4_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_4_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_4_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_4_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_4_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_4_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_4_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_4_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_4_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_4_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_4_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_4_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_4_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_4_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_4_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_4_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_4_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_4_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_4_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_4_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_4_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_4_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_4_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_4_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_4_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_4_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_6_4_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_6_4_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_4_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_4_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_6_4_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_6_4_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_6_4_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_5_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_5_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_5_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_5_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_5_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_5_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_5_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_5_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_5_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_5_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_5_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_5_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_5_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_5_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_5_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_5_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_5_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_5_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_5_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_5_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_5_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_5_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_5_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_5_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_5_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_5_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_5_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_5_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_5_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_5_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_5_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_5_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_5_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_5_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_5_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_5_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_5_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_6_5_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_6_5_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_5_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_5_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_6_5_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_6_5_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_6_5_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_6_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_6_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_6_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_6_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_6_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_6_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_6_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_6_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_6_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_6_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_6_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_6_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_6_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_6_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_6_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_6_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_6_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_6_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_6_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_6_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_6_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_6_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_6_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_6_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_6_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_6_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_6_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_6_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_6_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_6_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_6_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_6_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_6_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_6_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_6_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_6_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_6_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_6_6_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_6_6_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_6_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_6_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_6_6_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_6_6_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_6_6_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_7_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_7_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_7_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_7_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_7_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_7_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_7_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_7_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_7_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_7_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_7_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_7_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_7_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_7_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_7_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_7_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_7_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_7_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_7_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_7_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_7_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_7_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_7_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_7_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_7_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_7_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_7_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_7_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_7_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_7_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_7_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_7_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_7_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_7_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_7_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_7_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_7_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_6_7_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_6_7_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_7_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_7_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_6_7_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_6_7_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_6_7_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_8_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_8_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_8_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_8_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_8_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_8_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_8_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_8_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_8_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_8_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_8_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_8_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_8_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_8_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_8_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_8_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_8_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_8_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_8_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_8_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_8_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_8_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_8_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_8_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_8_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_8_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_8_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_8_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_8_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_8_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_8_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_8_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_8_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_8_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_8_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_8_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_8_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_6_8_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_6_8_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_8_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_8_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_6_8_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_6_8_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_6_8_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_9_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_9_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_9_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_9_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_9_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_9_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_9_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_9_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_9_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_9_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_9_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_9_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_9_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_9_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_9_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_9_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_9_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_9_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_9_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_9_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_9_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_9_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_9_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_9_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_9_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_9_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_9_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_9_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_9_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_9_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_9_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_9_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_9_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_9_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_9_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_9_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_9_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_6_9_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_6_9_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_9_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_9_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_6_9_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_6_9_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_6_9_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_10_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_10_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_10_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_10_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_10_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_10_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_10_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_10_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_10_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_10_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_10_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_10_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_10_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_10_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_10_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_10_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_10_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_10_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_10_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_10_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_10_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_10_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_10_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_10_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_10_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_10_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_10_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_10_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_10_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_10_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_10_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_10_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_6_10_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_10_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_10_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_10_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_10_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_6_10_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_6_10_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_10_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_6_10_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_6_10_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_6_10_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_6_10_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  ccon_7_wb_clk_i; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_7_wb_rst_i; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_7_io_cs_i; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_7_io_ack_o; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_7_io_we_i; // @[UserProjectWrapper.scala 80:19]
  wire [11:0] ccon_7_io_adr_i; // @[UserProjectWrapper.scala 80:19]
  wire [31:0] ccon_7_io_dat_i; // @[UserProjectWrapper.scala 80:19]
  wire [31:0] ccon_7_io_dat_o; // @[UserProjectWrapper.scala 80:19]
  wire [7:0] ccon_7_io_dsi_in; // @[UserProjectWrapper.scala 80:19]
  wire [63:0] ccon_7_io_dataLastBlock; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_7_io_dsi_o; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_7_io_b_cs_i_0; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_7_io_b_cs_i_1; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_7_io_b_cs_i_2; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_7_io_b_cs_i_3; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_7_io_b_cs_i_4; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_7_io_b_cs_i_5; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_7_io_b_cs_i_6; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_7_io_b_cs_i_7; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_7_io_b_cs_i_8; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_7_io_b_cs_i_9; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_7_io_b_cs_i_10; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_7_io_b_we_i; // @[UserProjectWrapper.scala 80:19]
  wire [1:0] ccon_7_io_b_adr_i; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_7_io_b_dat_i; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_7_io_b_dat_o_0; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_7_io_b_dat_o_1; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_7_io_b_dat_o_2; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_7_io_b_dat_o_3; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_7_io_b_dat_o_4; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_7_io_b_dat_o_5; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_7_io_b_dat_o_6; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_7_io_b_dat_o_7; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_7_io_b_dat_o_8; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_7_io_b_dat_o_9; // @[UserProjectWrapper.scala 80:19]
  wire [15:0] ccon_7_io_b_dat_o_10; // @[UserProjectWrapper.scala 80:19]
  wire [10:0] ccon_7_io_vout; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_7_io_irq; // @[UserProjectWrapper.scala 80:19]
  wire  ccon_7_io_sync_out; // @[UserProjectWrapper.scala 80:19]
  wire  cb_7_0_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_0_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_0_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_0_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_0_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_0_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_0_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_0_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_0_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_0_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_0_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_0_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_0_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_0_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_0_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_0_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_0_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_0_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_0_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_0_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_0_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_0_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_0_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_0_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_0_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_0_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_0_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_0_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_0_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_0_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_0_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_0_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_0_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_0_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_0_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_0_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_0_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_7_0_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_7_0_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_0_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_0_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_7_0_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_7_0_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_7_0_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_1_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_1_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_1_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_1_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_1_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_1_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_1_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_1_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_1_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_1_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_1_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_1_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_1_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_1_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_1_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_1_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_1_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_1_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_1_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_1_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_1_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_1_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_1_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_1_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_1_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_1_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_1_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_1_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_1_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_1_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_1_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_1_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_1_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_1_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_1_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_1_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_1_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_7_1_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_7_1_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_1_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_1_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_7_1_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_7_1_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_7_1_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_2_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_2_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_2_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_2_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_2_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_2_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_2_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_2_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_2_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_2_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_2_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_2_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_2_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_2_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_2_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_2_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_2_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_2_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_2_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_2_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_2_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_2_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_2_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_2_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_2_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_2_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_2_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_2_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_2_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_2_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_2_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_2_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_2_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_2_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_2_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_2_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_2_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_7_2_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_7_2_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_2_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_2_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_7_2_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_7_2_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_7_2_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_3_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_3_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_3_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_3_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_3_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_3_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_3_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_3_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_3_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_3_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_3_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_3_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_3_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_3_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_3_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_3_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_3_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_3_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_3_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_3_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_3_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_3_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_3_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_3_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_3_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_3_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_3_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_3_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_3_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_3_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_3_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_3_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_3_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_3_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_3_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_3_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_3_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_7_3_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_7_3_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_3_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_3_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_7_3_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_7_3_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_7_3_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_4_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_4_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_4_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_4_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_4_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_4_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_4_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_4_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_4_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_4_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_4_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_4_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_4_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_4_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_4_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_4_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_4_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_4_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_4_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_4_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_4_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_4_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_4_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_4_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_4_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_4_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_4_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_4_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_4_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_4_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_4_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_4_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_4_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_4_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_4_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_4_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_4_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_7_4_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_7_4_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_4_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_4_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_7_4_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_7_4_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_7_4_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_5_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_5_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_5_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_5_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_5_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_5_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_5_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_5_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_5_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_5_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_5_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_5_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_5_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_5_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_5_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_5_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_5_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_5_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_5_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_5_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_5_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_5_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_5_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_5_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_5_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_5_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_5_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_5_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_5_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_5_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_5_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_5_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_5_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_5_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_5_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_5_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_5_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_7_5_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_7_5_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_5_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_5_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_7_5_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_7_5_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_7_5_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_6_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_6_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_6_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_6_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_6_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_6_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_6_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_6_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_6_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_6_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_6_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_6_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_6_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_6_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_6_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_6_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_6_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_6_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_6_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_6_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_6_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_6_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_6_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_6_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_6_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_6_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_6_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_6_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_6_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_6_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_6_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_6_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_6_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_6_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_6_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_6_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_6_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_7_6_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_7_6_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_6_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_6_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_7_6_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_7_6_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_7_6_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_7_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_7_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_7_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_7_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_7_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_7_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_7_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_7_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_7_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_7_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_7_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_7_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_7_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_7_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_7_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_7_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_7_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_7_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_7_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_7_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_7_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_7_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_7_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_7_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_7_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_7_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_7_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_7_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_7_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_7_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_7_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_7_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_7_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_7_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_7_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_7_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_7_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_7_7_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_7_7_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_7_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_7_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_7_7_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_7_7_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_7_7_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_8_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_8_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_8_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_8_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_8_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_8_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_8_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_8_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_8_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_8_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_8_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_8_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_8_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_8_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_8_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_8_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_8_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_8_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_8_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_8_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_8_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_8_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_8_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_8_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_8_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_8_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_8_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_8_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_8_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_8_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_8_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_8_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_8_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_8_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_8_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_8_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_8_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_7_8_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_7_8_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_8_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_8_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_7_8_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_7_8_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_7_8_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_9_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_9_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_9_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_9_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_9_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_9_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_9_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_9_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_9_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_9_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_9_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_9_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_9_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_9_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_9_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_9_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_9_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_9_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_9_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_9_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_9_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_9_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_9_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_9_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_9_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_9_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_9_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_9_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_9_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_9_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_9_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_9_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_9_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_9_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_9_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_9_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_9_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_7_9_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_7_9_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_9_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_9_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_7_9_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_7_9_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_7_9_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_10_wb_clk_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_10_wb_rst_i; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_10_io_i_0_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_10_io_i_0_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_10_io_i_1_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_10_io_i_1_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_10_io_i_2_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_10_io_i_2_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_10_io_i_3_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_10_io_i_3_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_10_io_i_4_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_10_io_i_4_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_10_io_i_5_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_10_io_i_5_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_10_io_i_6_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_10_io_i_6_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_10_io_i_7_in1; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_10_io_i_7_ci; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_10_io_o_0_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_10_io_o_0_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_10_io_o_1_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_10_io_o_1_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_10_io_o_2_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_10_io_o_2_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_10_io_o_3_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_10_io_o_3_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_10_io_o_4_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_10_io_o_4_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_10_io_o_5_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_10_io_o_5_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_10_io_o_6_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_10_io_o_6_co; // @[UserProjectWrapper.scala 98:21]
  wire [7:0] cb_7_10_io_o_7_out; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_10_io_o_7_co; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_10_io_vi; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_10_io_vci; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_10_io_vco; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_7_10_io_eo; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] cb_7_10_io_wo; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_10_io_cs_i; // @[UserProjectWrapper.scala 98:21]
  wire  cb_7_10_io_we_i; // @[UserProjectWrapper.scala 98:21]
  wire [1:0] cb_7_10_io_adr_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_7_10_io_dat_i; // @[UserProjectWrapper.scala 98:21]
  wire [15:0] cb_7_10_io_dat_o; // @[UserProjectWrapper.scala 98:21]
  wire [63:0] _T_7; // @[Cat.scala 29:58]
  wire [63:0] _T_8; // @[Cat.scala 29:58]
  wire [31:0] _T_33; // @[Cat.scala 29:58]
  wire [31:0] _T_36; // @[Cat.scala 29:58]
  wire [31:0] _T_53; // @[Cat.scala 29:58]
  wire [31:0] _T_56; // @[Cat.scala 29:58]
  wire [31:0] _T_73; // @[Cat.scala 29:58]
  wire [31:0] _T_76; // @[Cat.scala 29:58]
  wire [31:0] _T_93; // @[Cat.scala 29:58]
  wire [31:0] _T_96; // @[Cat.scala 29:58]
  wire [31:0] _T_113; // @[Cat.scala 29:58]
  wire [31:0] _T_116; // @[Cat.scala 29:58]
  wire [31:0] _T_133; // @[Cat.scala 29:58]
  wire [31:0] _T_136; // @[Cat.scala 29:58]
  wire [31:0] _T_153; // @[Cat.scala 29:58]
  wire [31:0] _T_156; // @[Cat.scala 29:58]
  wire [31:0] _T_173; // @[Cat.scala 29:58]
  wire [31:0] _T_176; // @[Cat.scala 29:58]
  wire [3:0] _T_180; // @[Cat.scala 29:58]
  wire [3:0] _T_183; // @[Cat.scala 29:58]
  wire [5:0] _T_189; // @[Cat.scala 29:58]
  wire [5:0] _T_194; // @[Cat.scala 29:58]
  wire [5:0] _T_200; // @[Cat.scala 29:58]
  wire [5:0] _T_205; // @[Cat.scala 29:58]
  wb_local icon ( // @[UserProjectWrapper.scala 17:20]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(icon_wb_clk_i),
    .wb_rst_i(icon_wb_rst_i),
    .wbs_stb_i(icon_wbs_stb_i),
    .wbs_cyc_i(icon_wbs_cyc_i),
    .wbs_we_i(icon_wbs_we_i),
    .wbs_sel_i(icon_wbs_sel_i),
    .wbs_dat_i(icon_wbs_dat_i),
    .wbs_adr_i(icon_wbs_adr_i),
    .wbs_ack_o(icon_wbs_ack_o),
    .wbs_dat_o(icon_wbs_dat_o),
    .io_in(icon_io_in),
    .io_out(icon_io_out),
    .io_oeb(icon_io_oeb),
    .irq(icon_irq),
    .m_wb_clk_i(icon_m_wb_clk_i),
    .m_wb_rst_i(icon_m_wb_rst_i),
    .la_reset(icon_la_reset),
    .m_la_reset(icon_m_la_reset),
    .m_wbs_we_i(icon_m_wbs_we_i),
    .m_wbs_cs_i(icon_m_wbs_cs_i),
    .m_wbs_adr_i(icon_m_wbs_adr_i),
    .m_wbs_dat_i(icon_m_wbs_dat_i),
    .m_wbs_ack_o(icon_m_wbs_ack_o),
    .m_wbs_dat_o_0(icon_m_wbs_dat_o_0),
    .m_wbs_dat_o_1(icon_m_wbs_dat_o_1),
    .m_wbs_dat_o_2(icon_m_wbs_dat_o_2),
    .m_wbs_dat_o_3(icon_m_wbs_dat_o_3),
    .m_wbs_dat_o_4(icon_m_wbs_dat_o_4),
    .m_wbs_dat_o_5(icon_m_wbs_dat_o_5),
    .m_wbs_dat_o_6(icon_m_wbs_dat_o_6),
    .m_wbs_dat_o_7(icon_m_wbs_dat_o_7),
    .m_wbs_dat_o_8(icon_m_wbs_dat_o_8),
    .m_wbs_dat_o_9(icon_m_wbs_dat_o_9),
    .m_wbs_dat_o_10(icon_m_wbs_dat_o_10),
    .m_wbs_dat_o_11(icon_m_wbs_dat_o_11),
    .m_irqs(icon_m_irqs),
    .dsi(icon_dsi),
    .mt_QEI_ChA_0(icon_mt_QEI_ChA_0),
    .mt_QEI_ChA_1(icon_mt_QEI_ChA_1),
    .mt_QEI_ChA_2(icon_mt_QEI_ChA_2),
    .mt_QEI_ChA_3(icon_mt_QEI_ChA_3),
    .mt_QEI_ChB_0(icon_mt_QEI_ChB_0),
    .mt_QEI_ChB_1(icon_mt_QEI_ChB_1),
    .mt_QEI_ChB_2(icon_mt_QEI_ChB_2),
    .mt_QEI_ChB_3(icon_mt_QEI_ChB_3),
    .mt_pwm_h_0(icon_mt_pwm_h_0),
    .mt_pwm_h_1(icon_mt_pwm_h_1),
    .mt_pwm_h_2(icon_mt_pwm_h_2),
    .mt_pwm_h_3(icon_mt_pwm_h_3),
    .mt_pwm_l_0(icon_mt_pwm_l_0),
    .mt_pwm_l_1(icon_mt_pwm_l_1),
    .mt_pwm_l_2(icon_mt_pwm_l_2),
    .mt_pwm_l_3(icon_mt_pwm_l_3),
    .mt_pwm_test(icon_mt_pwm_test),
    .mt_clo_test(icon_mt_clo_test),
    .mt_sync_in(icon_mt_sync_in),
    .mt_sync_out(icon_mt_sync_out)
  );
  sin3 cordic ( // @[UserProjectWrapper.scala 29:22]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .asel(cordic_asel),
    .e_o(cordic_e_o),
    .w_o(cordic_w_o),
    .se_o(cordic_se_o),
    .sw_o(cordic_sw_o),
    .e_i(cordic_e_i),
    .w_i(cordic_w_i),
    .se_i(cordic_se_i),
    .sw_i(cordic_sw_i)
  );
  motor_top mcons_0 ( // @[UserProjectWrapper.scala 42:22]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .clock(mcons_0_clock),
    .reset(mcons_0_reset),
    .io_wb_adr_i(mcons_0_io_wb_adr_i),
    .io_wb_dat_i(mcons_0_io_wb_dat_i),
    .io_wb_we_i(mcons_0_io_wb_we_i),
    .io_wb_cs_i(mcons_0_io_wb_cs_i),
    .io_wb_ack_o(mcons_0_io_wb_ack_o),
    .io_wb_dat_o(mcons_0_io_wb_dat_o),
    .io_irq(mcons_0_io_irq),
    .io_QEI_ChA(mcons_0_io_QEI_ChA),
    .io_QEI_ChB(mcons_0_io_QEI_ChB),
    .io_pwm_h(mcons_0_io_pwm_h),
    .io_pwm_l(mcons_0_io_pwm_l),
    .io_sync_in(mcons_0_io_sync_in),
    .io_sync_out(mcons_0_io_sync_out),
    .io_pwm_test(mcons_0_io_pwm_test),
    .io_clo_test(mcons_0_io_clo_test)
  );
  motor_top mcons_1 ( // @[UserProjectWrapper.scala 42:22]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .clock(mcons_1_clock),
    .reset(mcons_1_reset),
    .io_wb_adr_i(mcons_1_io_wb_adr_i),
    .io_wb_dat_i(mcons_1_io_wb_dat_i),
    .io_wb_we_i(mcons_1_io_wb_we_i),
    .io_wb_cs_i(mcons_1_io_wb_cs_i),
    .io_wb_ack_o(mcons_1_io_wb_ack_o),
    .io_wb_dat_o(mcons_1_io_wb_dat_o),
    .io_irq(mcons_1_io_irq),
    .io_QEI_ChA(mcons_1_io_QEI_ChA),
    .io_QEI_ChB(mcons_1_io_QEI_ChB),
    .io_pwm_h(mcons_1_io_pwm_h),
    .io_pwm_l(mcons_1_io_pwm_l),
    .io_sync_in(mcons_1_io_sync_in),
    .io_sync_out(mcons_1_io_sync_out),
    .io_pwm_test(mcons_1_io_pwm_test),
    .io_clo_test(mcons_1_io_clo_test)
  );
  motor_top mcons_2 ( // @[UserProjectWrapper.scala 42:22]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .clock(mcons_2_clock),
    .reset(mcons_2_reset),
    .io_wb_adr_i(mcons_2_io_wb_adr_i),
    .io_wb_dat_i(mcons_2_io_wb_dat_i),
    .io_wb_we_i(mcons_2_io_wb_we_i),
    .io_wb_cs_i(mcons_2_io_wb_cs_i),
    .io_wb_ack_o(mcons_2_io_wb_ack_o),
    .io_wb_dat_o(mcons_2_io_wb_dat_o),
    .io_irq(mcons_2_io_irq),
    .io_QEI_ChA(mcons_2_io_QEI_ChA),
    .io_QEI_ChB(mcons_2_io_QEI_ChB),
    .io_pwm_h(mcons_2_io_pwm_h),
    .io_pwm_l(mcons_2_io_pwm_l),
    .io_sync_in(mcons_2_io_sync_in),
    .io_sync_out(mcons_2_io_sync_out),
    .io_pwm_test(mcons_2_io_pwm_test),
    .io_clo_test(mcons_2_io_clo_test)
  );
  motor_top mcons_3 ( // @[UserProjectWrapper.scala 42:22]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .clock(mcons_3_clock),
    .reset(mcons_3_reset),
    .io_wb_adr_i(mcons_3_io_wb_adr_i),
    .io_wb_dat_i(mcons_3_io_wb_dat_i),
    .io_wb_we_i(mcons_3_io_wb_we_i),
    .io_wb_cs_i(mcons_3_io_wb_cs_i),
    .io_wb_ack_o(mcons_3_io_wb_ack_o),
    .io_wb_dat_o(mcons_3_io_wb_dat_o),
    .io_irq(mcons_3_io_irq),
    .io_QEI_ChA(mcons_3_io_QEI_ChA),
    .io_QEI_ChB(mcons_3_io_QEI_ChB),
    .io_pwm_h(mcons_3_io_pwm_h),
    .io_pwm_l(mcons_3_io_pwm_l),
    .io_sync_in(mcons_3_io_sync_in),
    .io_sync_out(mcons_3_io_sync_out),
    .io_pwm_test(mcons_3_io_pwm_test),
    .io_clo_test(mcons_3_io_clo_test)
  );
  cic_con ccon_0 ( // @[UserProjectWrapper.scala 80:19]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(ccon_0_wb_clk_i),
    .wb_rst_i(ccon_0_wb_rst_i),
    .io_cs_i(ccon_0_io_cs_i),
    .io_ack_o(ccon_0_io_ack_o),
    .io_we_i(ccon_0_io_we_i),
    .io_adr_i(ccon_0_io_adr_i),
    .io_dat_i(ccon_0_io_dat_i),
    .io_dat_o(ccon_0_io_dat_o),
    .io_dsi_in(ccon_0_io_dsi_in),
    .io_dataLastBlock(ccon_0_io_dataLastBlock),
    .io_dsi_o(ccon_0_io_dsi_o),
    .io_b_cs_i_0(ccon_0_io_b_cs_i_0),
    .io_b_cs_i_1(ccon_0_io_b_cs_i_1),
    .io_b_cs_i_2(ccon_0_io_b_cs_i_2),
    .io_b_cs_i_3(ccon_0_io_b_cs_i_3),
    .io_b_cs_i_4(ccon_0_io_b_cs_i_4),
    .io_b_cs_i_5(ccon_0_io_b_cs_i_5),
    .io_b_cs_i_6(ccon_0_io_b_cs_i_6),
    .io_b_cs_i_7(ccon_0_io_b_cs_i_7),
    .io_b_cs_i_8(ccon_0_io_b_cs_i_8),
    .io_b_cs_i_9(ccon_0_io_b_cs_i_9),
    .io_b_cs_i_10(ccon_0_io_b_cs_i_10),
    .io_b_we_i(ccon_0_io_b_we_i),
    .io_b_adr_i(ccon_0_io_b_adr_i),
    .io_b_dat_i(ccon_0_io_b_dat_i),
    .io_b_dat_o_0(ccon_0_io_b_dat_o_0),
    .io_b_dat_o_1(ccon_0_io_b_dat_o_1),
    .io_b_dat_o_2(ccon_0_io_b_dat_o_2),
    .io_b_dat_o_3(ccon_0_io_b_dat_o_3),
    .io_b_dat_o_4(ccon_0_io_b_dat_o_4),
    .io_b_dat_o_5(ccon_0_io_b_dat_o_5),
    .io_b_dat_o_6(ccon_0_io_b_dat_o_6),
    .io_b_dat_o_7(ccon_0_io_b_dat_o_7),
    .io_b_dat_o_8(ccon_0_io_b_dat_o_8),
    .io_b_dat_o_9(ccon_0_io_b_dat_o_9),
    .io_b_dat_o_10(ccon_0_io_b_dat_o_10),
    .io_vout(ccon_0_io_vout),
    .io_irq(ccon_0_io_irq),
    .io_sync_out(ccon_0_io_sync_out)
  );
  cic_block cb_0_0 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_0_0_wb_clk_i),
    .wb_rst_i(cb_0_0_wb_rst_i),
    .io_i_0_in1(cb_0_0_io_i_0_in1),
    .io_i_0_ci(cb_0_0_io_i_0_ci),
    .io_i_1_in1(cb_0_0_io_i_1_in1),
    .io_i_1_ci(cb_0_0_io_i_1_ci),
    .io_i_2_in1(cb_0_0_io_i_2_in1),
    .io_i_2_ci(cb_0_0_io_i_2_ci),
    .io_i_3_in1(cb_0_0_io_i_3_in1),
    .io_i_3_ci(cb_0_0_io_i_3_ci),
    .io_i_4_in1(cb_0_0_io_i_4_in1),
    .io_i_4_ci(cb_0_0_io_i_4_ci),
    .io_i_5_in1(cb_0_0_io_i_5_in1),
    .io_i_5_ci(cb_0_0_io_i_5_ci),
    .io_i_6_in1(cb_0_0_io_i_6_in1),
    .io_i_6_ci(cb_0_0_io_i_6_ci),
    .io_i_7_in1(cb_0_0_io_i_7_in1),
    .io_i_7_ci(cb_0_0_io_i_7_ci),
    .io_o_0_out(cb_0_0_io_o_0_out),
    .io_o_0_co(cb_0_0_io_o_0_co),
    .io_o_1_out(cb_0_0_io_o_1_out),
    .io_o_1_co(cb_0_0_io_o_1_co),
    .io_o_2_out(cb_0_0_io_o_2_out),
    .io_o_2_co(cb_0_0_io_o_2_co),
    .io_o_3_out(cb_0_0_io_o_3_out),
    .io_o_3_co(cb_0_0_io_o_3_co),
    .io_o_4_out(cb_0_0_io_o_4_out),
    .io_o_4_co(cb_0_0_io_o_4_co),
    .io_o_5_out(cb_0_0_io_o_5_out),
    .io_o_5_co(cb_0_0_io_o_5_co),
    .io_o_6_out(cb_0_0_io_o_6_out),
    .io_o_6_co(cb_0_0_io_o_6_co),
    .io_o_7_out(cb_0_0_io_o_7_out),
    .io_o_7_co(cb_0_0_io_o_7_co),
    .io_vi(cb_0_0_io_vi),
    .io_vci(cb_0_0_io_vci),
    .io_vco(cb_0_0_io_vco),
    .io_eo(cb_0_0_io_eo),
    .io_wo(cb_0_0_io_wo),
    .io_cs_i(cb_0_0_io_cs_i),
    .io_we_i(cb_0_0_io_we_i),
    .io_adr_i(cb_0_0_io_adr_i),
    .io_dat_i(cb_0_0_io_dat_i),
    .io_dat_o(cb_0_0_io_dat_o)
  );
  cic_block cb_0_1 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_0_1_wb_clk_i),
    .wb_rst_i(cb_0_1_wb_rst_i),
    .io_i_0_in1(cb_0_1_io_i_0_in1),
    .io_i_0_ci(cb_0_1_io_i_0_ci),
    .io_i_1_in1(cb_0_1_io_i_1_in1),
    .io_i_1_ci(cb_0_1_io_i_1_ci),
    .io_i_2_in1(cb_0_1_io_i_2_in1),
    .io_i_2_ci(cb_0_1_io_i_2_ci),
    .io_i_3_in1(cb_0_1_io_i_3_in1),
    .io_i_3_ci(cb_0_1_io_i_3_ci),
    .io_i_4_in1(cb_0_1_io_i_4_in1),
    .io_i_4_ci(cb_0_1_io_i_4_ci),
    .io_i_5_in1(cb_0_1_io_i_5_in1),
    .io_i_5_ci(cb_0_1_io_i_5_ci),
    .io_i_6_in1(cb_0_1_io_i_6_in1),
    .io_i_6_ci(cb_0_1_io_i_6_ci),
    .io_i_7_in1(cb_0_1_io_i_7_in1),
    .io_i_7_ci(cb_0_1_io_i_7_ci),
    .io_o_0_out(cb_0_1_io_o_0_out),
    .io_o_0_co(cb_0_1_io_o_0_co),
    .io_o_1_out(cb_0_1_io_o_1_out),
    .io_o_1_co(cb_0_1_io_o_1_co),
    .io_o_2_out(cb_0_1_io_o_2_out),
    .io_o_2_co(cb_0_1_io_o_2_co),
    .io_o_3_out(cb_0_1_io_o_3_out),
    .io_o_3_co(cb_0_1_io_o_3_co),
    .io_o_4_out(cb_0_1_io_o_4_out),
    .io_o_4_co(cb_0_1_io_o_4_co),
    .io_o_5_out(cb_0_1_io_o_5_out),
    .io_o_5_co(cb_0_1_io_o_5_co),
    .io_o_6_out(cb_0_1_io_o_6_out),
    .io_o_6_co(cb_0_1_io_o_6_co),
    .io_o_7_out(cb_0_1_io_o_7_out),
    .io_o_7_co(cb_0_1_io_o_7_co),
    .io_vi(cb_0_1_io_vi),
    .io_vci(cb_0_1_io_vci),
    .io_vco(cb_0_1_io_vco),
    .io_eo(cb_0_1_io_eo),
    .io_wo(cb_0_1_io_wo),
    .io_cs_i(cb_0_1_io_cs_i),
    .io_we_i(cb_0_1_io_we_i),
    .io_adr_i(cb_0_1_io_adr_i),
    .io_dat_i(cb_0_1_io_dat_i),
    .io_dat_o(cb_0_1_io_dat_o)
  );
  cic_block cb_0_2 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_0_2_wb_clk_i),
    .wb_rst_i(cb_0_2_wb_rst_i),
    .io_i_0_in1(cb_0_2_io_i_0_in1),
    .io_i_0_ci(cb_0_2_io_i_0_ci),
    .io_i_1_in1(cb_0_2_io_i_1_in1),
    .io_i_1_ci(cb_0_2_io_i_1_ci),
    .io_i_2_in1(cb_0_2_io_i_2_in1),
    .io_i_2_ci(cb_0_2_io_i_2_ci),
    .io_i_3_in1(cb_0_2_io_i_3_in1),
    .io_i_3_ci(cb_0_2_io_i_3_ci),
    .io_i_4_in1(cb_0_2_io_i_4_in1),
    .io_i_4_ci(cb_0_2_io_i_4_ci),
    .io_i_5_in1(cb_0_2_io_i_5_in1),
    .io_i_5_ci(cb_0_2_io_i_5_ci),
    .io_i_6_in1(cb_0_2_io_i_6_in1),
    .io_i_6_ci(cb_0_2_io_i_6_ci),
    .io_i_7_in1(cb_0_2_io_i_7_in1),
    .io_i_7_ci(cb_0_2_io_i_7_ci),
    .io_o_0_out(cb_0_2_io_o_0_out),
    .io_o_0_co(cb_0_2_io_o_0_co),
    .io_o_1_out(cb_0_2_io_o_1_out),
    .io_o_1_co(cb_0_2_io_o_1_co),
    .io_o_2_out(cb_0_2_io_o_2_out),
    .io_o_2_co(cb_0_2_io_o_2_co),
    .io_o_3_out(cb_0_2_io_o_3_out),
    .io_o_3_co(cb_0_2_io_o_3_co),
    .io_o_4_out(cb_0_2_io_o_4_out),
    .io_o_4_co(cb_0_2_io_o_4_co),
    .io_o_5_out(cb_0_2_io_o_5_out),
    .io_o_5_co(cb_0_2_io_o_5_co),
    .io_o_6_out(cb_0_2_io_o_6_out),
    .io_o_6_co(cb_0_2_io_o_6_co),
    .io_o_7_out(cb_0_2_io_o_7_out),
    .io_o_7_co(cb_0_2_io_o_7_co),
    .io_vi(cb_0_2_io_vi),
    .io_vci(cb_0_2_io_vci),
    .io_vco(cb_0_2_io_vco),
    .io_eo(cb_0_2_io_eo),
    .io_wo(cb_0_2_io_wo),
    .io_cs_i(cb_0_2_io_cs_i),
    .io_we_i(cb_0_2_io_we_i),
    .io_adr_i(cb_0_2_io_adr_i),
    .io_dat_i(cb_0_2_io_dat_i),
    .io_dat_o(cb_0_2_io_dat_o)
  );
  cic_block cb_0_3 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_0_3_wb_clk_i),
    .wb_rst_i(cb_0_3_wb_rst_i),
    .io_i_0_in1(cb_0_3_io_i_0_in1),
    .io_i_0_ci(cb_0_3_io_i_0_ci),
    .io_i_1_in1(cb_0_3_io_i_1_in1),
    .io_i_1_ci(cb_0_3_io_i_1_ci),
    .io_i_2_in1(cb_0_3_io_i_2_in1),
    .io_i_2_ci(cb_0_3_io_i_2_ci),
    .io_i_3_in1(cb_0_3_io_i_3_in1),
    .io_i_3_ci(cb_0_3_io_i_3_ci),
    .io_i_4_in1(cb_0_3_io_i_4_in1),
    .io_i_4_ci(cb_0_3_io_i_4_ci),
    .io_i_5_in1(cb_0_3_io_i_5_in1),
    .io_i_5_ci(cb_0_3_io_i_5_ci),
    .io_i_6_in1(cb_0_3_io_i_6_in1),
    .io_i_6_ci(cb_0_3_io_i_6_ci),
    .io_i_7_in1(cb_0_3_io_i_7_in1),
    .io_i_7_ci(cb_0_3_io_i_7_ci),
    .io_o_0_out(cb_0_3_io_o_0_out),
    .io_o_0_co(cb_0_3_io_o_0_co),
    .io_o_1_out(cb_0_3_io_o_1_out),
    .io_o_1_co(cb_0_3_io_o_1_co),
    .io_o_2_out(cb_0_3_io_o_2_out),
    .io_o_2_co(cb_0_3_io_o_2_co),
    .io_o_3_out(cb_0_3_io_o_3_out),
    .io_o_3_co(cb_0_3_io_o_3_co),
    .io_o_4_out(cb_0_3_io_o_4_out),
    .io_o_4_co(cb_0_3_io_o_4_co),
    .io_o_5_out(cb_0_3_io_o_5_out),
    .io_o_5_co(cb_0_3_io_o_5_co),
    .io_o_6_out(cb_0_3_io_o_6_out),
    .io_o_6_co(cb_0_3_io_o_6_co),
    .io_o_7_out(cb_0_3_io_o_7_out),
    .io_o_7_co(cb_0_3_io_o_7_co),
    .io_vi(cb_0_3_io_vi),
    .io_vci(cb_0_3_io_vci),
    .io_vco(cb_0_3_io_vco),
    .io_eo(cb_0_3_io_eo),
    .io_wo(cb_0_3_io_wo),
    .io_cs_i(cb_0_3_io_cs_i),
    .io_we_i(cb_0_3_io_we_i),
    .io_adr_i(cb_0_3_io_adr_i),
    .io_dat_i(cb_0_3_io_dat_i),
    .io_dat_o(cb_0_3_io_dat_o)
  );
  cic_block cb_0_4 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_0_4_wb_clk_i),
    .wb_rst_i(cb_0_4_wb_rst_i),
    .io_i_0_in1(cb_0_4_io_i_0_in1),
    .io_i_0_ci(cb_0_4_io_i_0_ci),
    .io_i_1_in1(cb_0_4_io_i_1_in1),
    .io_i_1_ci(cb_0_4_io_i_1_ci),
    .io_i_2_in1(cb_0_4_io_i_2_in1),
    .io_i_2_ci(cb_0_4_io_i_2_ci),
    .io_i_3_in1(cb_0_4_io_i_3_in1),
    .io_i_3_ci(cb_0_4_io_i_3_ci),
    .io_i_4_in1(cb_0_4_io_i_4_in1),
    .io_i_4_ci(cb_0_4_io_i_4_ci),
    .io_i_5_in1(cb_0_4_io_i_5_in1),
    .io_i_5_ci(cb_0_4_io_i_5_ci),
    .io_i_6_in1(cb_0_4_io_i_6_in1),
    .io_i_6_ci(cb_0_4_io_i_6_ci),
    .io_i_7_in1(cb_0_4_io_i_7_in1),
    .io_i_7_ci(cb_0_4_io_i_7_ci),
    .io_o_0_out(cb_0_4_io_o_0_out),
    .io_o_0_co(cb_0_4_io_o_0_co),
    .io_o_1_out(cb_0_4_io_o_1_out),
    .io_o_1_co(cb_0_4_io_o_1_co),
    .io_o_2_out(cb_0_4_io_o_2_out),
    .io_o_2_co(cb_0_4_io_o_2_co),
    .io_o_3_out(cb_0_4_io_o_3_out),
    .io_o_3_co(cb_0_4_io_o_3_co),
    .io_o_4_out(cb_0_4_io_o_4_out),
    .io_o_4_co(cb_0_4_io_o_4_co),
    .io_o_5_out(cb_0_4_io_o_5_out),
    .io_o_5_co(cb_0_4_io_o_5_co),
    .io_o_6_out(cb_0_4_io_o_6_out),
    .io_o_6_co(cb_0_4_io_o_6_co),
    .io_o_7_out(cb_0_4_io_o_7_out),
    .io_o_7_co(cb_0_4_io_o_7_co),
    .io_vi(cb_0_4_io_vi),
    .io_vci(cb_0_4_io_vci),
    .io_vco(cb_0_4_io_vco),
    .io_eo(cb_0_4_io_eo),
    .io_wo(cb_0_4_io_wo),
    .io_cs_i(cb_0_4_io_cs_i),
    .io_we_i(cb_0_4_io_we_i),
    .io_adr_i(cb_0_4_io_adr_i),
    .io_dat_i(cb_0_4_io_dat_i),
    .io_dat_o(cb_0_4_io_dat_o)
  );
  cic_block cb_0_5 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_0_5_wb_clk_i),
    .wb_rst_i(cb_0_5_wb_rst_i),
    .io_i_0_in1(cb_0_5_io_i_0_in1),
    .io_i_0_ci(cb_0_5_io_i_0_ci),
    .io_i_1_in1(cb_0_5_io_i_1_in1),
    .io_i_1_ci(cb_0_5_io_i_1_ci),
    .io_i_2_in1(cb_0_5_io_i_2_in1),
    .io_i_2_ci(cb_0_5_io_i_2_ci),
    .io_i_3_in1(cb_0_5_io_i_3_in1),
    .io_i_3_ci(cb_0_5_io_i_3_ci),
    .io_i_4_in1(cb_0_5_io_i_4_in1),
    .io_i_4_ci(cb_0_5_io_i_4_ci),
    .io_i_5_in1(cb_0_5_io_i_5_in1),
    .io_i_5_ci(cb_0_5_io_i_5_ci),
    .io_i_6_in1(cb_0_5_io_i_6_in1),
    .io_i_6_ci(cb_0_5_io_i_6_ci),
    .io_i_7_in1(cb_0_5_io_i_7_in1),
    .io_i_7_ci(cb_0_5_io_i_7_ci),
    .io_o_0_out(cb_0_5_io_o_0_out),
    .io_o_0_co(cb_0_5_io_o_0_co),
    .io_o_1_out(cb_0_5_io_o_1_out),
    .io_o_1_co(cb_0_5_io_o_1_co),
    .io_o_2_out(cb_0_5_io_o_2_out),
    .io_o_2_co(cb_0_5_io_o_2_co),
    .io_o_3_out(cb_0_5_io_o_3_out),
    .io_o_3_co(cb_0_5_io_o_3_co),
    .io_o_4_out(cb_0_5_io_o_4_out),
    .io_o_4_co(cb_0_5_io_o_4_co),
    .io_o_5_out(cb_0_5_io_o_5_out),
    .io_o_5_co(cb_0_5_io_o_5_co),
    .io_o_6_out(cb_0_5_io_o_6_out),
    .io_o_6_co(cb_0_5_io_o_6_co),
    .io_o_7_out(cb_0_5_io_o_7_out),
    .io_o_7_co(cb_0_5_io_o_7_co),
    .io_vi(cb_0_5_io_vi),
    .io_vci(cb_0_5_io_vci),
    .io_vco(cb_0_5_io_vco),
    .io_eo(cb_0_5_io_eo),
    .io_wo(cb_0_5_io_wo),
    .io_cs_i(cb_0_5_io_cs_i),
    .io_we_i(cb_0_5_io_we_i),
    .io_adr_i(cb_0_5_io_adr_i),
    .io_dat_i(cb_0_5_io_dat_i),
    .io_dat_o(cb_0_5_io_dat_o)
  );
  cic_block cb_0_6 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_0_6_wb_clk_i),
    .wb_rst_i(cb_0_6_wb_rst_i),
    .io_i_0_in1(cb_0_6_io_i_0_in1),
    .io_i_0_ci(cb_0_6_io_i_0_ci),
    .io_i_1_in1(cb_0_6_io_i_1_in1),
    .io_i_1_ci(cb_0_6_io_i_1_ci),
    .io_i_2_in1(cb_0_6_io_i_2_in1),
    .io_i_2_ci(cb_0_6_io_i_2_ci),
    .io_i_3_in1(cb_0_6_io_i_3_in1),
    .io_i_3_ci(cb_0_6_io_i_3_ci),
    .io_i_4_in1(cb_0_6_io_i_4_in1),
    .io_i_4_ci(cb_0_6_io_i_4_ci),
    .io_i_5_in1(cb_0_6_io_i_5_in1),
    .io_i_5_ci(cb_0_6_io_i_5_ci),
    .io_i_6_in1(cb_0_6_io_i_6_in1),
    .io_i_6_ci(cb_0_6_io_i_6_ci),
    .io_i_7_in1(cb_0_6_io_i_7_in1),
    .io_i_7_ci(cb_0_6_io_i_7_ci),
    .io_o_0_out(cb_0_6_io_o_0_out),
    .io_o_0_co(cb_0_6_io_o_0_co),
    .io_o_1_out(cb_0_6_io_o_1_out),
    .io_o_1_co(cb_0_6_io_o_1_co),
    .io_o_2_out(cb_0_6_io_o_2_out),
    .io_o_2_co(cb_0_6_io_o_2_co),
    .io_o_3_out(cb_0_6_io_o_3_out),
    .io_o_3_co(cb_0_6_io_o_3_co),
    .io_o_4_out(cb_0_6_io_o_4_out),
    .io_o_4_co(cb_0_6_io_o_4_co),
    .io_o_5_out(cb_0_6_io_o_5_out),
    .io_o_5_co(cb_0_6_io_o_5_co),
    .io_o_6_out(cb_0_6_io_o_6_out),
    .io_o_6_co(cb_0_6_io_o_6_co),
    .io_o_7_out(cb_0_6_io_o_7_out),
    .io_o_7_co(cb_0_6_io_o_7_co),
    .io_vi(cb_0_6_io_vi),
    .io_vci(cb_0_6_io_vci),
    .io_vco(cb_0_6_io_vco),
    .io_eo(cb_0_6_io_eo),
    .io_wo(cb_0_6_io_wo),
    .io_cs_i(cb_0_6_io_cs_i),
    .io_we_i(cb_0_6_io_we_i),
    .io_adr_i(cb_0_6_io_adr_i),
    .io_dat_i(cb_0_6_io_dat_i),
    .io_dat_o(cb_0_6_io_dat_o)
  );
  cic_block cb_0_7 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_0_7_wb_clk_i),
    .wb_rst_i(cb_0_7_wb_rst_i),
    .io_i_0_in1(cb_0_7_io_i_0_in1),
    .io_i_0_ci(cb_0_7_io_i_0_ci),
    .io_i_1_in1(cb_0_7_io_i_1_in1),
    .io_i_1_ci(cb_0_7_io_i_1_ci),
    .io_i_2_in1(cb_0_7_io_i_2_in1),
    .io_i_2_ci(cb_0_7_io_i_2_ci),
    .io_i_3_in1(cb_0_7_io_i_3_in1),
    .io_i_3_ci(cb_0_7_io_i_3_ci),
    .io_i_4_in1(cb_0_7_io_i_4_in1),
    .io_i_4_ci(cb_0_7_io_i_4_ci),
    .io_i_5_in1(cb_0_7_io_i_5_in1),
    .io_i_5_ci(cb_0_7_io_i_5_ci),
    .io_i_6_in1(cb_0_7_io_i_6_in1),
    .io_i_6_ci(cb_0_7_io_i_6_ci),
    .io_i_7_in1(cb_0_7_io_i_7_in1),
    .io_i_7_ci(cb_0_7_io_i_7_ci),
    .io_o_0_out(cb_0_7_io_o_0_out),
    .io_o_0_co(cb_0_7_io_o_0_co),
    .io_o_1_out(cb_0_7_io_o_1_out),
    .io_o_1_co(cb_0_7_io_o_1_co),
    .io_o_2_out(cb_0_7_io_o_2_out),
    .io_o_2_co(cb_0_7_io_o_2_co),
    .io_o_3_out(cb_0_7_io_o_3_out),
    .io_o_3_co(cb_0_7_io_o_3_co),
    .io_o_4_out(cb_0_7_io_o_4_out),
    .io_o_4_co(cb_0_7_io_o_4_co),
    .io_o_5_out(cb_0_7_io_o_5_out),
    .io_o_5_co(cb_0_7_io_o_5_co),
    .io_o_6_out(cb_0_7_io_o_6_out),
    .io_o_6_co(cb_0_7_io_o_6_co),
    .io_o_7_out(cb_0_7_io_o_7_out),
    .io_o_7_co(cb_0_7_io_o_7_co),
    .io_vi(cb_0_7_io_vi),
    .io_vci(cb_0_7_io_vci),
    .io_vco(cb_0_7_io_vco),
    .io_eo(cb_0_7_io_eo),
    .io_wo(cb_0_7_io_wo),
    .io_cs_i(cb_0_7_io_cs_i),
    .io_we_i(cb_0_7_io_we_i),
    .io_adr_i(cb_0_7_io_adr_i),
    .io_dat_i(cb_0_7_io_dat_i),
    .io_dat_o(cb_0_7_io_dat_o)
  );
  cic_block cb_0_8 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_0_8_wb_clk_i),
    .wb_rst_i(cb_0_8_wb_rst_i),
    .io_i_0_in1(cb_0_8_io_i_0_in1),
    .io_i_0_ci(cb_0_8_io_i_0_ci),
    .io_i_1_in1(cb_0_8_io_i_1_in1),
    .io_i_1_ci(cb_0_8_io_i_1_ci),
    .io_i_2_in1(cb_0_8_io_i_2_in1),
    .io_i_2_ci(cb_0_8_io_i_2_ci),
    .io_i_3_in1(cb_0_8_io_i_3_in1),
    .io_i_3_ci(cb_0_8_io_i_3_ci),
    .io_i_4_in1(cb_0_8_io_i_4_in1),
    .io_i_4_ci(cb_0_8_io_i_4_ci),
    .io_i_5_in1(cb_0_8_io_i_5_in1),
    .io_i_5_ci(cb_0_8_io_i_5_ci),
    .io_i_6_in1(cb_0_8_io_i_6_in1),
    .io_i_6_ci(cb_0_8_io_i_6_ci),
    .io_i_7_in1(cb_0_8_io_i_7_in1),
    .io_i_7_ci(cb_0_8_io_i_7_ci),
    .io_o_0_out(cb_0_8_io_o_0_out),
    .io_o_0_co(cb_0_8_io_o_0_co),
    .io_o_1_out(cb_0_8_io_o_1_out),
    .io_o_1_co(cb_0_8_io_o_1_co),
    .io_o_2_out(cb_0_8_io_o_2_out),
    .io_o_2_co(cb_0_8_io_o_2_co),
    .io_o_3_out(cb_0_8_io_o_3_out),
    .io_o_3_co(cb_0_8_io_o_3_co),
    .io_o_4_out(cb_0_8_io_o_4_out),
    .io_o_4_co(cb_0_8_io_o_4_co),
    .io_o_5_out(cb_0_8_io_o_5_out),
    .io_o_5_co(cb_0_8_io_o_5_co),
    .io_o_6_out(cb_0_8_io_o_6_out),
    .io_o_6_co(cb_0_8_io_o_6_co),
    .io_o_7_out(cb_0_8_io_o_7_out),
    .io_o_7_co(cb_0_8_io_o_7_co),
    .io_vi(cb_0_8_io_vi),
    .io_vci(cb_0_8_io_vci),
    .io_vco(cb_0_8_io_vco),
    .io_eo(cb_0_8_io_eo),
    .io_wo(cb_0_8_io_wo),
    .io_cs_i(cb_0_8_io_cs_i),
    .io_we_i(cb_0_8_io_we_i),
    .io_adr_i(cb_0_8_io_adr_i),
    .io_dat_i(cb_0_8_io_dat_i),
    .io_dat_o(cb_0_8_io_dat_o)
  );
  cic_block cb_0_9 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_0_9_wb_clk_i),
    .wb_rst_i(cb_0_9_wb_rst_i),
    .io_i_0_in1(cb_0_9_io_i_0_in1),
    .io_i_0_ci(cb_0_9_io_i_0_ci),
    .io_i_1_in1(cb_0_9_io_i_1_in1),
    .io_i_1_ci(cb_0_9_io_i_1_ci),
    .io_i_2_in1(cb_0_9_io_i_2_in1),
    .io_i_2_ci(cb_0_9_io_i_2_ci),
    .io_i_3_in1(cb_0_9_io_i_3_in1),
    .io_i_3_ci(cb_0_9_io_i_3_ci),
    .io_i_4_in1(cb_0_9_io_i_4_in1),
    .io_i_4_ci(cb_0_9_io_i_4_ci),
    .io_i_5_in1(cb_0_9_io_i_5_in1),
    .io_i_5_ci(cb_0_9_io_i_5_ci),
    .io_i_6_in1(cb_0_9_io_i_6_in1),
    .io_i_6_ci(cb_0_9_io_i_6_ci),
    .io_i_7_in1(cb_0_9_io_i_7_in1),
    .io_i_7_ci(cb_0_9_io_i_7_ci),
    .io_o_0_out(cb_0_9_io_o_0_out),
    .io_o_0_co(cb_0_9_io_o_0_co),
    .io_o_1_out(cb_0_9_io_o_1_out),
    .io_o_1_co(cb_0_9_io_o_1_co),
    .io_o_2_out(cb_0_9_io_o_2_out),
    .io_o_2_co(cb_0_9_io_o_2_co),
    .io_o_3_out(cb_0_9_io_o_3_out),
    .io_o_3_co(cb_0_9_io_o_3_co),
    .io_o_4_out(cb_0_9_io_o_4_out),
    .io_o_4_co(cb_0_9_io_o_4_co),
    .io_o_5_out(cb_0_9_io_o_5_out),
    .io_o_5_co(cb_0_9_io_o_5_co),
    .io_o_6_out(cb_0_9_io_o_6_out),
    .io_o_6_co(cb_0_9_io_o_6_co),
    .io_o_7_out(cb_0_9_io_o_7_out),
    .io_o_7_co(cb_0_9_io_o_7_co),
    .io_vi(cb_0_9_io_vi),
    .io_vci(cb_0_9_io_vci),
    .io_vco(cb_0_9_io_vco),
    .io_eo(cb_0_9_io_eo),
    .io_wo(cb_0_9_io_wo),
    .io_cs_i(cb_0_9_io_cs_i),
    .io_we_i(cb_0_9_io_we_i),
    .io_adr_i(cb_0_9_io_adr_i),
    .io_dat_i(cb_0_9_io_dat_i),
    .io_dat_o(cb_0_9_io_dat_o)
  );
  cic_block cb_0_10 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_0_10_wb_clk_i),
    .wb_rst_i(cb_0_10_wb_rst_i),
    .io_i_0_in1(cb_0_10_io_i_0_in1),
    .io_i_0_ci(cb_0_10_io_i_0_ci),
    .io_i_1_in1(cb_0_10_io_i_1_in1),
    .io_i_1_ci(cb_0_10_io_i_1_ci),
    .io_i_2_in1(cb_0_10_io_i_2_in1),
    .io_i_2_ci(cb_0_10_io_i_2_ci),
    .io_i_3_in1(cb_0_10_io_i_3_in1),
    .io_i_3_ci(cb_0_10_io_i_3_ci),
    .io_i_4_in1(cb_0_10_io_i_4_in1),
    .io_i_4_ci(cb_0_10_io_i_4_ci),
    .io_i_5_in1(cb_0_10_io_i_5_in1),
    .io_i_5_ci(cb_0_10_io_i_5_ci),
    .io_i_6_in1(cb_0_10_io_i_6_in1),
    .io_i_6_ci(cb_0_10_io_i_6_ci),
    .io_i_7_in1(cb_0_10_io_i_7_in1),
    .io_i_7_ci(cb_0_10_io_i_7_ci),
    .io_o_0_out(cb_0_10_io_o_0_out),
    .io_o_0_co(cb_0_10_io_o_0_co),
    .io_o_1_out(cb_0_10_io_o_1_out),
    .io_o_1_co(cb_0_10_io_o_1_co),
    .io_o_2_out(cb_0_10_io_o_2_out),
    .io_o_2_co(cb_0_10_io_o_2_co),
    .io_o_3_out(cb_0_10_io_o_3_out),
    .io_o_3_co(cb_0_10_io_o_3_co),
    .io_o_4_out(cb_0_10_io_o_4_out),
    .io_o_4_co(cb_0_10_io_o_4_co),
    .io_o_5_out(cb_0_10_io_o_5_out),
    .io_o_5_co(cb_0_10_io_o_5_co),
    .io_o_6_out(cb_0_10_io_o_6_out),
    .io_o_6_co(cb_0_10_io_o_6_co),
    .io_o_7_out(cb_0_10_io_o_7_out),
    .io_o_7_co(cb_0_10_io_o_7_co),
    .io_vi(cb_0_10_io_vi),
    .io_vci(cb_0_10_io_vci),
    .io_vco(cb_0_10_io_vco),
    .io_eo(cb_0_10_io_eo),
    .io_wo(cb_0_10_io_wo),
    .io_cs_i(cb_0_10_io_cs_i),
    .io_we_i(cb_0_10_io_we_i),
    .io_adr_i(cb_0_10_io_adr_i),
    .io_dat_i(cb_0_10_io_dat_i),
    .io_dat_o(cb_0_10_io_dat_o)
  );
  cic_con ccon_1 ( // @[UserProjectWrapper.scala 80:19]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(ccon_1_wb_clk_i),
    .wb_rst_i(ccon_1_wb_rst_i),
    .io_cs_i(ccon_1_io_cs_i),
    .io_ack_o(ccon_1_io_ack_o),
    .io_we_i(ccon_1_io_we_i),
    .io_adr_i(ccon_1_io_adr_i),
    .io_dat_i(ccon_1_io_dat_i),
    .io_dat_o(ccon_1_io_dat_o),
    .io_dsi_in(ccon_1_io_dsi_in),
    .io_dataLastBlock(ccon_1_io_dataLastBlock),
    .io_dsi_o(ccon_1_io_dsi_o),
    .io_b_cs_i_0(ccon_1_io_b_cs_i_0),
    .io_b_cs_i_1(ccon_1_io_b_cs_i_1),
    .io_b_cs_i_2(ccon_1_io_b_cs_i_2),
    .io_b_cs_i_3(ccon_1_io_b_cs_i_3),
    .io_b_cs_i_4(ccon_1_io_b_cs_i_4),
    .io_b_cs_i_5(ccon_1_io_b_cs_i_5),
    .io_b_cs_i_6(ccon_1_io_b_cs_i_6),
    .io_b_cs_i_7(ccon_1_io_b_cs_i_7),
    .io_b_cs_i_8(ccon_1_io_b_cs_i_8),
    .io_b_cs_i_9(ccon_1_io_b_cs_i_9),
    .io_b_cs_i_10(ccon_1_io_b_cs_i_10),
    .io_b_we_i(ccon_1_io_b_we_i),
    .io_b_adr_i(ccon_1_io_b_adr_i),
    .io_b_dat_i(ccon_1_io_b_dat_i),
    .io_b_dat_o_0(ccon_1_io_b_dat_o_0),
    .io_b_dat_o_1(ccon_1_io_b_dat_o_1),
    .io_b_dat_o_2(ccon_1_io_b_dat_o_2),
    .io_b_dat_o_3(ccon_1_io_b_dat_o_3),
    .io_b_dat_o_4(ccon_1_io_b_dat_o_4),
    .io_b_dat_o_5(ccon_1_io_b_dat_o_5),
    .io_b_dat_o_6(ccon_1_io_b_dat_o_6),
    .io_b_dat_o_7(ccon_1_io_b_dat_o_7),
    .io_b_dat_o_8(ccon_1_io_b_dat_o_8),
    .io_b_dat_o_9(ccon_1_io_b_dat_o_9),
    .io_b_dat_o_10(ccon_1_io_b_dat_o_10),
    .io_vout(ccon_1_io_vout),
    .io_irq(ccon_1_io_irq),
    .io_sync_out(ccon_1_io_sync_out)
  );
  cic_block cb_1_0 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_1_0_wb_clk_i),
    .wb_rst_i(cb_1_0_wb_rst_i),
    .io_i_0_in1(cb_1_0_io_i_0_in1),
    .io_i_0_ci(cb_1_0_io_i_0_ci),
    .io_i_1_in1(cb_1_0_io_i_1_in1),
    .io_i_1_ci(cb_1_0_io_i_1_ci),
    .io_i_2_in1(cb_1_0_io_i_2_in1),
    .io_i_2_ci(cb_1_0_io_i_2_ci),
    .io_i_3_in1(cb_1_0_io_i_3_in1),
    .io_i_3_ci(cb_1_0_io_i_3_ci),
    .io_i_4_in1(cb_1_0_io_i_4_in1),
    .io_i_4_ci(cb_1_0_io_i_4_ci),
    .io_i_5_in1(cb_1_0_io_i_5_in1),
    .io_i_5_ci(cb_1_0_io_i_5_ci),
    .io_i_6_in1(cb_1_0_io_i_6_in1),
    .io_i_6_ci(cb_1_0_io_i_6_ci),
    .io_i_7_in1(cb_1_0_io_i_7_in1),
    .io_i_7_ci(cb_1_0_io_i_7_ci),
    .io_o_0_out(cb_1_0_io_o_0_out),
    .io_o_0_co(cb_1_0_io_o_0_co),
    .io_o_1_out(cb_1_0_io_o_1_out),
    .io_o_1_co(cb_1_0_io_o_1_co),
    .io_o_2_out(cb_1_0_io_o_2_out),
    .io_o_2_co(cb_1_0_io_o_2_co),
    .io_o_3_out(cb_1_0_io_o_3_out),
    .io_o_3_co(cb_1_0_io_o_3_co),
    .io_o_4_out(cb_1_0_io_o_4_out),
    .io_o_4_co(cb_1_0_io_o_4_co),
    .io_o_5_out(cb_1_0_io_o_5_out),
    .io_o_5_co(cb_1_0_io_o_5_co),
    .io_o_6_out(cb_1_0_io_o_6_out),
    .io_o_6_co(cb_1_0_io_o_6_co),
    .io_o_7_out(cb_1_0_io_o_7_out),
    .io_o_7_co(cb_1_0_io_o_7_co),
    .io_vi(cb_1_0_io_vi),
    .io_vci(cb_1_0_io_vci),
    .io_vco(cb_1_0_io_vco),
    .io_eo(cb_1_0_io_eo),
    .io_wo(cb_1_0_io_wo),
    .io_cs_i(cb_1_0_io_cs_i),
    .io_we_i(cb_1_0_io_we_i),
    .io_adr_i(cb_1_0_io_adr_i),
    .io_dat_i(cb_1_0_io_dat_i),
    .io_dat_o(cb_1_0_io_dat_o)
  );
  cic_block cb_1_1 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_1_1_wb_clk_i),
    .wb_rst_i(cb_1_1_wb_rst_i),
    .io_i_0_in1(cb_1_1_io_i_0_in1),
    .io_i_0_ci(cb_1_1_io_i_0_ci),
    .io_i_1_in1(cb_1_1_io_i_1_in1),
    .io_i_1_ci(cb_1_1_io_i_1_ci),
    .io_i_2_in1(cb_1_1_io_i_2_in1),
    .io_i_2_ci(cb_1_1_io_i_2_ci),
    .io_i_3_in1(cb_1_1_io_i_3_in1),
    .io_i_3_ci(cb_1_1_io_i_3_ci),
    .io_i_4_in1(cb_1_1_io_i_4_in1),
    .io_i_4_ci(cb_1_1_io_i_4_ci),
    .io_i_5_in1(cb_1_1_io_i_5_in1),
    .io_i_5_ci(cb_1_1_io_i_5_ci),
    .io_i_6_in1(cb_1_1_io_i_6_in1),
    .io_i_6_ci(cb_1_1_io_i_6_ci),
    .io_i_7_in1(cb_1_1_io_i_7_in1),
    .io_i_7_ci(cb_1_1_io_i_7_ci),
    .io_o_0_out(cb_1_1_io_o_0_out),
    .io_o_0_co(cb_1_1_io_o_0_co),
    .io_o_1_out(cb_1_1_io_o_1_out),
    .io_o_1_co(cb_1_1_io_o_1_co),
    .io_o_2_out(cb_1_1_io_o_2_out),
    .io_o_2_co(cb_1_1_io_o_2_co),
    .io_o_3_out(cb_1_1_io_o_3_out),
    .io_o_3_co(cb_1_1_io_o_3_co),
    .io_o_4_out(cb_1_1_io_o_4_out),
    .io_o_4_co(cb_1_1_io_o_4_co),
    .io_o_5_out(cb_1_1_io_o_5_out),
    .io_o_5_co(cb_1_1_io_o_5_co),
    .io_o_6_out(cb_1_1_io_o_6_out),
    .io_o_6_co(cb_1_1_io_o_6_co),
    .io_o_7_out(cb_1_1_io_o_7_out),
    .io_o_7_co(cb_1_1_io_o_7_co),
    .io_vi(cb_1_1_io_vi),
    .io_vci(cb_1_1_io_vci),
    .io_vco(cb_1_1_io_vco),
    .io_eo(cb_1_1_io_eo),
    .io_wo(cb_1_1_io_wo),
    .io_cs_i(cb_1_1_io_cs_i),
    .io_we_i(cb_1_1_io_we_i),
    .io_adr_i(cb_1_1_io_adr_i),
    .io_dat_i(cb_1_1_io_dat_i),
    .io_dat_o(cb_1_1_io_dat_o)
  );
  cic_block cb_1_2 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_1_2_wb_clk_i),
    .wb_rst_i(cb_1_2_wb_rst_i),
    .io_i_0_in1(cb_1_2_io_i_0_in1),
    .io_i_0_ci(cb_1_2_io_i_0_ci),
    .io_i_1_in1(cb_1_2_io_i_1_in1),
    .io_i_1_ci(cb_1_2_io_i_1_ci),
    .io_i_2_in1(cb_1_2_io_i_2_in1),
    .io_i_2_ci(cb_1_2_io_i_2_ci),
    .io_i_3_in1(cb_1_2_io_i_3_in1),
    .io_i_3_ci(cb_1_2_io_i_3_ci),
    .io_i_4_in1(cb_1_2_io_i_4_in1),
    .io_i_4_ci(cb_1_2_io_i_4_ci),
    .io_i_5_in1(cb_1_2_io_i_5_in1),
    .io_i_5_ci(cb_1_2_io_i_5_ci),
    .io_i_6_in1(cb_1_2_io_i_6_in1),
    .io_i_6_ci(cb_1_2_io_i_6_ci),
    .io_i_7_in1(cb_1_2_io_i_7_in1),
    .io_i_7_ci(cb_1_2_io_i_7_ci),
    .io_o_0_out(cb_1_2_io_o_0_out),
    .io_o_0_co(cb_1_2_io_o_0_co),
    .io_o_1_out(cb_1_2_io_o_1_out),
    .io_o_1_co(cb_1_2_io_o_1_co),
    .io_o_2_out(cb_1_2_io_o_2_out),
    .io_o_2_co(cb_1_2_io_o_2_co),
    .io_o_3_out(cb_1_2_io_o_3_out),
    .io_o_3_co(cb_1_2_io_o_3_co),
    .io_o_4_out(cb_1_2_io_o_4_out),
    .io_o_4_co(cb_1_2_io_o_4_co),
    .io_o_5_out(cb_1_2_io_o_5_out),
    .io_o_5_co(cb_1_2_io_o_5_co),
    .io_o_6_out(cb_1_2_io_o_6_out),
    .io_o_6_co(cb_1_2_io_o_6_co),
    .io_o_7_out(cb_1_2_io_o_7_out),
    .io_o_7_co(cb_1_2_io_o_7_co),
    .io_vi(cb_1_2_io_vi),
    .io_vci(cb_1_2_io_vci),
    .io_vco(cb_1_2_io_vco),
    .io_eo(cb_1_2_io_eo),
    .io_wo(cb_1_2_io_wo),
    .io_cs_i(cb_1_2_io_cs_i),
    .io_we_i(cb_1_2_io_we_i),
    .io_adr_i(cb_1_2_io_adr_i),
    .io_dat_i(cb_1_2_io_dat_i),
    .io_dat_o(cb_1_2_io_dat_o)
  );
  cic_block cb_1_3 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_1_3_wb_clk_i),
    .wb_rst_i(cb_1_3_wb_rst_i),
    .io_i_0_in1(cb_1_3_io_i_0_in1),
    .io_i_0_ci(cb_1_3_io_i_0_ci),
    .io_i_1_in1(cb_1_3_io_i_1_in1),
    .io_i_1_ci(cb_1_3_io_i_1_ci),
    .io_i_2_in1(cb_1_3_io_i_2_in1),
    .io_i_2_ci(cb_1_3_io_i_2_ci),
    .io_i_3_in1(cb_1_3_io_i_3_in1),
    .io_i_3_ci(cb_1_3_io_i_3_ci),
    .io_i_4_in1(cb_1_3_io_i_4_in1),
    .io_i_4_ci(cb_1_3_io_i_4_ci),
    .io_i_5_in1(cb_1_3_io_i_5_in1),
    .io_i_5_ci(cb_1_3_io_i_5_ci),
    .io_i_6_in1(cb_1_3_io_i_6_in1),
    .io_i_6_ci(cb_1_3_io_i_6_ci),
    .io_i_7_in1(cb_1_3_io_i_7_in1),
    .io_i_7_ci(cb_1_3_io_i_7_ci),
    .io_o_0_out(cb_1_3_io_o_0_out),
    .io_o_0_co(cb_1_3_io_o_0_co),
    .io_o_1_out(cb_1_3_io_o_1_out),
    .io_o_1_co(cb_1_3_io_o_1_co),
    .io_o_2_out(cb_1_3_io_o_2_out),
    .io_o_2_co(cb_1_3_io_o_2_co),
    .io_o_3_out(cb_1_3_io_o_3_out),
    .io_o_3_co(cb_1_3_io_o_3_co),
    .io_o_4_out(cb_1_3_io_o_4_out),
    .io_o_4_co(cb_1_3_io_o_4_co),
    .io_o_5_out(cb_1_3_io_o_5_out),
    .io_o_5_co(cb_1_3_io_o_5_co),
    .io_o_6_out(cb_1_3_io_o_6_out),
    .io_o_6_co(cb_1_3_io_o_6_co),
    .io_o_7_out(cb_1_3_io_o_7_out),
    .io_o_7_co(cb_1_3_io_o_7_co),
    .io_vi(cb_1_3_io_vi),
    .io_vci(cb_1_3_io_vci),
    .io_vco(cb_1_3_io_vco),
    .io_eo(cb_1_3_io_eo),
    .io_wo(cb_1_3_io_wo),
    .io_cs_i(cb_1_3_io_cs_i),
    .io_we_i(cb_1_3_io_we_i),
    .io_adr_i(cb_1_3_io_adr_i),
    .io_dat_i(cb_1_3_io_dat_i),
    .io_dat_o(cb_1_3_io_dat_o)
  );
  cic_block cb_1_4 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_1_4_wb_clk_i),
    .wb_rst_i(cb_1_4_wb_rst_i),
    .io_i_0_in1(cb_1_4_io_i_0_in1),
    .io_i_0_ci(cb_1_4_io_i_0_ci),
    .io_i_1_in1(cb_1_4_io_i_1_in1),
    .io_i_1_ci(cb_1_4_io_i_1_ci),
    .io_i_2_in1(cb_1_4_io_i_2_in1),
    .io_i_2_ci(cb_1_4_io_i_2_ci),
    .io_i_3_in1(cb_1_4_io_i_3_in1),
    .io_i_3_ci(cb_1_4_io_i_3_ci),
    .io_i_4_in1(cb_1_4_io_i_4_in1),
    .io_i_4_ci(cb_1_4_io_i_4_ci),
    .io_i_5_in1(cb_1_4_io_i_5_in1),
    .io_i_5_ci(cb_1_4_io_i_5_ci),
    .io_i_6_in1(cb_1_4_io_i_6_in1),
    .io_i_6_ci(cb_1_4_io_i_6_ci),
    .io_i_7_in1(cb_1_4_io_i_7_in1),
    .io_i_7_ci(cb_1_4_io_i_7_ci),
    .io_o_0_out(cb_1_4_io_o_0_out),
    .io_o_0_co(cb_1_4_io_o_0_co),
    .io_o_1_out(cb_1_4_io_o_1_out),
    .io_o_1_co(cb_1_4_io_o_1_co),
    .io_o_2_out(cb_1_4_io_o_2_out),
    .io_o_2_co(cb_1_4_io_o_2_co),
    .io_o_3_out(cb_1_4_io_o_3_out),
    .io_o_3_co(cb_1_4_io_o_3_co),
    .io_o_4_out(cb_1_4_io_o_4_out),
    .io_o_4_co(cb_1_4_io_o_4_co),
    .io_o_5_out(cb_1_4_io_o_5_out),
    .io_o_5_co(cb_1_4_io_o_5_co),
    .io_o_6_out(cb_1_4_io_o_6_out),
    .io_o_6_co(cb_1_4_io_o_6_co),
    .io_o_7_out(cb_1_4_io_o_7_out),
    .io_o_7_co(cb_1_4_io_o_7_co),
    .io_vi(cb_1_4_io_vi),
    .io_vci(cb_1_4_io_vci),
    .io_vco(cb_1_4_io_vco),
    .io_eo(cb_1_4_io_eo),
    .io_wo(cb_1_4_io_wo),
    .io_cs_i(cb_1_4_io_cs_i),
    .io_we_i(cb_1_4_io_we_i),
    .io_adr_i(cb_1_4_io_adr_i),
    .io_dat_i(cb_1_4_io_dat_i),
    .io_dat_o(cb_1_4_io_dat_o)
  );
  cic_block cb_1_5 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_1_5_wb_clk_i),
    .wb_rst_i(cb_1_5_wb_rst_i),
    .io_i_0_in1(cb_1_5_io_i_0_in1),
    .io_i_0_ci(cb_1_5_io_i_0_ci),
    .io_i_1_in1(cb_1_5_io_i_1_in1),
    .io_i_1_ci(cb_1_5_io_i_1_ci),
    .io_i_2_in1(cb_1_5_io_i_2_in1),
    .io_i_2_ci(cb_1_5_io_i_2_ci),
    .io_i_3_in1(cb_1_5_io_i_3_in1),
    .io_i_3_ci(cb_1_5_io_i_3_ci),
    .io_i_4_in1(cb_1_5_io_i_4_in1),
    .io_i_4_ci(cb_1_5_io_i_4_ci),
    .io_i_5_in1(cb_1_5_io_i_5_in1),
    .io_i_5_ci(cb_1_5_io_i_5_ci),
    .io_i_6_in1(cb_1_5_io_i_6_in1),
    .io_i_6_ci(cb_1_5_io_i_6_ci),
    .io_i_7_in1(cb_1_5_io_i_7_in1),
    .io_i_7_ci(cb_1_5_io_i_7_ci),
    .io_o_0_out(cb_1_5_io_o_0_out),
    .io_o_0_co(cb_1_5_io_o_0_co),
    .io_o_1_out(cb_1_5_io_o_1_out),
    .io_o_1_co(cb_1_5_io_o_1_co),
    .io_o_2_out(cb_1_5_io_o_2_out),
    .io_o_2_co(cb_1_5_io_o_2_co),
    .io_o_3_out(cb_1_5_io_o_3_out),
    .io_o_3_co(cb_1_5_io_o_3_co),
    .io_o_4_out(cb_1_5_io_o_4_out),
    .io_o_4_co(cb_1_5_io_o_4_co),
    .io_o_5_out(cb_1_5_io_o_5_out),
    .io_o_5_co(cb_1_5_io_o_5_co),
    .io_o_6_out(cb_1_5_io_o_6_out),
    .io_o_6_co(cb_1_5_io_o_6_co),
    .io_o_7_out(cb_1_5_io_o_7_out),
    .io_o_7_co(cb_1_5_io_o_7_co),
    .io_vi(cb_1_5_io_vi),
    .io_vci(cb_1_5_io_vci),
    .io_vco(cb_1_5_io_vco),
    .io_eo(cb_1_5_io_eo),
    .io_wo(cb_1_5_io_wo),
    .io_cs_i(cb_1_5_io_cs_i),
    .io_we_i(cb_1_5_io_we_i),
    .io_adr_i(cb_1_5_io_adr_i),
    .io_dat_i(cb_1_5_io_dat_i),
    .io_dat_o(cb_1_5_io_dat_o)
  );
  cic_block cb_1_6 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_1_6_wb_clk_i),
    .wb_rst_i(cb_1_6_wb_rst_i),
    .io_i_0_in1(cb_1_6_io_i_0_in1),
    .io_i_0_ci(cb_1_6_io_i_0_ci),
    .io_i_1_in1(cb_1_6_io_i_1_in1),
    .io_i_1_ci(cb_1_6_io_i_1_ci),
    .io_i_2_in1(cb_1_6_io_i_2_in1),
    .io_i_2_ci(cb_1_6_io_i_2_ci),
    .io_i_3_in1(cb_1_6_io_i_3_in1),
    .io_i_3_ci(cb_1_6_io_i_3_ci),
    .io_i_4_in1(cb_1_6_io_i_4_in1),
    .io_i_4_ci(cb_1_6_io_i_4_ci),
    .io_i_5_in1(cb_1_6_io_i_5_in1),
    .io_i_5_ci(cb_1_6_io_i_5_ci),
    .io_i_6_in1(cb_1_6_io_i_6_in1),
    .io_i_6_ci(cb_1_6_io_i_6_ci),
    .io_i_7_in1(cb_1_6_io_i_7_in1),
    .io_i_7_ci(cb_1_6_io_i_7_ci),
    .io_o_0_out(cb_1_6_io_o_0_out),
    .io_o_0_co(cb_1_6_io_o_0_co),
    .io_o_1_out(cb_1_6_io_o_1_out),
    .io_o_1_co(cb_1_6_io_o_1_co),
    .io_o_2_out(cb_1_6_io_o_2_out),
    .io_o_2_co(cb_1_6_io_o_2_co),
    .io_o_3_out(cb_1_6_io_o_3_out),
    .io_o_3_co(cb_1_6_io_o_3_co),
    .io_o_4_out(cb_1_6_io_o_4_out),
    .io_o_4_co(cb_1_6_io_o_4_co),
    .io_o_5_out(cb_1_6_io_o_5_out),
    .io_o_5_co(cb_1_6_io_o_5_co),
    .io_o_6_out(cb_1_6_io_o_6_out),
    .io_o_6_co(cb_1_6_io_o_6_co),
    .io_o_7_out(cb_1_6_io_o_7_out),
    .io_o_7_co(cb_1_6_io_o_7_co),
    .io_vi(cb_1_6_io_vi),
    .io_vci(cb_1_6_io_vci),
    .io_vco(cb_1_6_io_vco),
    .io_eo(cb_1_6_io_eo),
    .io_wo(cb_1_6_io_wo),
    .io_cs_i(cb_1_6_io_cs_i),
    .io_we_i(cb_1_6_io_we_i),
    .io_adr_i(cb_1_6_io_adr_i),
    .io_dat_i(cb_1_6_io_dat_i),
    .io_dat_o(cb_1_6_io_dat_o)
  );
  cic_block cb_1_7 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_1_7_wb_clk_i),
    .wb_rst_i(cb_1_7_wb_rst_i),
    .io_i_0_in1(cb_1_7_io_i_0_in1),
    .io_i_0_ci(cb_1_7_io_i_0_ci),
    .io_i_1_in1(cb_1_7_io_i_1_in1),
    .io_i_1_ci(cb_1_7_io_i_1_ci),
    .io_i_2_in1(cb_1_7_io_i_2_in1),
    .io_i_2_ci(cb_1_7_io_i_2_ci),
    .io_i_3_in1(cb_1_7_io_i_3_in1),
    .io_i_3_ci(cb_1_7_io_i_3_ci),
    .io_i_4_in1(cb_1_7_io_i_4_in1),
    .io_i_4_ci(cb_1_7_io_i_4_ci),
    .io_i_5_in1(cb_1_7_io_i_5_in1),
    .io_i_5_ci(cb_1_7_io_i_5_ci),
    .io_i_6_in1(cb_1_7_io_i_6_in1),
    .io_i_6_ci(cb_1_7_io_i_6_ci),
    .io_i_7_in1(cb_1_7_io_i_7_in1),
    .io_i_7_ci(cb_1_7_io_i_7_ci),
    .io_o_0_out(cb_1_7_io_o_0_out),
    .io_o_0_co(cb_1_7_io_o_0_co),
    .io_o_1_out(cb_1_7_io_o_1_out),
    .io_o_1_co(cb_1_7_io_o_1_co),
    .io_o_2_out(cb_1_7_io_o_2_out),
    .io_o_2_co(cb_1_7_io_o_2_co),
    .io_o_3_out(cb_1_7_io_o_3_out),
    .io_o_3_co(cb_1_7_io_o_3_co),
    .io_o_4_out(cb_1_7_io_o_4_out),
    .io_o_4_co(cb_1_7_io_o_4_co),
    .io_o_5_out(cb_1_7_io_o_5_out),
    .io_o_5_co(cb_1_7_io_o_5_co),
    .io_o_6_out(cb_1_7_io_o_6_out),
    .io_o_6_co(cb_1_7_io_o_6_co),
    .io_o_7_out(cb_1_7_io_o_7_out),
    .io_o_7_co(cb_1_7_io_o_7_co),
    .io_vi(cb_1_7_io_vi),
    .io_vci(cb_1_7_io_vci),
    .io_vco(cb_1_7_io_vco),
    .io_eo(cb_1_7_io_eo),
    .io_wo(cb_1_7_io_wo),
    .io_cs_i(cb_1_7_io_cs_i),
    .io_we_i(cb_1_7_io_we_i),
    .io_adr_i(cb_1_7_io_adr_i),
    .io_dat_i(cb_1_7_io_dat_i),
    .io_dat_o(cb_1_7_io_dat_o)
  );
  cic_block cb_1_8 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_1_8_wb_clk_i),
    .wb_rst_i(cb_1_8_wb_rst_i),
    .io_i_0_in1(cb_1_8_io_i_0_in1),
    .io_i_0_ci(cb_1_8_io_i_0_ci),
    .io_i_1_in1(cb_1_8_io_i_1_in1),
    .io_i_1_ci(cb_1_8_io_i_1_ci),
    .io_i_2_in1(cb_1_8_io_i_2_in1),
    .io_i_2_ci(cb_1_8_io_i_2_ci),
    .io_i_3_in1(cb_1_8_io_i_3_in1),
    .io_i_3_ci(cb_1_8_io_i_3_ci),
    .io_i_4_in1(cb_1_8_io_i_4_in1),
    .io_i_4_ci(cb_1_8_io_i_4_ci),
    .io_i_5_in1(cb_1_8_io_i_5_in1),
    .io_i_5_ci(cb_1_8_io_i_5_ci),
    .io_i_6_in1(cb_1_8_io_i_6_in1),
    .io_i_6_ci(cb_1_8_io_i_6_ci),
    .io_i_7_in1(cb_1_8_io_i_7_in1),
    .io_i_7_ci(cb_1_8_io_i_7_ci),
    .io_o_0_out(cb_1_8_io_o_0_out),
    .io_o_0_co(cb_1_8_io_o_0_co),
    .io_o_1_out(cb_1_8_io_o_1_out),
    .io_o_1_co(cb_1_8_io_o_1_co),
    .io_o_2_out(cb_1_8_io_o_2_out),
    .io_o_2_co(cb_1_8_io_o_2_co),
    .io_o_3_out(cb_1_8_io_o_3_out),
    .io_o_3_co(cb_1_8_io_o_3_co),
    .io_o_4_out(cb_1_8_io_o_4_out),
    .io_o_4_co(cb_1_8_io_o_4_co),
    .io_o_5_out(cb_1_8_io_o_5_out),
    .io_o_5_co(cb_1_8_io_o_5_co),
    .io_o_6_out(cb_1_8_io_o_6_out),
    .io_o_6_co(cb_1_8_io_o_6_co),
    .io_o_7_out(cb_1_8_io_o_7_out),
    .io_o_7_co(cb_1_8_io_o_7_co),
    .io_vi(cb_1_8_io_vi),
    .io_vci(cb_1_8_io_vci),
    .io_vco(cb_1_8_io_vco),
    .io_eo(cb_1_8_io_eo),
    .io_wo(cb_1_8_io_wo),
    .io_cs_i(cb_1_8_io_cs_i),
    .io_we_i(cb_1_8_io_we_i),
    .io_adr_i(cb_1_8_io_adr_i),
    .io_dat_i(cb_1_8_io_dat_i),
    .io_dat_o(cb_1_8_io_dat_o)
  );
  cic_block cb_1_9 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_1_9_wb_clk_i),
    .wb_rst_i(cb_1_9_wb_rst_i),
    .io_i_0_in1(cb_1_9_io_i_0_in1),
    .io_i_0_ci(cb_1_9_io_i_0_ci),
    .io_i_1_in1(cb_1_9_io_i_1_in1),
    .io_i_1_ci(cb_1_9_io_i_1_ci),
    .io_i_2_in1(cb_1_9_io_i_2_in1),
    .io_i_2_ci(cb_1_9_io_i_2_ci),
    .io_i_3_in1(cb_1_9_io_i_3_in1),
    .io_i_3_ci(cb_1_9_io_i_3_ci),
    .io_i_4_in1(cb_1_9_io_i_4_in1),
    .io_i_4_ci(cb_1_9_io_i_4_ci),
    .io_i_5_in1(cb_1_9_io_i_5_in1),
    .io_i_5_ci(cb_1_9_io_i_5_ci),
    .io_i_6_in1(cb_1_9_io_i_6_in1),
    .io_i_6_ci(cb_1_9_io_i_6_ci),
    .io_i_7_in1(cb_1_9_io_i_7_in1),
    .io_i_7_ci(cb_1_9_io_i_7_ci),
    .io_o_0_out(cb_1_9_io_o_0_out),
    .io_o_0_co(cb_1_9_io_o_0_co),
    .io_o_1_out(cb_1_9_io_o_1_out),
    .io_o_1_co(cb_1_9_io_o_1_co),
    .io_o_2_out(cb_1_9_io_o_2_out),
    .io_o_2_co(cb_1_9_io_o_2_co),
    .io_o_3_out(cb_1_9_io_o_3_out),
    .io_o_3_co(cb_1_9_io_o_3_co),
    .io_o_4_out(cb_1_9_io_o_4_out),
    .io_o_4_co(cb_1_9_io_o_4_co),
    .io_o_5_out(cb_1_9_io_o_5_out),
    .io_o_5_co(cb_1_9_io_o_5_co),
    .io_o_6_out(cb_1_9_io_o_6_out),
    .io_o_6_co(cb_1_9_io_o_6_co),
    .io_o_7_out(cb_1_9_io_o_7_out),
    .io_o_7_co(cb_1_9_io_o_7_co),
    .io_vi(cb_1_9_io_vi),
    .io_vci(cb_1_9_io_vci),
    .io_vco(cb_1_9_io_vco),
    .io_eo(cb_1_9_io_eo),
    .io_wo(cb_1_9_io_wo),
    .io_cs_i(cb_1_9_io_cs_i),
    .io_we_i(cb_1_9_io_we_i),
    .io_adr_i(cb_1_9_io_adr_i),
    .io_dat_i(cb_1_9_io_dat_i),
    .io_dat_o(cb_1_9_io_dat_o)
  );
  cic_block cb_1_10 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_1_10_wb_clk_i),
    .wb_rst_i(cb_1_10_wb_rst_i),
    .io_i_0_in1(cb_1_10_io_i_0_in1),
    .io_i_0_ci(cb_1_10_io_i_0_ci),
    .io_i_1_in1(cb_1_10_io_i_1_in1),
    .io_i_1_ci(cb_1_10_io_i_1_ci),
    .io_i_2_in1(cb_1_10_io_i_2_in1),
    .io_i_2_ci(cb_1_10_io_i_2_ci),
    .io_i_3_in1(cb_1_10_io_i_3_in1),
    .io_i_3_ci(cb_1_10_io_i_3_ci),
    .io_i_4_in1(cb_1_10_io_i_4_in1),
    .io_i_4_ci(cb_1_10_io_i_4_ci),
    .io_i_5_in1(cb_1_10_io_i_5_in1),
    .io_i_5_ci(cb_1_10_io_i_5_ci),
    .io_i_6_in1(cb_1_10_io_i_6_in1),
    .io_i_6_ci(cb_1_10_io_i_6_ci),
    .io_i_7_in1(cb_1_10_io_i_7_in1),
    .io_i_7_ci(cb_1_10_io_i_7_ci),
    .io_o_0_out(cb_1_10_io_o_0_out),
    .io_o_0_co(cb_1_10_io_o_0_co),
    .io_o_1_out(cb_1_10_io_o_1_out),
    .io_o_1_co(cb_1_10_io_o_1_co),
    .io_o_2_out(cb_1_10_io_o_2_out),
    .io_o_2_co(cb_1_10_io_o_2_co),
    .io_o_3_out(cb_1_10_io_o_3_out),
    .io_o_3_co(cb_1_10_io_o_3_co),
    .io_o_4_out(cb_1_10_io_o_4_out),
    .io_o_4_co(cb_1_10_io_o_4_co),
    .io_o_5_out(cb_1_10_io_o_5_out),
    .io_o_5_co(cb_1_10_io_o_5_co),
    .io_o_6_out(cb_1_10_io_o_6_out),
    .io_o_6_co(cb_1_10_io_o_6_co),
    .io_o_7_out(cb_1_10_io_o_7_out),
    .io_o_7_co(cb_1_10_io_o_7_co),
    .io_vi(cb_1_10_io_vi),
    .io_vci(cb_1_10_io_vci),
    .io_vco(cb_1_10_io_vco),
    .io_eo(cb_1_10_io_eo),
    .io_wo(cb_1_10_io_wo),
    .io_cs_i(cb_1_10_io_cs_i),
    .io_we_i(cb_1_10_io_we_i),
    .io_adr_i(cb_1_10_io_adr_i),
    .io_dat_i(cb_1_10_io_dat_i),
    .io_dat_o(cb_1_10_io_dat_o)
  );
  cic_con ccon_2 ( // @[UserProjectWrapper.scala 80:19]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(ccon_2_wb_clk_i),
    .wb_rst_i(ccon_2_wb_rst_i),
    .io_cs_i(ccon_2_io_cs_i),
    .io_ack_o(ccon_2_io_ack_o),
    .io_we_i(ccon_2_io_we_i),
    .io_adr_i(ccon_2_io_adr_i),
    .io_dat_i(ccon_2_io_dat_i),
    .io_dat_o(ccon_2_io_dat_o),
    .io_dsi_in(ccon_2_io_dsi_in),
    .io_dataLastBlock(ccon_2_io_dataLastBlock),
    .io_dsi_o(ccon_2_io_dsi_o),
    .io_b_cs_i_0(ccon_2_io_b_cs_i_0),
    .io_b_cs_i_1(ccon_2_io_b_cs_i_1),
    .io_b_cs_i_2(ccon_2_io_b_cs_i_2),
    .io_b_cs_i_3(ccon_2_io_b_cs_i_3),
    .io_b_cs_i_4(ccon_2_io_b_cs_i_4),
    .io_b_cs_i_5(ccon_2_io_b_cs_i_5),
    .io_b_cs_i_6(ccon_2_io_b_cs_i_6),
    .io_b_cs_i_7(ccon_2_io_b_cs_i_7),
    .io_b_cs_i_8(ccon_2_io_b_cs_i_8),
    .io_b_cs_i_9(ccon_2_io_b_cs_i_9),
    .io_b_cs_i_10(ccon_2_io_b_cs_i_10),
    .io_b_we_i(ccon_2_io_b_we_i),
    .io_b_adr_i(ccon_2_io_b_adr_i),
    .io_b_dat_i(ccon_2_io_b_dat_i),
    .io_b_dat_o_0(ccon_2_io_b_dat_o_0),
    .io_b_dat_o_1(ccon_2_io_b_dat_o_1),
    .io_b_dat_o_2(ccon_2_io_b_dat_o_2),
    .io_b_dat_o_3(ccon_2_io_b_dat_o_3),
    .io_b_dat_o_4(ccon_2_io_b_dat_o_4),
    .io_b_dat_o_5(ccon_2_io_b_dat_o_5),
    .io_b_dat_o_6(ccon_2_io_b_dat_o_6),
    .io_b_dat_o_7(ccon_2_io_b_dat_o_7),
    .io_b_dat_o_8(ccon_2_io_b_dat_o_8),
    .io_b_dat_o_9(ccon_2_io_b_dat_o_9),
    .io_b_dat_o_10(ccon_2_io_b_dat_o_10),
    .io_vout(ccon_2_io_vout),
    .io_irq(ccon_2_io_irq),
    .io_sync_out(ccon_2_io_sync_out)
  );
  cic_block cb_2_0 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_2_0_wb_clk_i),
    .wb_rst_i(cb_2_0_wb_rst_i),
    .io_i_0_in1(cb_2_0_io_i_0_in1),
    .io_i_0_ci(cb_2_0_io_i_0_ci),
    .io_i_1_in1(cb_2_0_io_i_1_in1),
    .io_i_1_ci(cb_2_0_io_i_1_ci),
    .io_i_2_in1(cb_2_0_io_i_2_in1),
    .io_i_2_ci(cb_2_0_io_i_2_ci),
    .io_i_3_in1(cb_2_0_io_i_3_in1),
    .io_i_3_ci(cb_2_0_io_i_3_ci),
    .io_i_4_in1(cb_2_0_io_i_4_in1),
    .io_i_4_ci(cb_2_0_io_i_4_ci),
    .io_i_5_in1(cb_2_0_io_i_5_in1),
    .io_i_5_ci(cb_2_0_io_i_5_ci),
    .io_i_6_in1(cb_2_0_io_i_6_in1),
    .io_i_6_ci(cb_2_0_io_i_6_ci),
    .io_i_7_in1(cb_2_0_io_i_7_in1),
    .io_i_7_ci(cb_2_0_io_i_7_ci),
    .io_o_0_out(cb_2_0_io_o_0_out),
    .io_o_0_co(cb_2_0_io_o_0_co),
    .io_o_1_out(cb_2_0_io_o_1_out),
    .io_o_1_co(cb_2_0_io_o_1_co),
    .io_o_2_out(cb_2_0_io_o_2_out),
    .io_o_2_co(cb_2_0_io_o_2_co),
    .io_o_3_out(cb_2_0_io_o_3_out),
    .io_o_3_co(cb_2_0_io_o_3_co),
    .io_o_4_out(cb_2_0_io_o_4_out),
    .io_o_4_co(cb_2_0_io_o_4_co),
    .io_o_5_out(cb_2_0_io_o_5_out),
    .io_o_5_co(cb_2_0_io_o_5_co),
    .io_o_6_out(cb_2_0_io_o_6_out),
    .io_o_6_co(cb_2_0_io_o_6_co),
    .io_o_7_out(cb_2_0_io_o_7_out),
    .io_o_7_co(cb_2_0_io_o_7_co),
    .io_vi(cb_2_0_io_vi),
    .io_vci(cb_2_0_io_vci),
    .io_vco(cb_2_0_io_vco),
    .io_eo(cb_2_0_io_eo),
    .io_wo(cb_2_0_io_wo),
    .io_cs_i(cb_2_0_io_cs_i),
    .io_we_i(cb_2_0_io_we_i),
    .io_adr_i(cb_2_0_io_adr_i),
    .io_dat_i(cb_2_0_io_dat_i),
    .io_dat_o(cb_2_0_io_dat_o)
  );
  cic_block cb_2_1 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_2_1_wb_clk_i),
    .wb_rst_i(cb_2_1_wb_rst_i),
    .io_i_0_in1(cb_2_1_io_i_0_in1),
    .io_i_0_ci(cb_2_1_io_i_0_ci),
    .io_i_1_in1(cb_2_1_io_i_1_in1),
    .io_i_1_ci(cb_2_1_io_i_1_ci),
    .io_i_2_in1(cb_2_1_io_i_2_in1),
    .io_i_2_ci(cb_2_1_io_i_2_ci),
    .io_i_3_in1(cb_2_1_io_i_3_in1),
    .io_i_3_ci(cb_2_1_io_i_3_ci),
    .io_i_4_in1(cb_2_1_io_i_4_in1),
    .io_i_4_ci(cb_2_1_io_i_4_ci),
    .io_i_5_in1(cb_2_1_io_i_5_in1),
    .io_i_5_ci(cb_2_1_io_i_5_ci),
    .io_i_6_in1(cb_2_1_io_i_6_in1),
    .io_i_6_ci(cb_2_1_io_i_6_ci),
    .io_i_7_in1(cb_2_1_io_i_7_in1),
    .io_i_7_ci(cb_2_1_io_i_7_ci),
    .io_o_0_out(cb_2_1_io_o_0_out),
    .io_o_0_co(cb_2_1_io_o_0_co),
    .io_o_1_out(cb_2_1_io_o_1_out),
    .io_o_1_co(cb_2_1_io_o_1_co),
    .io_o_2_out(cb_2_1_io_o_2_out),
    .io_o_2_co(cb_2_1_io_o_2_co),
    .io_o_3_out(cb_2_1_io_o_3_out),
    .io_o_3_co(cb_2_1_io_o_3_co),
    .io_o_4_out(cb_2_1_io_o_4_out),
    .io_o_4_co(cb_2_1_io_o_4_co),
    .io_o_5_out(cb_2_1_io_o_5_out),
    .io_o_5_co(cb_2_1_io_o_5_co),
    .io_o_6_out(cb_2_1_io_o_6_out),
    .io_o_6_co(cb_2_1_io_o_6_co),
    .io_o_7_out(cb_2_1_io_o_7_out),
    .io_o_7_co(cb_2_1_io_o_7_co),
    .io_vi(cb_2_1_io_vi),
    .io_vci(cb_2_1_io_vci),
    .io_vco(cb_2_1_io_vco),
    .io_eo(cb_2_1_io_eo),
    .io_wo(cb_2_1_io_wo),
    .io_cs_i(cb_2_1_io_cs_i),
    .io_we_i(cb_2_1_io_we_i),
    .io_adr_i(cb_2_1_io_adr_i),
    .io_dat_i(cb_2_1_io_dat_i),
    .io_dat_o(cb_2_1_io_dat_o)
  );
  cic_block cb_2_2 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_2_2_wb_clk_i),
    .wb_rst_i(cb_2_2_wb_rst_i),
    .io_i_0_in1(cb_2_2_io_i_0_in1),
    .io_i_0_ci(cb_2_2_io_i_0_ci),
    .io_i_1_in1(cb_2_2_io_i_1_in1),
    .io_i_1_ci(cb_2_2_io_i_1_ci),
    .io_i_2_in1(cb_2_2_io_i_2_in1),
    .io_i_2_ci(cb_2_2_io_i_2_ci),
    .io_i_3_in1(cb_2_2_io_i_3_in1),
    .io_i_3_ci(cb_2_2_io_i_3_ci),
    .io_i_4_in1(cb_2_2_io_i_4_in1),
    .io_i_4_ci(cb_2_2_io_i_4_ci),
    .io_i_5_in1(cb_2_2_io_i_5_in1),
    .io_i_5_ci(cb_2_2_io_i_5_ci),
    .io_i_6_in1(cb_2_2_io_i_6_in1),
    .io_i_6_ci(cb_2_2_io_i_6_ci),
    .io_i_7_in1(cb_2_2_io_i_7_in1),
    .io_i_7_ci(cb_2_2_io_i_7_ci),
    .io_o_0_out(cb_2_2_io_o_0_out),
    .io_o_0_co(cb_2_2_io_o_0_co),
    .io_o_1_out(cb_2_2_io_o_1_out),
    .io_o_1_co(cb_2_2_io_o_1_co),
    .io_o_2_out(cb_2_2_io_o_2_out),
    .io_o_2_co(cb_2_2_io_o_2_co),
    .io_o_3_out(cb_2_2_io_o_3_out),
    .io_o_3_co(cb_2_2_io_o_3_co),
    .io_o_4_out(cb_2_2_io_o_4_out),
    .io_o_4_co(cb_2_2_io_o_4_co),
    .io_o_5_out(cb_2_2_io_o_5_out),
    .io_o_5_co(cb_2_2_io_o_5_co),
    .io_o_6_out(cb_2_2_io_o_6_out),
    .io_o_6_co(cb_2_2_io_o_6_co),
    .io_o_7_out(cb_2_2_io_o_7_out),
    .io_o_7_co(cb_2_2_io_o_7_co),
    .io_vi(cb_2_2_io_vi),
    .io_vci(cb_2_2_io_vci),
    .io_vco(cb_2_2_io_vco),
    .io_eo(cb_2_2_io_eo),
    .io_wo(cb_2_2_io_wo),
    .io_cs_i(cb_2_2_io_cs_i),
    .io_we_i(cb_2_2_io_we_i),
    .io_adr_i(cb_2_2_io_adr_i),
    .io_dat_i(cb_2_2_io_dat_i),
    .io_dat_o(cb_2_2_io_dat_o)
  );
  cic_block cb_2_3 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_2_3_wb_clk_i),
    .wb_rst_i(cb_2_3_wb_rst_i),
    .io_i_0_in1(cb_2_3_io_i_0_in1),
    .io_i_0_ci(cb_2_3_io_i_0_ci),
    .io_i_1_in1(cb_2_3_io_i_1_in1),
    .io_i_1_ci(cb_2_3_io_i_1_ci),
    .io_i_2_in1(cb_2_3_io_i_2_in1),
    .io_i_2_ci(cb_2_3_io_i_2_ci),
    .io_i_3_in1(cb_2_3_io_i_3_in1),
    .io_i_3_ci(cb_2_3_io_i_3_ci),
    .io_i_4_in1(cb_2_3_io_i_4_in1),
    .io_i_4_ci(cb_2_3_io_i_4_ci),
    .io_i_5_in1(cb_2_3_io_i_5_in1),
    .io_i_5_ci(cb_2_3_io_i_5_ci),
    .io_i_6_in1(cb_2_3_io_i_6_in1),
    .io_i_6_ci(cb_2_3_io_i_6_ci),
    .io_i_7_in1(cb_2_3_io_i_7_in1),
    .io_i_7_ci(cb_2_3_io_i_7_ci),
    .io_o_0_out(cb_2_3_io_o_0_out),
    .io_o_0_co(cb_2_3_io_o_0_co),
    .io_o_1_out(cb_2_3_io_o_1_out),
    .io_o_1_co(cb_2_3_io_o_1_co),
    .io_o_2_out(cb_2_3_io_o_2_out),
    .io_o_2_co(cb_2_3_io_o_2_co),
    .io_o_3_out(cb_2_3_io_o_3_out),
    .io_o_3_co(cb_2_3_io_o_3_co),
    .io_o_4_out(cb_2_3_io_o_4_out),
    .io_o_4_co(cb_2_3_io_o_4_co),
    .io_o_5_out(cb_2_3_io_o_5_out),
    .io_o_5_co(cb_2_3_io_o_5_co),
    .io_o_6_out(cb_2_3_io_o_6_out),
    .io_o_6_co(cb_2_3_io_o_6_co),
    .io_o_7_out(cb_2_3_io_o_7_out),
    .io_o_7_co(cb_2_3_io_o_7_co),
    .io_vi(cb_2_3_io_vi),
    .io_vci(cb_2_3_io_vci),
    .io_vco(cb_2_3_io_vco),
    .io_eo(cb_2_3_io_eo),
    .io_wo(cb_2_3_io_wo),
    .io_cs_i(cb_2_3_io_cs_i),
    .io_we_i(cb_2_3_io_we_i),
    .io_adr_i(cb_2_3_io_adr_i),
    .io_dat_i(cb_2_3_io_dat_i),
    .io_dat_o(cb_2_3_io_dat_o)
  );
  cic_block cb_2_4 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_2_4_wb_clk_i),
    .wb_rst_i(cb_2_4_wb_rst_i),
    .io_i_0_in1(cb_2_4_io_i_0_in1),
    .io_i_0_ci(cb_2_4_io_i_0_ci),
    .io_i_1_in1(cb_2_4_io_i_1_in1),
    .io_i_1_ci(cb_2_4_io_i_1_ci),
    .io_i_2_in1(cb_2_4_io_i_2_in1),
    .io_i_2_ci(cb_2_4_io_i_2_ci),
    .io_i_3_in1(cb_2_4_io_i_3_in1),
    .io_i_3_ci(cb_2_4_io_i_3_ci),
    .io_i_4_in1(cb_2_4_io_i_4_in1),
    .io_i_4_ci(cb_2_4_io_i_4_ci),
    .io_i_5_in1(cb_2_4_io_i_5_in1),
    .io_i_5_ci(cb_2_4_io_i_5_ci),
    .io_i_6_in1(cb_2_4_io_i_6_in1),
    .io_i_6_ci(cb_2_4_io_i_6_ci),
    .io_i_7_in1(cb_2_4_io_i_7_in1),
    .io_i_7_ci(cb_2_4_io_i_7_ci),
    .io_o_0_out(cb_2_4_io_o_0_out),
    .io_o_0_co(cb_2_4_io_o_0_co),
    .io_o_1_out(cb_2_4_io_o_1_out),
    .io_o_1_co(cb_2_4_io_o_1_co),
    .io_o_2_out(cb_2_4_io_o_2_out),
    .io_o_2_co(cb_2_4_io_o_2_co),
    .io_o_3_out(cb_2_4_io_o_3_out),
    .io_o_3_co(cb_2_4_io_o_3_co),
    .io_o_4_out(cb_2_4_io_o_4_out),
    .io_o_4_co(cb_2_4_io_o_4_co),
    .io_o_5_out(cb_2_4_io_o_5_out),
    .io_o_5_co(cb_2_4_io_o_5_co),
    .io_o_6_out(cb_2_4_io_o_6_out),
    .io_o_6_co(cb_2_4_io_o_6_co),
    .io_o_7_out(cb_2_4_io_o_7_out),
    .io_o_7_co(cb_2_4_io_o_7_co),
    .io_vi(cb_2_4_io_vi),
    .io_vci(cb_2_4_io_vci),
    .io_vco(cb_2_4_io_vco),
    .io_eo(cb_2_4_io_eo),
    .io_wo(cb_2_4_io_wo),
    .io_cs_i(cb_2_4_io_cs_i),
    .io_we_i(cb_2_4_io_we_i),
    .io_adr_i(cb_2_4_io_adr_i),
    .io_dat_i(cb_2_4_io_dat_i),
    .io_dat_o(cb_2_4_io_dat_o)
  );
  cic_block cb_2_5 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_2_5_wb_clk_i),
    .wb_rst_i(cb_2_5_wb_rst_i),
    .io_i_0_in1(cb_2_5_io_i_0_in1),
    .io_i_0_ci(cb_2_5_io_i_0_ci),
    .io_i_1_in1(cb_2_5_io_i_1_in1),
    .io_i_1_ci(cb_2_5_io_i_1_ci),
    .io_i_2_in1(cb_2_5_io_i_2_in1),
    .io_i_2_ci(cb_2_5_io_i_2_ci),
    .io_i_3_in1(cb_2_5_io_i_3_in1),
    .io_i_3_ci(cb_2_5_io_i_3_ci),
    .io_i_4_in1(cb_2_5_io_i_4_in1),
    .io_i_4_ci(cb_2_5_io_i_4_ci),
    .io_i_5_in1(cb_2_5_io_i_5_in1),
    .io_i_5_ci(cb_2_5_io_i_5_ci),
    .io_i_6_in1(cb_2_5_io_i_6_in1),
    .io_i_6_ci(cb_2_5_io_i_6_ci),
    .io_i_7_in1(cb_2_5_io_i_7_in1),
    .io_i_7_ci(cb_2_5_io_i_7_ci),
    .io_o_0_out(cb_2_5_io_o_0_out),
    .io_o_0_co(cb_2_5_io_o_0_co),
    .io_o_1_out(cb_2_5_io_o_1_out),
    .io_o_1_co(cb_2_5_io_o_1_co),
    .io_o_2_out(cb_2_5_io_o_2_out),
    .io_o_2_co(cb_2_5_io_o_2_co),
    .io_o_3_out(cb_2_5_io_o_3_out),
    .io_o_3_co(cb_2_5_io_o_3_co),
    .io_o_4_out(cb_2_5_io_o_4_out),
    .io_o_4_co(cb_2_5_io_o_4_co),
    .io_o_5_out(cb_2_5_io_o_5_out),
    .io_o_5_co(cb_2_5_io_o_5_co),
    .io_o_6_out(cb_2_5_io_o_6_out),
    .io_o_6_co(cb_2_5_io_o_6_co),
    .io_o_7_out(cb_2_5_io_o_7_out),
    .io_o_7_co(cb_2_5_io_o_7_co),
    .io_vi(cb_2_5_io_vi),
    .io_vci(cb_2_5_io_vci),
    .io_vco(cb_2_5_io_vco),
    .io_eo(cb_2_5_io_eo),
    .io_wo(cb_2_5_io_wo),
    .io_cs_i(cb_2_5_io_cs_i),
    .io_we_i(cb_2_5_io_we_i),
    .io_adr_i(cb_2_5_io_adr_i),
    .io_dat_i(cb_2_5_io_dat_i),
    .io_dat_o(cb_2_5_io_dat_o)
  );
  cic_block cb_2_6 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_2_6_wb_clk_i),
    .wb_rst_i(cb_2_6_wb_rst_i),
    .io_i_0_in1(cb_2_6_io_i_0_in1),
    .io_i_0_ci(cb_2_6_io_i_0_ci),
    .io_i_1_in1(cb_2_6_io_i_1_in1),
    .io_i_1_ci(cb_2_6_io_i_1_ci),
    .io_i_2_in1(cb_2_6_io_i_2_in1),
    .io_i_2_ci(cb_2_6_io_i_2_ci),
    .io_i_3_in1(cb_2_6_io_i_3_in1),
    .io_i_3_ci(cb_2_6_io_i_3_ci),
    .io_i_4_in1(cb_2_6_io_i_4_in1),
    .io_i_4_ci(cb_2_6_io_i_4_ci),
    .io_i_5_in1(cb_2_6_io_i_5_in1),
    .io_i_5_ci(cb_2_6_io_i_5_ci),
    .io_i_6_in1(cb_2_6_io_i_6_in1),
    .io_i_6_ci(cb_2_6_io_i_6_ci),
    .io_i_7_in1(cb_2_6_io_i_7_in1),
    .io_i_7_ci(cb_2_6_io_i_7_ci),
    .io_o_0_out(cb_2_6_io_o_0_out),
    .io_o_0_co(cb_2_6_io_o_0_co),
    .io_o_1_out(cb_2_6_io_o_1_out),
    .io_o_1_co(cb_2_6_io_o_1_co),
    .io_o_2_out(cb_2_6_io_o_2_out),
    .io_o_2_co(cb_2_6_io_o_2_co),
    .io_o_3_out(cb_2_6_io_o_3_out),
    .io_o_3_co(cb_2_6_io_o_3_co),
    .io_o_4_out(cb_2_6_io_o_4_out),
    .io_o_4_co(cb_2_6_io_o_4_co),
    .io_o_5_out(cb_2_6_io_o_5_out),
    .io_o_5_co(cb_2_6_io_o_5_co),
    .io_o_6_out(cb_2_6_io_o_6_out),
    .io_o_6_co(cb_2_6_io_o_6_co),
    .io_o_7_out(cb_2_6_io_o_7_out),
    .io_o_7_co(cb_2_6_io_o_7_co),
    .io_vi(cb_2_6_io_vi),
    .io_vci(cb_2_6_io_vci),
    .io_vco(cb_2_6_io_vco),
    .io_eo(cb_2_6_io_eo),
    .io_wo(cb_2_6_io_wo),
    .io_cs_i(cb_2_6_io_cs_i),
    .io_we_i(cb_2_6_io_we_i),
    .io_adr_i(cb_2_6_io_adr_i),
    .io_dat_i(cb_2_6_io_dat_i),
    .io_dat_o(cb_2_6_io_dat_o)
  );
  cic_block cb_2_7 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_2_7_wb_clk_i),
    .wb_rst_i(cb_2_7_wb_rst_i),
    .io_i_0_in1(cb_2_7_io_i_0_in1),
    .io_i_0_ci(cb_2_7_io_i_0_ci),
    .io_i_1_in1(cb_2_7_io_i_1_in1),
    .io_i_1_ci(cb_2_7_io_i_1_ci),
    .io_i_2_in1(cb_2_7_io_i_2_in1),
    .io_i_2_ci(cb_2_7_io_i_2_ci),
    .io_i_3_in1(cb_2_7_io_i_3_in1),
    .io_i_3_ci(cb_2_7_io_i_3_ci),
    .io_i_4_in1(cb_2_7_io_i_4_in1),
    .io_i_4_ci(cb_2_7_io_i_4_ci),
    .io_i_5_in1(cb_2_7_io_i_5_in1),
    .io_i_5_ci(cb_2_7_io_i_5_ci),
    .io_i_6_in1(cb_2_7_io_i_6_in1),
    .io_i_6_ci(cb_2_7_io_i_6_ci),
    .io_i_7_in1(cb_2_7_io_i_7_in1),
    .io_i_7_ci(cb_2_7_io_i_7_ci),
    .io_o_0_out(cb_2_7_io_o_0_out),
    .io_o_0_co(cb_2_7_io_o_0_co),
    .io_o_1_out(cb_2_7_io_o_1_out),
    .io_o_1_co(cb_2_7_io_o_1_co),
    .io_o_2_out(cb_2_7_io_o_2_out),
    .io_o_2_co(cb_2_7_io_o_2_co),
    .io_o_3_out(cb_2_7_io_o_3_out),
    .io_o_3_co(cb_2_7_io_o_3_co),
    .io_o_4_out(cb_2_7_io_o_4_out),
    .io_o_4_co(cb_2_7_io_o_4_co),
    .io_o_5_out(cb_2_7_io_o_5_out),
    .io_o_5_co(cb_2_7_io_o_5_co),
    .io_o_6_out(cb_2_7_io_o_6_out),
    .io_o_6_co(cb_2_7_io_o_6_co),
    .io_o_7_out(cb_2_7_io_o_7_out),
    .io_o_7_co(cb_2_7_io_o_7_co),
    .io_vi(cb_2_7_io_vi),
    .io_vci(cb_2_7_io_vci),
    .io_vco(cb_2_7_io_vco),
    .io_eo(cb_2_7_io_eo),
    .io_wo(cb_2_7_io_wo),
    .io_cs_i(cb_2_7_io_cs_i),
    .io_we_i(cb_2_7_io_we_i),
    .io_adr_i(cb_2_7_io_adr_i),
    .io_dat_i(cb_2_7_io_dat_i),
    .io_dat_o(cb_2_7_io_dat_o)
  );
  cic_block cb_2_8 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_2_8_wb_clk_i),
    .wb_rst_i(cb_2_8_wb_rst_i),
    .io_i_0_in1(cb_2_8_io_i_0_in1),
    .io_i_0_ci(cb_2_8_io_i_0_ci),
    .io_i_1_in1(cb_2_8_io_i_1_in1),
    .io_i_1_ci(cb_2_8_io_i_1_ci),
    .io_i_2_in1(cb_2_8_io_i_2_in1),
    .io_i_2_ci(cb_2_8_io_i_2_ci),
    .io_i_3_in1(cb_2_8_io_i_3_in1),
    .io_i_3_ci(cb_2_8_io_i_3_ci),
    .io_i_4_in1(cb_2_8_io_i_4_in1),
    .io_i_4_ci(cb_2_8_io_i_4_ci),
    .io_i_5_in1(cb_2_8_io_i_5_in1),
    .io_i_5_ci(cb_2_8_io_i_5_ci),
    .io_i_6_in1(cb_2_8_io_i_6_in1),
    .io_i_6_ci(cb_2_8_io_i_6_ci),
    .io_i_7_in1(cb_2_8_io_i_7_in1),
    .io_i_7_ci(cb_2_8_io_i_7_ci),
    .io_o_0_out(cb_2_8_io_o_0_out),
    .io_o_0_co(cb_2_8_io_o_0_co),
    .io_o_1_out(cb_2_8_io_o_1_out),
    .io_o_1_co(cb_2_8_io_o_1_co),
    .io_o_2_out(cb_2_8_io_o_2_out),
    .io_o_2_co(cb_2_8_io_o_2_co),
    .io_o_3_out(cb_2_8_io_o_3_out),
    .io_o_3_co(cb_2_8_io_o_3_co),
    .io_o_4_out(cb_2_8_io_o_4_out),
    .io_o_4_co(cb_2_8_io_o_4_co),
    .io_o_5_out(cb_2_8_io_o_5_out),
    .io_o_5_co(cb_2_8_io_o_5_co),
    .io_o_6_out(cb_2_8_io_o_6_out),
    .io_o_6_co(cb_2_8_io_o_6_co),
    .io_o_7_out(cb_2_8_io_o_7_out),
    .io_o_7_co(cb_2_8_io_o_7_co),
    .io_vi(cb_2_8_io_vi),
    .io_vci(cb_2_8_io_vci),
    .io_vco(cb_2_8_io_vco),
    .io_eo(cb_2_8_io_eo),
    .io_wo(cb_2_8_io_wo),
    .io_cs_i(cb_2_8_io_cs_i),
    .io_we_i(cb_2_8_io_we_i),
    .io_adr_i(cb_2_8_io_adr_i),
    .io_dat_i(cb_2_8_io_dat_i),
    .io_dat_o(cb_2_8_io_dat_o)
  );
  cic_block cb_2_9 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_2_9_wb_clk_i),
    .wb_rst_i(cb_2_9_wb_rst_i),
    .io_i_0_in1(cb_2_9_io_i_0_in1),
    .io_i_0_ci(cb_2_9_io_i_0_ci),
    .io_i_1_in1(cb_2_9_io_i_1_in1),
    .io_i_1_ci(cb_2_9_io_i_1_ci),
    .io_i_2_in1(cb_2_9_io_i_2_in1),
    .io_i_2_ci(cb_2_9_io_i_2_ci),
    .io_i_3_in1(cb_2_9_io_i_3_in1),
    .io_i_3_ci(cb_2_9_io_i_3_ci),
    .io_i_4_in1(cb_2_9_io_i_4_in1),
    .io_i_4_ci(cb_2_9_io_i_4_ci),
    .io_i_5_in1(cb_2_9_io_i_5_in1),
    .io_i_5_ci(cb_2_9_io_i_5_ci),
    .io_i_6_in1(cb_2_9_io_i_6_in1),
    .io_i_6_ci(cb_2_9_io_i_6_ci),
    .io_i_7_in1(cb_2_9_io_i_7_in1),
    .io_i_7_ci(cb_2_9_io_i_7_ci),
    .io_o_0_out(cb_2_9_io_o_0_out),
    .io_o_0_co(cb_2_9_io_o_0_co),
    .io_o_1_out(cb_2_9_io_o_1_out),
    .io_o_1_co(cb_2_9_io_o_1_co),
    .io_o_2_out(cb_2_9_io_o_2_out),
    .io_o_2_co(cb_2_9_io_o_2_co),
    .io_o_3_out(cb_2_9_io_o_3_out),
    .io_o_3_co(cb_2_9_io_o_3_co),
    .io_o_4_out(cb_2_9_io_o_4_out),
    .io_o_4_co(cb_2_9_io_o_4_co),
    .io_o_5_out(cb_2_9_io_o_5_out),
    .io_o_5_co(cb_2_9_io_o_5_co),
    .io_o_6_out(cb_2_9_io_o_6_out),
    .io_o_6_co(cb_2_9_io_o_6_co),
    .io_o_7_out(cb_2_9_io_o_7_out),
    .io_o_7_co(cb_2_9_io_o_7_co),
    .io_vi(cb_2_9_io_vi),
    .io_vci(cb_2_9_io_vci),
    .io_vco(cb_2_9_io_vco),
    .io_eo(cb_2_9_io_eo),
    .io_wo(cb_2_9_io_wo),
    .io_cs_i(cb_2_9_io_cs_i),
    .io_we_i(cb_2_9_io_we_i),
    .io_adr_i(cb_2_9_io_adr_i),
    .io_dat_i(cb_2_9_io_dat_i),
    .io_dat_o(cb_2_9_io_dat_o)
  );
  cic_block cb_2_10 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_2_10_wb_clk_i),
    .wb_rst_i(cb_2_10_wb_rst_i),
    .io_i_0_in1(cb_2_10_io_i_0_in1),
    .io_i_0_ci(cb_2_10_io_i_0_ci),
    .io_i_1_in1(cb_2_10_io_i_1_in1),
    .io_i_1_ci(cb_2_10_io_i_1_ci),
    .io_i_2_in1(cb_2_10_io_i_2_in1),
    .io_i_2_ci(cb_2_10_io_i_2_ci),
    .io_i_3_in1(cb_2_10_io_i_3_in1),
    .io_i_3_ci(cb_2_10_io_i_3_ci),
    .io_i_4_in1(cb_2_10_io_i_4_in1),
    .io_i_4_ci(cb_2_10_io_i_4_ci),
    .io_i_5_in1(cb_2_10_io_i_5_in1),
    .io_i_5_ci(cb_2_10_io_i_5_ci),
    .io_i_6_in1(cb_2_10_io_i_6_in1),
    .io_i_6_ci(cb_2_10_io_i_6_ci),
    .io_i_7_in1(cb_2_10_io_i_7_in1),
    .io_i_7_ci(cb_2_10_io_i_7_ci),
    .io_o_0_out(cb_2_10_io_o_0_out),
    .io_o_0_co(cb_2_10_io_o_0_co),
    .io_o_1_out(cb_2_10_io_o_1_out),
    .io_o_1_co(cb_2_10_io_o_1_co),
    .io_o_2_out(cb_2_10_io_o_2_out),
    .io_o_2_co(cb_2_10_io_o_2_co),
    .io_o_3_out(cb_2_10_io_o_3_out),
    .io_o_3_co(cb_2_10_io_o_3_co),
    .io_o_4_out(cb_2_10_io_o_4_out),
    .io_o_4_co(cb_2_10_io_o_4_co),
    .io_o_5_out(cb_2_10_io_o_5_out),
    .io_o_5_co(cb_2_10_io_o_5_co),
    .io_o_6_out(cb_2_10_io_o_6_out),
    .io_o_6_co(cb_2_10_io_o_6_co),
    .io_o_7_out(cb_2_10_io_o_7_out),
    .io_o_7_co(cb_2_10_io_o_7_co),
    .io_vi(cb_2_10_io_vi),
    .io_vci(cb_2_10_io_vci),
    .io_vco(cb_2_10_io_vco),
    .io_eo(cb_2_10_io_eo),
    .io_wo(cb_2_10_io_wo),
    .io_cs_i(cb_2_10_io_cs_i),
    .io_we_i(cb_2_10_io_we_i),
    .io_adr_i(cb_2_10_io_adr_i),
    .io_dat_i(cb_2_10_io_dat_i),
    .io_dat_o(cb_2_10_io_dat_o)
  );
  cic_con ccon_3 ( // @[UserProjectWrapper.scala 80:19]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(ccon_3_wb_clk_i),
    .wb_rst_i(ccon_3_wb_rst_i),
    .io_cs_i(ccon_3_io_cs_i),
    .io_ack_o(ccon_3_io_ack_o),
    .io_we_i(ccon_3_io_we_i),
    .io_adr_i(ccon_3_io_adr_i),
    .io_dat_i(ccon_3_io_dat_i),
    .io_dat_o(ccon_3_io_dat_o),
    .io_dsi_in(ccon_3_io_dsi_in),
    .io_dataLastBlock(ccon_3_io_dataLastBlock),
    .io_dsi_o(ccon_3_io_dsi_o),
    .io_b_cs_i_0(ccon_3_io_b_cs_i_0),
    .io_b_cs_i_1(ccon_3_io_b_cs_i_1),
    .io_b_cs_i_2(ccon_3_io_b_cs_i_2),
    .io_b_cs_i_3(ccon_3_io_b_cs_i_3),
    .io_b_cs_i_4(ccon_3_io_b_cs_i_4),
    .io_b_cs_i_5(ccon_3_io_b_cs_i_5),
    .io_b_cs_i_6(ccon_3_io_b_cs_i_6),
    .io_b_cs_i_7(ccon_3_io_b_cs_i_7),
    .io_b_cs_i_8(ccon_3_io_b_cs_i_8),
    .io_b_cs_i_9(ccon_3_io_b_cs_i_9),
    .io_b_cs_i_10(ccon_3_io_b_cs_i_10),
    .io_b_we_i(ccon_3_io_b_we_i),
    .io_b_adr_i(ccon_3_io_b_adr_i),
    .io_b_dat_i(ccon_3_io_b_dat_i),
    .io_b_dat_o_0(ccon_3_io_b_dat_o_0),
    .io_b_dat_o_1(ccon_3_io_b_dat_o_1),
    .io_b_dat_o_2(ccon_3_io_b_dat_o_2),
    .io_b_dat_o_3(ccon_3_io_b_dat_o_3),
    .io_b_dat_o_4(ccon_3_io_b_dat_o_4),
    .io_b_dat_o_5(ccon_3_io_b_dat_o_5),
    .io_b_dat_o_6(ccon_3_io_b_dat_o_6),
    .io_b_dat_o_7(ccon_3_io_b_dat_o_7),
    .io_b_dat_o_8(ccon_3_io_b_dat_o_8),
    .io_b_dat_o_9(ccon_3_io_b_dat_o_9),
    .io_b_dat_o_10(ccon_3_io_b_dat_o_10),
    .io_vout(ccon_3_io_vout),
    .io_irq(ccon_3_io_irq),
    .io_sync_out(ccon_3_io_sync_out)
  );
  cic_block cb_3_0 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_3_0_wb_clk_i),
    .wb_rst_i(cb_3_0_wb_rst_i),
    .io_i_0_in1(cb_3_0_io_i_0_in1),
    .io_i_0_ci(cb_3_0_io_i_0_ci),
    .io_i_1_in1(cb_3_0_io_i_1_in1),
    .io_i_1_ci(cb_3_0_io_i_1_ci),
    .io_i_2_in1(cb_3_0_io_i_2_in1),
    .io_i_2_ci(cb_3_0_io_i_2_ci),
    .io_i_3_in1(cb_3_0_io_i_3_in1),
    .io_i_3_ci(cb_3_0_io_i_3_ci),
    .io_i_4_in1(cb_3_0_io_i_4_in1),
    .io_i_4_ci(cb_3_0_io_i_4_ci),
    .io_i_5_in1(cb_3_0_io_i_5_in1),
    .io_i_5_ci(cb_3_0_io_i_5_ci),
    .io_i_6_in1(cb_3_0_io_i_6_in1),
    .io_i_6_ci(cb_3_0_io_i_6_ci),
    .io_i_7_in1(cb_3_0_io_i_7_in1),
    .io_i_7_ci(cb_3_0_io_i_7_ci),
    .io_o_0_out(cb_3_0_io_o_0_out),
    .io_o_0_co(cb_3_0_io_o_0_co),
    .io_o_1_out(cb_3_0_io_o_1_out),
    .io_o_1_co(cb_3_0_io_o_1_co),
    .io_o_2_out(cb_3_0_io_o_2_out),
    .io_o_2_co(cb_3_0_io_o_2_co),
    .io_o_3_out(cb_3_0_io_o_3_out),
    .io_o_3_co(cb_3_0_io_o_3_co),
    .io_o_4_out(cb_3_0_io_o_4_out),
    .io_o_4_co(cb_3_0_io_o_4_co),
    .io_o_5_out(cb_3_0_io_o_5_out),
    .io_o_5_co(cb_3_0_io_o_5_co),
    .io_o_6_out(cb_3_0_io_o_6_out),
    .io_o_6_co(cb_3_0_io_o_6_co),
    .io_o_7_out(cb_3_0_io_o_7_out),
    .io_o_7_co(cb_3_0_io_o_7_co),
    .io_vi(cb_3_0_io_vi),
    .io_vci(cb_3_0_io_vci),
    .io_vco(cb_3_0_io_vco),
    .io_eo(cb_3_0_io_eo),
    .io_wo(cb_3_0_io_wo),
    .io_cs_i(cb_3_0_io_cs_i),
    .io_we_i(cb_3_0_io_we_i),
    .io_adr_i(cb_3_0_io_adr_i),
    .io_dat_i(cb_3_0_io_dat_i),
    .io_dat_o(cb_3_0_io_dat_o)
  );
  cic_block cb_3_1 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_3_1_wb_clk_i),
    .wb_rst_i(cb_3_1_wb_rst_i),
    .io_i_0_in1(cb_3_1_io_i_0_in1),
    .io_i_0_ci(cb_3_1_io_i_0_ci),
    .io_i_1_in1(cb_3_1_io_i_1_in1),
    .io_i_1_ci(cb_3_1_io_i_1_ci),
    .io_i_2_in1(cb_3_1_io_i_2_in1),
    .io_i_2_ci(cb_3_1_io_i_2_ci),
    .io_i_3_in1(cb_3_1_io_i_3_in1),
    .io_i_3_ci(cb_3_1_io_i_3_ci),
    .io_i_4_in1(cb_3_1_io_i_4_in1),
    .io_i_4_ci(cb_3_1_io_i_4_ci),
    .io_i_5_in1(cb_3_1_io_i_5_in1),
    .io_i_5_ci(cb_3_1_io_i_5_ci),
    .io_i_6_in1(cb_3_1_io_i_6_in1),
    .io_i_6_ci(cb_3_1_io_i_6_ci),
    .io_i_7_in1(cb_3_1_io_i_7_in1),
    .io_i_7_ci(cb_3_1_io_i_7_ci),
    .io_o_0_out(cb_3_1_io_o_0_out),
    .io_o_0_co(cb_3_1_io_o_0_co),
    .io_o_1_out(cb_3_1_io_o_1_out),
    .io_o_1_co(cb_3_1_io_o_1_co),
    .io_o_2_out(cb_3_1_io_o_2_out),
    .io_o_2_co(cb_3_1_io_o_2_co),
    .io_o_3_out(cb_3_1_io_o_3_out),
    .io_o_3_co(cb_3_1_io_o_3_co),
    .io_o_4_out(cb_3_1_io_o_4_out),
    .io_o_4_co(cb_3_1_io_o_4_co),
    .io_o_5_out(cb_3_1_io_o_5_out),
    .io_o_5_co(cb_3_1_io_o_5_co),
    .io_o_6_out(cb_3_1_io_o_6_out),
    .io_o_6_co(cb_3_1_io_o_6_co),
    .io_o_7_out(cb_3_1_io_o_7_out),
    .io_o_7_co(cb_3_1_io_o_7_co),
    .io_vi(cb_3_1_io_vi),
    .io_vci(cb_3_1_io_vci),
    .io_vco(cb_3_1_io_vco),
    .io_eo(cb_3_1_io_eo),
    .io_wo(cb_3_1_io_wo),
    .io_cs_i(cb_3_1_io_cs_i),
    .io_we_i(cb_3_1_io_we_i),
    .io_adr_i(cb_3_1_io_adr_i),
    .io_dat_i(cb_3_1_io_dat_i),
    .io_dat_o(cb_3_1_io_dat_o)
  );
  cic_block cb_3_2 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_3_2_wb_clk_i),
    .wb_rst_i(cb_3_2_wb_rst_i),
    .io_i_0_in1(cb_3_2_io_i_0_in1),
    .io_i_0_ci(cb_3_2_io_i_0_ci),
    .io_i_1_in1(cb_3_2_io_i_1_in1),
    .io_i_1_ci(cb_3_2_io_i_1_ci),
    .io_i_2_in1(cb_3_2_io_i_2_in1),
    .io_i_2_ci(cb_3_2_io_i_2_ci),
    .io_i_3_in1(cb_3_2_io_i_3_in1),
    .io_i_3_ci(cb_3_2_io_i_3_ci),
    .io_i_4_in1(cb_3_2_io_i_4_in1),
    .io_i_4_ci(cb_3_2_io_i_4_ci),
    .io_i_5_in1(cb_3_2_io_i_5_in1),
    .io_i_5_ci(cb_3_2_io_i_5_ci),
    .io_i_6_in1(cb_3_2_io_i_6_in1),
    .io_i_6_ci(cb_3_2_io_i_6_ci),
    .io_i_7_in1(cb_3_2_io_i_7_in1),
    .io_i_7_ci(cb_3_2_io_i_7_ci),
    .io_o_0_out(cb_3_2_io_o_0_out),
    .io_o_0_co(cb_3_2_io_o_0_co),
    .io_o_1_out(cb_3_2_io_o_1_out),
    .io_o_1_co(cb_3_2_io_o_1_co),
    .io_o_2_out(cb_3_2_io_o_2_out),
    .io_o_2_co(cb_3_2_io_o_2_co),
    .io_o_3_out(cb_3_2_io_o_3_out),
    .io_o_3_co(cb_3_2_io_o_3_co),
    .io_o_4_out(cb_3_2_io_o_4_out),
    .io_o_4_co(cb_3_2_io_o_4_co),
    .io_o_5_out(cb_3_2_io_o_5_out),
    .io_o_5_co(cb_3_2_io_o_5_co),
    .io_o_6_out(cb_3_2_io_o_6_out),
    .io_o_6_co(cb_3_2_io_o_6_co),
    .io_o_7_out(cb_3_2_io_o_7_out),
    .io_o_7_co(cb_3_2_io_o_7_co),
    .io_vi(cb_3_2_io_vi),
    .io_vci(cb_3_2_io_vci),
    .io_vco(cb_3_2_io_vco),
    .io_eo(cb_3_2_io_eo),
    .io_wo(cb_3_2_io_wo),
    .io_cs_i(cb_3_2_io_cs_i),
    .io_we_i(cb_3_2_io_we_i),
    .io_adr_i(cb_3_2_io_adr_i),
    .io_dat_i(cb_3_2_io_dat_i),
    .io_dat_o(cb_3_2_io_dat_o)
  );
  cic_block cb_3_3 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_3_3_wb_clk_i),
    .wb_rst_i(cb_3_3_wb_rst_i),
    .io_i_0_in1(cb_3_3_io_i_0_in1),
    .io_i_0_ci(cb_3_3_io_i_0_ci),
    .io_i_1_in1(cb_3_3_io_i_1_in1),
    .io_i_1_ci(cb_3_3_io_i_1_ci),
    .io_i_2_in1(cb_3_3_io_i_2_in1),
    .io_i_2_ci(cb_3_3_io_i_2_ci),
    .io_i_3_in1(cb_3_3_io_i_3_in1),
    .io_i_3_ci(cb_3_3_io_i_3_ci),
    .io_i_4_in1(cb_3_3_io_i_4_in1),
    .io_i_4_ci(cb_3_3_io_i_4_ci),
    .io_i_5_in1(cb_3_3_io_i_5_in1),
    .io_i_5_ci(cb_3_3_io_i_5_ci),
    .io_i_6_in1(cb_3_3_io_i_6_in1),
    .io_i_6_ci(cb_3_3_io_i_6_ci),
    .io_i_7_in1(cb_3_3_io_i_7_in1),
    .io_i_7_ci(cb_3_3_io_i_7_ci),
    .io_o_0_out(cb_3_3_io_o_0_out),
    .io_o_0_co(cb_3_3_io_o_0_co),
    .io_o_1_out(cb_3_3_io_o_1_out),
    .io_o_1_co(cb_3_3_io_o_1_co),
    .io_o_2_out(cb_3_3_io_o_2_out),
    .io_o_2_co(cb_3_3_io_o_2_co),
    .io_o_3_out(cb_3_3_io_o_3_out),
    .io_o_3_co(cb_3_3_io_o_3_co),
    .io_o_4_out(cb_3_3_io_o_4_out),
    .io_o_4_co(cb_3_3_io_o_4_co),
    .io_o_5_out(cb_3_3_io_o_5_out),
    .io_o_5_co(cb_3_3_io_o_5_co),
    .io_o_6_out(cb_3_3_io_o_6_out),
    .io_o_6_co(cb_3_3_io_o_6_co),
    .io_o_7_out(cb_3_3_io_o_7_out),
    .io_o_7_co(cb_3_3_io_o_7_co),
    .io_vi(cb_3_3_io_vi),
    .io_vci(cb_3_3_io_vci),
    .io_vco(cb_3_3_io_vco),
    .io_eo(cb_3_3_io_eo),
    .io_wo(cb_3_3_io_wo),
    .io_cs_i(cb_3_3_io_cs_i),
    .io_we_i(cb_3_3_io_we_i),
    .io_adr_i(cb_3_3_io_adr_i),
    .io_dat_i(cb_3_3_io_dat_i),
    .io_dat_o(cb_3_3_io_dat_o)
  );
  cic_block cb_3_4 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_3_4_wb_clk_i),
    .wb_rst_i(cb_3_4_wb_rst_i),
    .io_i_0_in1(cb_3_4_io_i_0_in1),
    .io_i_0_ci(cb_3_4_io_i_0_ci),
    .io_i_1_in1(cb_3_4_io_i_1_in1),
    .io_i_1_ci(cb_3_4_io_i_1_ci),
    .io_i_2_in1(cb_3_4_io_i_2_in1),
    .io_i_2_ci(cb_3_4_io_i_2_ci),
    .io_i_3_in1(cb_3_4_io_i_3_in1),
    .io_i_3_ci(cb_3_4_io_i_3_ci),
    .io_i_4_in1(cb_3_4_io_i_4_in1),
    .io_i_4_ci(cb_3_4_io_i_4_ci),
    .io_i_5_in1(cb_3_4_io_i_5_in1),
    .io_i_5_ci(cb_3_4_io_i_5_ci),
    .io_i_6_in1(cb_3_4_io_i_6_in1),
    .io_i_6_ci(cb_3_4_io_i_6_ci),
    .io_i_7_in1(cb_3_4_io_i_7_in1),
    .io_i_7_ci(cb_3_4_io_i_7_ci),
    .io_o_0_out(cb_3_4_io_o_0_out),
    .io_o_0_co(cb_3_4_io_o_0_co),
    .io_o_1_out(cb_3_4_io_o_1_out),
    .io_o_1_co(cb_3_4_io_o_1_co),
    .io_o_2_out(cb_3_4_io_o_2_out),
    .io_o_2_co(cb_3_4_io_o_2_co),
    .io_o_3_out(cb_3_4_io_o_3_out),
    .io_o_3_co(cb_3_4_io_o_3_co),
    .io_o_4_out(cb_3_4_io_o_4_out),
    .io_o_4_co(cb_3_4_io_o_4_co),
    .io_o_5_out(cb_3_4_io_o_5_out),
    .io_o_5_co(cb_3_4_io_o_5_co),
    .io_o_6_out(cb_3_4_io_o_6_out),
    .io_o_6_co(cb_3_4_io_o_6_co),
    .io_o_7_out(cb_3_4_io_o_7_out),
    .io_o_7_co(cb_3_4_io_o_7_co),
    .io_vi(cb_3_4_io_vi),
    .io_vci(cb_3_4_io_vci),
    .io_vco(cb_3_4_io_vco),
    .io_eo(cb_3_4_io_eo),
    .io_wo(cb_3_4_io_wo),
    .io_cs_i(cb_3_4_io_cs_i),
    .io_we_i(cb_3_4_io_we_i),
    .io_adr_i(cb_3_4_io_adr_i),
    .io_dat_i(cb_3_4_io_dat_i),
    .io_dat_o(cb_3_4_io_dat_o)
  );
  cic_block cb_3_5 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_3_5_wb_clk_i),
    .wb_rst_i(cb_3_5_wb_rst_i),
    .io_i_0_in1(cb_3_5_io_i_0_in1),
    .io_i_0_ci(cb_3_5_io_i_0_ci),
    .io_i_1_in1(cb_3_5_io_i_1_in1),
    .io_i_1_ci(cb_3_5_io_i_1_ci),
    .io_i_2_in1(cb_3_5_io_i_2_in1),
    .io_i_2_ci(cb_3_5_io_i_2_ci),
    .io_i_3_in1(cb_3_5_io_i_3_in1),
    .io_i_3_ci(cb_3_5_io_i_3_ci),
    .io_i_4_in1(cb_3_5_io_i_4_in1),
    .io_i_4_ci(cb_3_5_io_i_4_ci),
    .io_i_5_in1(cb_3_5_io_i_5_in1),
    .io_i_5_ci(cb_3_5_io_i_5_ci),
    .io_i_6_in1(cb_3_5_io_i_6_in1),
    .io_i_6_ci(cb_3_5_io_i_6_ci),
    .io_i_7_in1(cb_3_5_io_i_7_in1),
    .io_i_7_ci(cb_3_5_io_i_7_ci),
    .io_o_0_out(cb_3_5_io_o_0_out),
    .io_o_0_co(cb_3_5_io_o_0_co),
    .io_o_1_out(cb_3_5_io_o_1_out),
    .io_o_1_co(cb_3_5_io_o_1_co),
    .io_o_2_out(cb_3_5_io_o_2_out),
    .io_o_2_co(cb_3_5_io_o_2_co),
    .io_o_3_out(cb_3_5_io_o_3_out),
    .io_o_3_co(cb_3_5_io_o_3_co),
    .io_o_4_out(cb_3_5_io_o_4_out),
    .io_o_4_co(cb_3_5_io_o_4_co),
    .io_o_5_out(cb_3_5_io_o_5_out),
    .io_o_5_co(cb_3_5_io_o_5_co),
    .io_o_6_out(cb_3_5_io_o_6_out),
    .io_o_6_co(cb_3_5_io_o_6_co),
    .io_o_7_out(cb_3_5_io_o_7_out),
    .io_o_7_co(cb_3_5_io_o_7_co),
    .io_vi(cb_3_5_io_vi),
    .io_vci(cb_3_5_io_vci),
    .io_vco(cb_3_5_io_vco),
    .io_eo(cb_3_5_io_eo),
    .io_wo(cb_3_5_io_wo),
    .io_cs_i(cb_3_5_io_cs_i),
    .io_we_i(cb_3_5_io_we_i),
    .io_adr_i(cb_3_5_io_adr_i),
    .io_dat_i(cb_3_5_io_dat_i),
    .io_dat_o(cb_3_5_io_dat_o)
  );
  cic_block cb_3_6 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_3_6_wb_clk_i),
    .wb_rst_i(cb_3_6_wb_rst_i),
    .io_i_0_in1(cb_3_6_io_i_0_in1),
    .io_i_0_ci(cb_3_6_io_i_0_ci),
    .io_i_1_in1(cb_3_6_io_i_1_in1),
    .io_i_1_ci(cb_3_6_io_i_1_ci),
    .io_i_2_in1(cb_3_6_io_i_2_in1),
    .io_i_2_ci(cb_3_6_io_i_2_ci),
    .io_i_3_in1(cb_3_6_io_i_3_in1),
    .io_i_3_ci(cb_3_6_io_i_3_ci),
    .io_i_4_in1(cb_3_6_io_i_4_in1),
    .io_i_4_ci(cb_3_6_io_i_4_ci),
    .io_i_5_in1(cb_3_6_io_i_5_in1),
    .io_i_5_ci(cb_3_6_io_i_5_ci),
    .io_i_6_in1(cb_3_6_io_i_6_in1),
    .io_i_6_ci(cb_3_6_io_i_6_ci),
    .io_i_7_in1(cb_3_6_io_i_7_in1),
    .io_i_7_ci(cb_3_6_io_i_7_ci),
    .io_o_0_out(cb_3_6_io_o_0_out),
    .io_o_0_co(cb_3_6_io_o_0_co),
    .io_o_1_out(cb_3_6_io_o_1_out),
    .io_o_1_co(cb_3_6_io_o_1_co),
    .io_o_2_out(cb_3_6_io_o_2_out),
    .io_o_2_co(cb_3_6_io_o_2_co),
    .io_o_3_out(cb_3_6_io_o_3_out),
    .io_o_3_co(cb_3_6_io_o_3_co),
    .io_o_4_out(cb_3_6_io_o_4_out),
    .io_o_4_co(cb_3_6_io_o_4_co),
    .io_o_5_out(cb_3_6_io_o_5_out),
    .io_o_5_co(cb_3_6_io_o_5_co),
    .io_o_6_out(cb_3_6_io_o_6_out),
    .io_o_6_co(cb_3_6_io_o_6_co),
    .io_o_7_out(cb_3_6_io_o_7_out),
    .io_o_7_co(cb_3_6_io_o_7_co),
    .io_vi(cb_3_6_io_vi),
    .io_vci(cb_3_6_io_vci),
    .io_vco(cb_3_6_io_vco),
    .io_eo(cb_3_6_io_eo),
    .io_wo(cb_3_6_io_wo),
    .io_cs_i(cb_3_6_io_cs_i),
    .io_we_i(cb_3_6_io_we_i),
    .io_adr_i(cb_3_6_io_adr_i),
    .io_dat_i(cb_3_6_io_dat_i),
    .io_dat_o(cb_3_6_io_dat_o)
  );
  cic_block cb_3_7 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_3_7_wb_clk_i),
    .wb_rst_i(cb_3_7_wb_rst_i),
    .io_i_0_in1(cb_3_7_io_i_0_in1),
    .io_i_0_ci(cb_3_7_io_i_0_ci),
    .io_i_1_in1(cb_3_7_io_i_1_in1),
    .io_i_1_ci(cb_3_7_io_i_1_ci),
    .io_i_2_in1(cb_3_7_io_i_2_in1),
    .io_i_2_ci(cb_3_7_io_i_2_ci),
    .io_i_3_in1(cb_3_7_io_i_3_in1),
    .io_i_3_ci(cb_3_7_io_i_3_ci),
    .io_i_4_in1(cb_3_7_io_i_4_in1),
    .io_i_4_ci(cb_3_7_io_i_4_ci),
    .io_i_5_in1(cb_3_7_io_i_5_in1),
    .io_i_5_ci(cb_3_7_io_i_5_ci),
    .io_i_6_in1(cb_3_7_io_i_6_in1),
    .io_i_6_ci(cb_3_7_io_i_6_ci),
    .io_i_7_in1(cb_3_7_io_i_7_in1),
    .io_i_7_ci(cb_3_7_io_i_7_ci),
    .io_o_0_out(cb_3_7_io_o_0_out),
    .io_o_0_co(cb_3_7_io_o_0_co),
    .io_o_1_out(cb_3_7_io_o_1_out),
    .io_o_1_co(cb_3_7_io_o_1_co),
    .io_o_2_out(cb_3_7_io_o_2_out),
    .io_o_2_co(cb_3_7_io_o_2_co),
    .io_o_3_out(cb_3_7_io_o_3_out),
    .io_o_3_co(cb_3_7_io_o_3_co),
    .io_o_4_out(cb_3_7_io_o_4_out),
    .io_o_4_co(cb_3_7_io_o_4_co),
    .io_o_5_out(cb_3_7_io_o_5_out),
    .io_o_5_co(cb_3_7_io_o_5_co),
    .io_o_6_out(cb_3_7_io_o_6_out),
    .io_o_6_co(cb_3_7_io_o_6_co),
    .io_o_7_out(cb_3_7_io_o_7_out),
    .io_o_7_co(cb_3_7_io_o_7_co),
    .io_vi(cb_3_7_io_vi),
    .io_vci(cb_3_7_io_vci),
    .io_vco(cb_3_7_io_vco),
    .io_eo(cb_3_7_io_eo),
    .io_wo(cb_3_7_io_wo),
    .io_cs_i(cb_3_7_io_cs_i),
    .io_we_i(cb_3_7_io_we_i),
    .io_adr_i(cb_3_7_io_adr_i),
    .io_dat_i(cb_3_7_io_dat_i),
    .io_dat_o(cb_3_7_io_dat_o)
  );
  cic_block cb_3_8 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_3_8_wb_clk_i),
    .wb_rst_i(cb_3_8_wb_rst_i),
    .io_i_0_in1(cb_3_8_io_i_0_in1),
    .io_i_0_ci(cb_3_8_io_i_0_ci),
    .io_i_1_in1(cb_3_8_io_i_1_in1),
    .io_i_1_ci(cb_3_8_io_i_1_ci),
    .io_i_2_in1(cb_3_8_io_i_2_in1),
    .io_i_2_ci(cb_3_8_io_i_2_ci),
    .io_i_3_in1(cb_3_8_io_i_3_in1),
    .io_i_3_ci(cb_3_8_io_i_3_ci),
    .io_i_4_in1(cb_3_8_io_i_4_in1),
    .io_i_4_ci(cb_3_8_io_i_4_ci),
    .io_i_5_in1(cb_3_8_io_i_5_in1),
    .io_i_5_ci(cb_3_8_io_i_5_ci),
    .io_i_6_in1(cb_3_8_io_i_6_in1),
    .io_i_6_ci(cb_3_8_io_i_6_ci),
    .io_i_7_in1(cb_3_8_io_i_7_in1),
    .io_i_7_ci(cb_3_8_io_i_7_ci),
    .io_o_0_out(cb_3_8_io_o_0_out),
    .io_o_0_co(cb_3_8_io_o_0_co),
    .io_o_1_out(cb_3_8_io_o_1_out),
    .io_o_1_co(cb_3_8_io_o_1_co),
    .io_o_2_out(cb_3_8_io_o_2_out),
    .io_o_2_co(cb_3_8_io_o_2_co),
    .io_o_3_out(cb_3_8_io_o_3_out),
    .io_o_3_co(cb_3_8_io_o_3_co),
    .io_o_4_out(cb_3_8_io_o_4_out),
    .io_o_4_co(cb_3_8_io_o_4_co),
    .io_o_5_out(cb_3_8_io_o_5_out),
    .io_o_5_co(cb_3_8_io_o_5_co),
    .io_o_6_out(cb_3_8_io_o_6_out),
    .io_o_6_co(cb_3_8_io_o_6_co),
    .io_o_7_out(cb_3_8_io_o_7_out),
    .io_o_7_co(cb_3_8_io_o_7_co),
    .io_vi(cb_3_8_io_vi),
    .io_vci(cb_3_8_io_vci),
    .io_vco(cb_3_8_io_vco),
    .io_eo(cb_3_8_io_eo),
    .io_wo(cb_3_8_io_wo),
    .io_cs_i(cb_3_8_io_cs_i),
    .io_we_i(cb_3_8_io_we_i),
    .io_adr_i(cb_3_8_io_adr_i),
    .io_dat_i(cb_3_8_io_dat_i),
    .io_dat_o(cb_3_8_io_dat_o)
  );
  cic_block cb_3_9 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_3_9_wb_clk_i),
    .wb_rst_i(cb_3_9_wb_rst_i),
    .io_i_0_in1(cb_3_9_io_i_0_in1),
    .io_i_0_ci(cb_3_9_io_i_0_ci),
    .io_i_1_in1(cb_3_9_io_i_1_in1),
    .io_i_1_ci(cb_3_9_io_i_1_ci),
    .io_i_2_in1(cb_3_9_io_i_2_in1),
    .io_i_2_ci(cb_3_9_io_i_2_ci),
    .io_i_3_in1(cb_3_9_io_i_3_in1),
    .io_i_3_ci(cb_3_9_io_i_3_ci),
    .io_i_4_in1(cb_3_9_io_i_4_in1),
    .io_i_4_ci(cb_3_9_io_i_4_ci),
    .io_i_5_in1(cb_3_9_io_i_5_in1),
    .io_i_5_ci(cb_3_9_io_i_5_ci),
    .io_i_6_in1(cb_3_9_io_i_6_in1),
    .io_i_6_ci(cb_3_9_io_i_6_ci),
    .io_i_7_in1(cb_3_9_io_i_7_in1),
    .io_i_7_ci(cb_3_9_io_i_7_ci),
    .io_o_0_out(cb_3_9_io_o_0_out),
    .io_o_0_co(cb_3_9_io_o_0_co),
    .io_o_1_out(cb_3_9_io_o_1_out),
    .io_o_1_co(cb_3_9_io_o_1_co),
    .io_o_2_out(cb_3_9_io_o_2_out),
    .io_o_2_co(cb_3_9_io_o_2_co),
    .io_o_3_out(cb_3_9_io_o_3_out),
    .io_o_3_co(cb_3_9_io_o_3_co),
    .io_o_4_out(cb_3_9_io_o_4_out),
    .io_o_4_co(cb_3_9_io_o_4_co),
    .io_o_5_out(cb_3_9_io_o_5_out),
    .io_o_5_co(cb_3_9_io_o_5_co),
    .io_o_6_out(cb_3_9_io_o_6_out),
    .io_o_6_co(cb_3_9_io_o_6_co),
    .io_o_7_out(cb_3_9_io_o_7_out),
    .io_o_7_co(cb_3_9_io_o_7_co),
    .io_vi(cb_3_9_io_vi),
    .io_vci(cb_3_9_io_vci),
    .io_vco(cb_3_9_io_vco),
    .io_eo(cb_3_9_io_eo),
    .io_wo(cb_3_9_io_wo),
    .io_cs_i(cb_3_9_io_cs_i),
    .io_we_i(cb_3_9_io_we_i),
    .io_adr_i(cb_3_9_io_adr_i),
    .io_dat_i(cb_3_9_io_dat_i),
    .io_dat_o(cb_3_9_io_dat_o)
  );
  cic_block cb_3_10 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_3_10_wb_clk_i),
    .wb_rst_i(cb_3_10_wb_rst_i),
    .io_i_0_in1(cb_3_10_io_i_0_in1),
    .io_i_0_ci(cb_3_10_io_i_0_ci),
    .io_i_1_in1(cb_3_10_io_i_1_in1),
    .io_i_1_ci(cb_3_10_io_i_1_ci),
    .io_i_2_in1(cb_3_10_io_i_2_in1),
    .io_i_2_ci(cb_3_10_io_i_2_ci),
    .io_i_3_in1(cb_3_10_io_i_3_in1),
    .io_i_3_ci(cb_3_10_io_i_3_ci),
    .io_i_4_in1(cb_3_10_io_i_4_in1),
    .io_i_4_ci(cb_3_10_io_i_4_ci),
    .io_i_5_in1(cb_3_10_io_i_5_in1),
    .io_i_5_ci(cb_3_10_io_i_5_ci),
    .io_i_6_in1(cb_3_10_io_i_6_in1),
    .io_i_6_ci(cb_3_10_io_i_6_ci),
    .io_i_7_in1(cb_3_10_io_i_7_in1),
    .io_i_7_ci(cb_3_10_io_i_7_ci),
    .io_o_0_out(cb_3_10_io_o_0_out),
    .io_o_0_co(cb_3_10_io_o_0_co),
    .io_o_1_out(cb_3_10_io_o_1_out),
    .io_o_1_co(cb_3_10_io_o_1_co),
    .io_o_2_out(cb_3_10_io_o_2_out),
    .io_o_2_co(cb_3_10_io_o_2_co),
    .io_o_3_out(cb_3_10_io_o_3_out),
    .io_o_3_co(cb_3_10_io_o_3_co),
    .io_o_4_out(cb_3_10_io_o_4_out),
    .io_o_4_co(cb_3_10_io_o_4_co),
    .io_o_5_out(cb_3_10_io_o_5_out),
    .io_o_5_co(cb_3_10_io_o_5_co),
    .io_o_6_out(cb_3_10_io_o_6_out),
    .io_o_6_co(cb_3_10_io_o_6_co),
    .io_o_7_out(cb_3_10_io_o_7_out),
    .io_o_7_co(cb_3_10_io_o_7_co),
    .io_vi(cb_3_10_io_vi),
    .io_vci(cb_3_10_io_vci),
    .io_vco(cb_3_10_io_vco),
    .io_eo(cb_3_10_io_eo),
    .io_wo(cb_3_10_io_wo),
    .io_cs_i(cb_3_10_io_cs_i),
    .io_we_i(cb_3_10_io_we_i),
    .io_adr_i(cb_3_10_io_adr_i),
    .io_dat_i(cb_3_10_io_dat_i),
    .io_dat_o(cb_3_10_io_dat_o)
  );
  cic_con ccon_4 ( // @[UserProjectWrapper.scala 80:19]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(ccon_4_wb_clk_i),
    .wb_rst_i(ccon_4_wb_rst_i),
    .io_cs_i(ccon_4_io_cs_i),
    .io_ack_o(ccon_4_io_ack_o),
    .io_we_i(ccon_4_io_we_i),
    .io_adr_i(ccon_4_io_adr_i),
    .io_dat_i(ccon_4_io_dat_i),
    .io_dat_o(ccon_4_io_dat_o),
    .io_dsi_in(ccon_4_io_dsi_in),
    .io_dataLastBlock(ccon_4_io_dataLastBlock),
    .io_dsi_o(ccon_4_io_dsi_o),
    .io_b_cs_i_0(ccon_4_io_b_cs_i_0),
    .io_b_cs_i_1(ccon_4_io_b_cs_i_1),
    .io_b_cs_i_2(ccon_4_io_b_cs_i_2),
    .io_b_cs_i_3(ccon_4_io_b_cs_i_3),
    .io_b_cs_i_4(ccon_4_io_b_cs_i_4),
    .io_b_cs_i_5(ccon_4_io_b_cs_i_5),
    .io_b_cs_i_6(ccon_4_io_b_cs_i_6),
    .io_b_cs_i_7(ccon_4_io_b_cs_i_7),
    .io_b_cs_i_8(ccon_4_io_b_cs_i_8),
    .io_b_cs_i_9(ccon_4_io_b_cs_i_9),
    .io_b_cs_i_10(ccon_4_io_b_cs_i_10),
    .io_b_we_i(ccon_4_io_b_we_i),
    .io_b_adr_i(ccon_4_io_b_adr_i),
    .io_b_dat_i(ccon_4_io_b_dat_i),
    .io_b_dat_o_0(ccon_4_io_b_dat_o_0),
    .io_b_dat_o_1(ccon_4_io_b_dat_o_1),
    .io_b_dat_o_2(ccon_4_io_b_dat_o_2),
    .io_b_dat_o_3(ccon_4_io_b_dat_o_3),
    .io_b_dat_o_4(ccon_4_io_b_dat_o_4),
    .io_b_dat_o_5(ccon_4_io_b_dat_o_5),
    .io_b_dat_o_6(ccon_4_io_b_dat_o_6),
    .io_b_dat_o_7(ccon_4_io_b_dat_o_7),
    .io_b_dat_o_8(ccon_4_io_b_dat_o_8),
    .io_b_dat_o_9(ccon_4_io_b_dat_o_9),
    .io_b_dat_o_10(ccon_4_io_b_dat_o_10),
    .io_vout(ccon_4_io_vout),
    .io_irq(ccon_4_io_irq),
    .io_sync_out(ccon_4_io_sync_out)
  );
  cic_block cb_4_0 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_4_0_wb_clk_i),
    .wb_rst_i(cb_4_0_wb_rst_i),
    .io_i_0_in1(cb_4_0_io_i_0_in1),
    .io_i_0_ci(cb_4_0_io_i_0_ci),
    .io_i_1_in1(cb_4_0_io_i_1_in1),
    .io_i_1_ci(cb_4_0_io_i_1_ci),
    .io_i_2_in1(cb_4_0_io_i_2_in1),
    .io_i_2_ci(cb_4_0_io_i_2_ci),
    .io_i_3_in1(cb_4_0_io_i_3_in1),
    .io_i_3_ci(cb_4_0_io_i_3_ci),
    .io_i_4_in1(cb_4_0_io_i_4_in1),
    .io_i_4_ci(cb_4_0_io_i_4_ci),
    .io_i_5_in1(cb_4_0_io_i_5_in1),
    .io_i_5_ci(cb_4_0_io_i_5_ci),
    .io_i_6_in1(cb_4_0_io_i_6_in1),
    .io_i_6_ci(cb_4_0_io_i_6_ci),
    .io_i_7_in1(cb_4_0_io_i_7_in1),
    .io_i_7_ci(cb_4_0_io_i_7_ci),
    .io_o_0_out(cb_4_0_io_o_0_out),
    .io_o_0_co(cb_4_0_io_o_0_co),
    .io_o_1_out(cb_4_0_io_o_1_out),
    .io_o_1_co(cb_4_0_io_o_1_co),
    .io_o_2_out(cb_4_0_io_o_2_out),
    .io_o_2_co(cb_4_0_io_o_2_co),
    .io_o_3_out(cb_4_0_io_o_3_out),
    .io_o_3_co(cb_4_0_io_o_3_co),
    .io_o_4_out(cb_4_0_io_o_4_out),
    .io_o_4_co(cb_4_0_io_o_4_co),
    .io_o_5_out(cb_4_0_io_o_5_out),
    .io_o_5_co(cb_4_0_io_o_5_co),
    .io_o_6_out(cb_4_0_io_o_6_out),
    .io_o_6_co(cb_4_0_io_o_6_co),
    .io_o_7_out(cb_4_0_io_o_7_out),
    .io_o_7_co(cb_4_0_io_o_7_co),
    .io_vi(cb_4_0_io_vi),
    .io_vci(cb_4_0_io_vci),
    .io_vco(cb_4_0_io_vco),
    .io_eo(cb_4_0_io_eo),
    .io_wo(cb_4_0_io_wo),
    .io_cs_i(cb_4_0_io_cs_i),
    .io_we_i(cb_4_0_io_we_i),
    .io_adr_i(cb_4_0_io_adr_i),
    .io_dat_i(cb_4_0_io_dat_i),
    .io_dat_o(cb_4_0_io_dat_o)
  );
  cic_block cb_4_1 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_4_1_wb_clk_i),
    .wb_rst_i(cb_4_1_wb_rst_i),
    .io_i_0_in1(cb_4_1_io_i_0_in1),
    .io_i_0_ci(cb_4_1_io_i_0_ci),
    .io_i_1_in1(cb_4_1_io_i_1_in1),
    .io_i_1_ci(cb_4_1_io_i_1_ci),
    .io_i_2_in1(cb_4_1_io_i_2_in1),
    .io_i_2_ci(cb_4_1_io_i_2_ci),
    .io_i_3_in1(cb_4_1_io_i_3_in1),
    .io_i_3_ci(cb_4_1_io_i_3_ci),
    .io_i_4_in1(cb_4_1_io_i_4_in1),
    .io_i_4_ci(cb_4_1_io_i_4_ci),
    .io_i_5_in1(cb_4_1_io_i_5_in1),
    .io_i_5_ci(cb_4_1_io_i_5_ci),
    .io_i_6_in1(cb_4_1_io_i_6_in1),
    .io_i_6_ci(cb_4_1_io_i_6_ci),
    .io_i_7_in1(cb_4_1_io_i_7_in1),
    .io_i_7_ci(cb_4_1_io_i_7_ci),
    .io_o_0_out(cb_4_1_io_o_0_out),
    .io_o_0_co(cb_4_1_io_o_0_co),
    .io_o_1_out(cb_4_1_io_o_1_out),
    .io_o_1_co(cb_4_1_io_o_1_co),
    .io_o_2_out(cb_4_1_io_o_2_out),
    .io_o_2_co(cb_4_1_io_o_2_co),
    .io_o_3_out(cb_4_1_io_o_3_out),
    .io_o_3_co(cb_4_1_io_o_3_co),
    .io_o_4_out(cb_4_1_io_o_4_out),
    .io_o_4_co(cb_4_1_io_o_4_co),
    .io_o_5_out(cb_4_1_io_o_5_out),
    .io_o_5_co(cb_4_1_io_o_5_co),
    .io_o_6_out(cb_4_1_io_o_6_out),
    .io_o_6_co(cb_4_1_io_o_6_co),
    .io_o_7_out(cb_4_1_io_o_7_out),
    .io_o_7_co(cb_4_1_io_o_7_co),
    .io_vi(cb_4_1_io_vi),
    .io_vci(cb_4_1_io_vci),
    .io_vco(cb_4_1_io_vco),
    .io_eo(cb_4_1_io_eo),
    .io_wo(cb_4_1_io_wo),
    .io_cs_i(cb_4_1_io_cs_i),
    .io_we_i(cb_4_1_io_we_i),
    .io_adr_i(cb_4_1_io_adr_i),
    .io_dat_i(cb_4_1_io_dat_i),
    .io_dat_o(cb_4_1_io_dat_o)
  );
  cic_block cb_4_2 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_4_2_wb_clk_i),
    .wb_rst_i(cb_4_2_wb_rst_i),
    .io_i_0_in1(cb_4_2_io_i_0_in1),
    .io_i_0_ci(cb_4_2_io_i_0_ci),
    .io_i_1_in1(cb_4_2_io_i_1_in1),
    .io_i_1_ci(cb_4_2_io_i_1_ci),
    .io_i_2_in1(cb_4_2_io_i_2_in1),
    .io_i_2_ci(cb_4_2_io_i_2_ci),
    .io_i_3_in1(cb_4_2_io_i_3_in1),
    .io_i_3_ci(cb_4_2_io_i_3_ci),
    .io_i_4_in1(cb_4_2_io_i_4_in1),
    .io_i_4_ci(cb_4_2_io_i_4_ci),
    .io_i_5_in1(cb_4_2_io_i_5_in1),
    .io_i_5_ci(cb_4_2_io_i_5_ci),
    .io_i_6_in1(cb_4_2_io_i_6_in1),
    .io_i_6_ci(cb_4_2_io_i_6_ci),
    .io_i_7_in1(cb_4_2_io_i_7_in1),
    .io_i_7_ci(cb_4_2_io_i_7_ci),
    .io_o_0_out(cb_4_2_io_o_0_out),
    .io_o_0_co(cb_4_2_io_o_0_co),
    .io_o_1_out(cb_4_2_io_o_1_out),
    .io_o_1_co(cb_4_2_io_o_1_co),
    .io_o_2_out(cb_4_2_io_o_2_out),
    .io_o_2_co(cb_4_2_io_o_2_co),
    .io_o_3_out(cb_4_2_io_o_3_out),
    .io_o_3_co(cb_4_2_io_o_3_co),
    .io_o_4_out(cb_4_2_io_o_4_out),
    .io_o_4_co(cb_4_2_io_o_4_co),
    .io_o_5_out(cb_4_2_io_o_5_out),
    .io_o_5_co(cb_4_2_io_o_5_co),
    .io_o_6_out(cb_4_2_io_o_6_out),
    .io_o_6_co(cb_4_2_io_o_6_co),
    .io_o_7_out(cb_4_2_io_o_7_out),
    .io_o_7_co(cb_4_2_io_o_7_co),
    .io_vi(cb_4_2_io_vi),
    .io_vci(cb_4_2_io_vci),
    .io_vco(cb_4_2_io_vco),
    .io_eo(cb_4_2_io_eo),
    .io_wo(cb_4_2_io_wo),
    .io_cs_i(cb_4_2_io_cs_i),
    .io_we_i(cb_4_2_io_we_i),
    .io_adr_i(cb_4_2_io_adr_i),
    .io_dat_i(cb_4_2_io_dat_i),
    .io_dat_o(cb_4_2_io_dat_o)
  );
  cic_block cb_4_3 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_4_3_wb_clk_i),
    .wb_rst_i(cb_4_3_wb_rst_i),
    .io_i_0_in1(cb_4_3_io_i_0_in1),
    .io_i_0_ci(cb_4_3_io_i_0_ci),
    .io_i_1_in1(cb_4_3_io_i_1_in1),
    .io_i_1_ci(cb_4_3_io_i_1_ci),
    .io_i_2_in1(cb_4_3_io_i_2_in1),
    .io_i_2_ci(cb_4_3_io_i_2_ci),
    .io_i_3_in1(cb_4_3_io_i_3_in1),
    .io_i_3_ci(cb_4_3_io_i_3_ci),
    .io_i_4_in1(cb_4_3_io_i_4_in1),
    .io_i_4_ci(cb_4_3_io_i_4_ci),
    .io_i_5_in1(cb_4_3_io_i_5_in1),
    .io_i_5_ci(cb_4_3_io_i_5_ci),
    .io_i_6_in1(cb_4_3_io_i_6_in1),
    .io_i_6_ci(cb_4_3_io_i_6_ci),
    .io_i_7_in1(cb_4_3_io_i_7_in1),
    .io_i_7_ci(cb_4_3_io_i_7_ci),
    .io_o_0_out(cb_4_3_io_o_0_out),
    .io_o_0_co(cb_4_3_io_o_0_co),
    .io_o_1_out(cb_4_3_io_o_1_out),
    .io_o_1_co(cb_4_3_io_o_1_co),
    .io_o_2_out(cb_4_3_io_o_2_out),
    .io_o_2_co(cb_4_3_io_o_2_co),
    .io_o_3_out(cb_4_3_io_o_3_out),
    .io_o_3_co(cb_4_3_io_o_3_co),
    .io_o_4_out(cb_4_3_io_o_4_out),
    .io_o_4_co(cb_4_3_io_o_4_co),
    .io_o_5_out(cb_4_3_io_o_5_out),
    .io_o_5_co(cb_4_3_io_o_5_co),
    .io_o_6_out(cb_4_3_io_o_6_out),
    .io_o_6_co(cb_4_3_io_o_6_co),
    .io_o_7_out(cb_4_3_io_o_7_out),
    .io_o_7_co(cb_4_3_io_o_7_co),
    .io_vi(cb_4_3_io_vi),
    .io_vci(cb_4_3_io_vci),
    .io_vco(cb_4_3_io_vco),
    .io_eo(cb_4_3_io_eo),
    .io_wo(cb_4_3_io_wo),
    .io_cs_i(cb_4_3_io_cs_i),
    .io_we_i(cb_4_3_io_we_i),
    .io_adr_i(cb_4_3_io_adr_i),
    .io_dat_i(cb_4_3_io_dat_i),
    .io_dat_o(cb_4_3_io_dat_o)
  );
  cic_block cb_4_4 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_4_4_wb_clk_i),
    .wb_rst_i(cb_4_4_wb_rst_i),
    .io_i_0_in1(cb_4_4_io_i_0_in1),
    .io_i_0_ci(cb_4_4_io_i_0_ci),
    .io_i_1_in1(cb_4_4_io_i_1_in1),
    .io_i_1_ci(cb_4_4_io_i_1_ci),
    .io_i_2_in1(cb_4_4_io_i_2_in1),
    .io_i_2_ci(cb_4_4_io_i_2_ci),
    .io_i_3_in1(cb_4_4_io_i_3_in1),
    .io_i_3_ci(cb_4_4_io_i_3_ci),
    .io_i_4_in1(cb_4_4_io_i_4_in1),
    .io_i_4_ci(cb_4_4_io_i_4_ci),
    .io_i_5_in1(cb_4_4_io_i_5_in1),
    .io_i_5_ci(cb_4_4_io_i_5_ci),
    .io_i_6_in1(cb_4_4_io_i_6_in1),
    .io_i_6_ci(cb_4_4_io_i_6_ci),
    .io_i_7_in1(cb_4_4_io_i_7_in1),
    .io_i_7_ci(cb_4_4_io_i_7_ci),
    .io_o_0_out(cb_4_4_io_o_0_out),
    .io_o_0_co(cb_4_4_io_o_0_co),
    .io_o_1_out(cb_4_4_io_o_1_out),
    .io_o_1_co(cb_4_4_io_o_1_co),
    .io_o_2_out(cb_4_4_io_o_2_out),
    .io_o_2_co(cb_4_4_io_o_2_co),
    .io_o_3_out(cb_4_4_io_o_3_out),
    .io_o_3_co(cb_4_4_io_o_3_co),
    .io_o_4_out(cb_4_4_io_o_4_out),
    .io_o_4_co(cb_4_4_io_o_4_co),
    .io_o_5_out(cb_4_4_io_o_5_out),
    .io_o_5_co(cb_4_4_io_o_5_co),
    .io_o_6_out(cb_4_4_io_o_6_out),
    .io_o_6_co(cb_4_4_io_o_6_co),
    .io_o_7_out(cb_4_4_io_o_7_out),
    .io_o_7_co(cb_4_4_io_o_7_co),
    .io_vi(cb_4_4_io_vi),
    .io_vci(cb_4_4_io_vci),
    .io_vco(cb_4_4_io_vco),
    .io_eo(cb_4_4_io_eo),
    .io_wo(cb_4_4_io_wo),
    .io_cs_i(cb_4_4_io_cs_i),
    .io_we_i(cb_4_4_io_we_i),
    .io_adr_i(cb_4_4_io_adr_i),
    .io_dat_i(cb_4_4_io_dat_i),
    .io_dat_o(cb_4_4_io_dat_o)
  );
  cic_block cb_4_5 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_4_5_wb_clk_i),
    .wb_rst_i(cb_4_5_wb_rst_i),
    .io_i_0_in1(cb_4_5_io_i_0_in1),
    .io_i_0_ci(cb_4_5_io_i_0_ci),
    .io_i_1_in1(cb_4_5_io_i_1_in1),
    .io_i_1_ci(cb_4_5_io_i_1_ci),
    .io_i_2_in1(cb_4_5_io_i_2_in1),
    .io_i_2_ci(cb_4_5_io_i_2_ci),
    .io_i_3_in1(cb_4_5_io_i_3_in1),
    .io_i_3_ci(cb_4_5_io_i_3_ci),
    .io_i_4_in1(cb_4_5_io_i_4_in1),
    .io_i_4_ci(cb_4_5_io_i_4_ci),
    .io_i_5_in1(cb_4_5_io_i_5_in1),
    .io_i_5_ci(cb_4_5_io_i_5_ci),
    .io_i_6_in1(cb_4_5_io_i_6_in1),
    .io_i_6_ci(cb_4_5_io_i_6_ci),
    .io_i_7_in1(cb_4_5_io_i_7_in1),
    .io_i_7_ci(cb_4_5_io_i_7_ci),
    .io_o_0_out(cb_4_5_io_o_0_out),
    .io_o_0_co(cb_4_5_io_o_0_co),
    .io_o_1_out(cb_4_5_io_o_1_out),
    .io_o_1_co(cb_4_5_io_o_1_co),
    .io_o_2_out(cb_4_5_io_o_2_out),
    .io_o_2_co(cb_4_5_io_o_2_co),
    .io_o_3_out(cb_4_5_io_o_3_out),
    .io_o_3_co(cb_4_5_io_o_3_co),
    .io_o_4_out(cb_4_5_io_o_4_out),
    .io_o_4_co(cb_4_5_io_o_4_co),
    .io_o_5_out(cb_4_5_io_o_5_out),
    .io_o_5_co(cb_4_5_io_o_5_co),
    .io_o_6_out(cb_4_5_io_o_6_out),
    .io_o_6_co(cb_4_5_io_o_6_co),
    .io_o_7_out(cb_4_5_io_o_7_out),
    .io_o_7_co(cb_4_5_io_o_7_co),
    .io_vi(cb_4_5_io_vi),
    .io_vci(cb_4_5_io_vci),
    .io_vco(cb_4_5_io_vco),
    .io_eo(cb_4_5_io_eo),
    .io_wo(cb_4_5_io_wo),
    .io_cs_i(cb_4_5_io_cs_i),
    .io_we_i(cb_4_5_io_we_i),
    .io_adr_i(cb_4_5_io_adr_i),
    .io_dat_i(cb_4_5_io_dat_i),
    .io_dat_o(cb_4_5_io_dat_o)
  );
  cic_block cb_4_6 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_4_6_wb_clk_i),
    .wb_rst_i(cb_4_6_wb_rst_i),
    .io_i_0_in1(cb_4_6_io_i_0_in1),
    .io_i_0_ci(cb_4_6_io_i_0_ci),
    .io_i_1_in1(cb_4_6_io_i_1_in1),
    .io_i_1_ci(cb_4_6_io_i_1_ci),
    .io_i_2_in1(cb_4_6_io_i_2_in1),
    .io_i_2_ci(cb_4_6_io_i_2_ci),
    .io_i_3_in1(cb_4_6_io_i_3_in1),
    .io_i_3_ci(cb_4_6_io_i_3_ci),
    .io_i_4_in1(cb_4_6_io_i_4_in1),
    .io_i_4_ci(cb_4_6_io_i_4_ci),
    .io_i_5_in1(cb_4_6_io_i_5_in1),
    .io_i_5_ci(cb_4_6_io_i_5_ci),
    .io_i_6_in1(cb_4_6_io_i_6_in1),
    .io_i_6_ci(cb_4_6_io_i_6_ci),
    .io_i_7_in1(cb_4_6_io_i_7_in1),
    .io_i_7_ci(cb_4_6_io_i_7_ci),
    .io_o_0_out(cb_4_6_io_o_0_out),
    .io_o_0_co(cb_4_6_io_o_0_co),
    .io_o_1_out(cb_4_6_io_o_1_out),
    .io_o_1_co(cb_4_6_io_o_1_co),
    .io_o_2_out(cb_4_6_io_o_2_out),
    .io_o_2_co(cb_4_6_io_o_2_co),
    .io_o_3_out(cb_4_6_io_o_3_out),
    .io_o_3_co(cb_4_6_io_o_3_co),
    .io_o_4_out(cb_4_6_io_o_4_out),
    .io_o_4_co(cb_4_6_io_o_4_co),
    .io_o_5_out(cb_4_6_io_o_5_out),
    .io_o_5_co(cb_4_6_io_o_5_co),
    .io_o_6_out(cb_4_6_io_o_6_out),
    .io_o_6_co(cb_4_6_io_o_6_co),
    .io_o_7_out(cb_4_6_io_o_7_out),
    .io_o_7_co(cb_4_6_io_o_7_co),
    .io_vi(cb_4_6_io_vi),
    .io_vci(cb_4_6_io_vci),
    .io_vco(cb_4_6_io_vco),
    .io_eo(cb_4_6_io_eo),
    .io_wo(cb_4_6_io_wo),
    .io_cs_i(cb_4_6_io_cs_i),
    .io_we_i(cb_4_6_io_we_i),
    .io_adr_i(cb_4_6_io_adr_i),
    .io_dat_i(cb_4_6_io_dat_i),
    .io_dat_o(cb_4_6_io_dat_o)
  );
  cic_block cb_4_7 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_4_7_wb_clk_i),
    .wb_rst_i(cb_4_7_wb_rst_i),
    .io_i_0_in1(cb_4_7_io_i_0_in1),
    .io_i_0_ci(cb_4_7_io_i_0_ci),
    .io_i_1_in1(cb_4_7_io_i_1_in1),
    .io_i_1_ci(cb_4_7_io_i_1_ci),
    .io_i_2_in1(cb_4_7_io_i_2_in1),
    .io_i_2_ci(cb_4_7_io_i_2_ci),
    .io_i_3_in1(cb_4_7_io_i_3_in1),
    .io_i_3_ci(cb_4_7_io_i_3_ci),
    .io_i_4_in1(cb_4_7_io_i_4_in1),
    .io_i_4_ci(cb_4_7_io_i_4_ci),
    .io_i_5_in1(cb_4_7_io_i_5_in1),
    .io_i_5_ci(cb_4_7_io_i_5_ci),
    .io_i_6_in1(cb_4_7_io_i_6_in1),
    .io_i_6_ci(cb_4_7_io_i_6_ci),
    .io_i_7_in1(cb_4_7_io_i_7_in1),
    .io_i_7_ci(cb_4_7_io_i_7_ci),
    .io_o_0_out(cb_4_7_io_o_0_out),
    .io_o_0_co(cb_4_7_io_o_0_co),
    .io_o_1_out(cb_4_7_io_o_1_out),
    .io_o_1_co(cb_4_7_io_o_1_co),
    .io_o_2_out(cb_4_7_io_o_2_out),
    .io_o_2_co(cb_4_7_io_o_2_co),
    .io_o_3_out(cb_4_7_io_o_3_out),
    .io_o_3_co(cb_4_7_io_o_3_co),
    .io_o_4_out(cb_4_7_io_o_4_out),
    .io_o_4_co(cb_4_7_io_o_4_co),
    .io_o_5_out(cb_4_7_io_o_5_out),
    .io_o_5_co(cb_4_7_io_o_5_co),
    .io_o_6_out(cb_4_7_io_o_6_out),
    .io_o_6_co(cb_4_7_io_o_6_co),
    .io_o_7_out(cb_4_7_io_o_7_out),
    .io_o_7_co(cb_4_7_io_o_7_co),
    .io_vi(cb_4_7_io_vi),
    .io_vci(cb_4_7_io_vci),
    .io_vco(cb_4_7_io_vco),
    .io_eo(cb_4_7_io_eo),
    .io_wo(cb_4_7_io_wo),
    .io_cs_i(cb_4_7_io_cs_i),
    .io_we_i(cb_4_7_io_we_i),
    .io_adr_i(cb_4_7_io_adr_i),
    .io_dat_i(cb_4_7_io_dat_i),
    .io_dat_o(cb_4_7_io_dat_o)
  );
  cic_block cb_4_8 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_4_8_wb_clk_i),
    .wb_rst_i(cb_4_8_wb_rst_i),
    .io_i_0_in1(cb_4_8_io_i_0_in1),
    .io_i_0_ci(cb_4_8_io_i_0_ci),
    .io_i_1_in1(cb_4_8_io_i_1_in1),
    .io_i_1_ci(cb_4_8_io_i_1_ci),
    .io_i_2_in1(cb_4_8_io_i_2_in1),
    .io_i_2_ci(cb_4_8_io_i_2_ci),
    .io_i_3_in1(cb_4_8_io_i_3_in1),
    .io_i_3_ci(cb_4_8_io_i_3_ci),
    .io_i_4_in1(cb_4_8_io_i_4_in1),
    .io_i_4_ci(cb_4_8_io_i_4_ci),
    .io_i_5_in1(cb_4_8_io_i_5_in1),
    .io_i_5_ci(cb_4_8_io_i_5_ci),
    .io_i_6_in1(cb_4_8_io_i_6_in1),
    .io_i_6_ci(cb_4_8_io_i_6_ci),
    .io_i_7_in1(cb_4_8_io_i_7_in1),
    .io_i_7_ci(cb_4_8_io_i_7_ci),
    .io_o_0_out(cb_4_8_io_o_0_out),
    .io_o_0_co(cb_4_8_io_o_0_co),
    .io_o_1_out(cb_4_8_io_o_1_out),
    .io_o_1_co(cb_4_8_io_o_1_co),
    .io_o_2_out(cb_4_8_io_o_2_out),
    .io_o_2_co(cb_4_8_io_o_2_co),
    .io_o_3_out(cb_4_8_io_o_3_out),
    .io_o_3_co(cb_4_8_io_o_3_co),
    .io_o_4_out(cb_4_8_io_o_4_out),
    .io_o_4_co(cb_4_8_io_o_4_co),
    .io_o_5_out(cb_4_8_io_o_5_out),
    .io_o_5_co(cb_4_8_io_o_5_co),
    .io_o_6_out(cb_4_8_io_o_6_out),
    .io_o_6_co(cb_4_8_io_o_6_co),
    .io_o_7_out(cb_4_8_io_o_7_out),
    .io_o_7_co(cb_4_8_io_o_7_co),
    .io_vi(cb_4_8_io_vi),
    .io_vci(cb_4_8_io_vci),
    .io_vco(cb_4_8_io_vco),
    .io_eo(cb_4_8_io_eo),
    .io_wo(cb_4_8_io_wo),
    .io_cs_i(cb_4_8_io_cs_i),
    .io_we_i(cb_4_8_io_we_i),
    .io_adr_i(cb_4_8_io_adr_i),
    .io_dat_i(cb_4_8_io_dat_i),
    .io_dat_o(cb_4_8_io_dat_o)
  );
  cic_block cb_4_9 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_4_9_wb_clk_i),
    .wb_rst_i(cb_4_9_wb_rst_i),
    .io_i_0_in1(cb_4_9_io_i_0_in1),
    .io_i_0_ci(cb_4_9_io_i_0_ci),
    .io_i_1_in1(cb_4_9_io_i_1_in1),
    .io_i_1_ci(cb_4_9_io_i_1_ci),
    .io_i_2_in1(cb_4_9_io_i_2_in1),
    .io_i_2_ci(cb_4_9_io_i_2_ci),
    .io_i_3_in1(cb_4_9_io_i_3_in1),
    .io_i_3_ci(cb_4_9_io_i_3_ci),
    .io_i_4_in1(cb_4_9_io_i_4_in1),
    .io_i_4_ci(cb_4_9_io_i_4_ci),
    .io_i_5_in1(cb_4_9_io_i_5_in1),
    .io_i_5_ci(cb_4_9_io_i_5_ci),
    .io_i_6_in1(cb_4_9_io_i_6_in1),
    .io_i_6_ci(cb_4_9_io_i_6_ci),
    .io_i_7_in1(cb_4_9_io_i_7_in1),
    .io_i_7_ci(cb_4_9_io_i_7_ci),
    .io_o_0_out(cb_4_9_io_o_0_out),
    .io_o_0_co(cb_4_9_io_o_0_co),
    .io_o_1_out(cb_4_9_io_o_1_out),
    .io_o_1_co(cb_4_9_io_o_1_co),
    .io_o_2_out(cb_4_9_io_o_2_out),
    .io_o_2_co(cb_4_9_io_o_2_co),
    .io_o_3_out(cb_4_9_io_o_3_out),
    .io_o_3_co(cb_4_9_io_o_3_co),
    .io_o_4_out(cb_4_9_io_o_4_out),
    .io_o_4_co(cb_4_9_io_o_4_co),
    .io_o_5_out(cb_4_9_io_o_5_out),
    .io_o_5_co(cb_4_9_io_o_5_co),
    .io_o_6_out(cb_4_9_io_o_6_out),
    .io_o_6_co(cb_4_9_io_o_6_co),
    .io_o_7_out(cb_4_9_io_o_7_out),
    .io_o_7_co(cb_4_9_io_o_7_co),
    .io_vi(cb_4_9_io_vi),
    .io_vci(cb_4_9_io_vci),
    .io_vco(cb_4_9_io_vco),
    .io_eo(cb_4_9_io_eo),
    .io_wo(cb_4_9_io_wo),
    .io_cs_i(cb_4_9_io_cs_i),
    .io_we_i(cb_4_9_io_we_i),
    .io_adr_i(cb_4_9_io_adr_i),
    .io_dat_i(cb_4_9_io_dat_i),
    .io_dat_o(cb_4_9_io_dat_o)
  );
  cic_block cb_4_10 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_4_10_wb_clk_i),
    .wb_rst_i(cb_4_10_wb_rst_i),
    .io_i_0_in1(cb_4_10_io_i_0_in1),
    .io_i_0_ci(cb_4_10_io_i_0_ci),
    .io_i_1_in1(cb_4_10_io_i_1_in1),
    .io_i_1_ci(cb_4_10_io_i_1_ci),
    .io_i_2_in1(cb_4_10_io_i_2_in1),
    .io_i_2_ci(cb_4_10_io_i_2_ci),
    .io_i_3_in1(cb_4_10_io_i_3_in1),
    .io_i_3_ci(cb_4_10_io_i_3_ci),
    .io_i_4_in1(cb_4_10_io_i_4_in1),
    .io_i_4_ci(cb_4_10_io_i_4_ci),
    .io_i_5_in1(cb_4_10_io_i_5_in1),
    .io_i_5_ci(cb_4_10_io_i_5_ci),
    .io_i_6_in1(cb_4_10_io_i_6_in1),
    .io_i_6_ci(cb_4_10_io_i_6_ci),
    .io_i_7_in1(cb_4_10_io_i_7_in1),
    .io_i_7_ci(cb_4_10_io_i_7_ci),
    .io_o_0_out(cb_4_10_io_o_0_out),
    .io_o_0_co(cb_4_10_io_o_0_co),
    .io_o_1_out(cb_4_10_io_o_1_out),
    .io_o_1_co(cb_4_10_io_o_1_co),
    .io_o_2_out(cb_4_10_io_o_2_out),
    .io_o_2_co(cb_4_10_io_o_2_co),
    .io_o_3_out(cb_4_10_io_o_3_out),
    .io_o_3_co(cb_4_10_io_o_3_co),
    .io_o_4_out(cb_4_10_io_o_4_out),
    .io_o_4_co(cb_4_10_io_o_4_co),
    .io_o_5_out(cb_4_10_io_o_5_out),
    .io_o_5_co(cb_4_10_io_o_5_co),
    .io_o_6_out(cb_4_10_io_o_6_out),
    .io_o_6_co(cb_4_10_io_o_6_co),
    .io_o_7_out(cb_4_10_io_o_7_out),
    .io_o_7_co(cb_4_10_io_o_7_co),
    .io_vi(cb_4_10_io_vi),
    .io_vci(cb_4_10_io_vci),
    .io_vco(cb_4_10_io_vco),
    .io_eo(cb_4_10_io_eo),
    .io_wo(cb_4_10_io_wo),
    .io_cs_i(cb_4_10_io_cs_i),
    .io_we_i(cb_4_10_io_we_i),
    .io_adr_i(cb_4_10_io_adr_i),
    .io_dat_i(cb_4_10_io_dat_i),
    .io_dat_o(cb_4_10_io_dat_o)
  );
  cic_con ccon_5 ( // @[UserProjectWrapper.scala 80:19]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(ccon_5_wb_clk_i),
    .wb_rst_i(ccon_5_wb_rst_i),
    .io_cs_i(ccon_5_io_cs_i),
    .io_ack_o(ccon_5_io_ack_o),
    .io_we_i(ccon_5_io_we_i),
    .io_adr_i(ccon_5_io_adr_i),
    .io_dat_i(ccon_5_io_dat_i),
    .io_dat_o(ccon_5_io_dat_o),
    .io_dsi_in(ccon_5_io_dsi_in),
    .io_dataLastBlock(ccon_5_io_dataLastBlock),
    .io_dsi_o(ccon_5_io_dsi_o),
    .io_b_cs_i_0(ccon_5_io_b_cs_i_0),
    .io_b_cs_i_1(ccon_5_io_b_cs_i_1),
    .io_b_cs_i_2(ccon_5_io_b_cs_i_2),
    .io_b_cs_i_3(ccon_5_io_b_cs_i_3),
    .io_b_cs_i_4(ccon_5_io_b_cs_i_4),
    .io_b_cs_i_5(ccon_5_io_b_cs_i_5),
    .io_b_cs_i_6(ccon_5_io_b_cs_i_6),
    .io_b_cs_i_7(ccon_5_io_b_cs_i_7),
    .io_b_cs_i_8(ccon_5_io_b_cs_i_8),
    .io_b_cs_i_9(ccon_5_io_b_cs_i_9),
    .io_b_cs_i_10(ccon_5_io_b_cs_i_10),
    .io_b_we_i(ccon_5_io_b_we_i),
    .io_b_adr_i(ccon_5_io_b_adr_i),
    .io_b_dat_i(ccon_5_io_b_dat_i),
    .io_b_dat_o_0(ccon_5_io_b_dat_o_0),
    .io_b_dat_o_1(ccon_5_io_b_dat_o_1),
    .io_b_dat_o_2(ccon_5_io_b_dat_o_2),
    .io_b_dat_o_3(ccon_5_io_b_dat_o_3),
    .io_b_dat_o_4(ccon_5_io_b_dat_o_4),
    .io_b_dat_o_5(ccon_5_io_b_dat_o_5),
    .io_b_dat_o_6(ccon_5_io_b_dat_o_6),
    .io_b_dat_o_7(ccon_5_io_b_dat_o_7),
    .io_b_dat_o_8(ccon_5_io_b_dat_o_8),
    .io_b_dat_o_9(ccon_5_io_b_dat_o_9),
    .io_b_dat_o_10(ccon_5_io_b_dat_o_10),
    .io_vout(ccon_5_io_vout),
    .io_irq(ccon_5_io_irq),
    .io_sync_out(ccon_5_io_sync_out)
  );
  cic_block cb_5_0 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_5_0_wb_clk_i),
    .wb_rst_i(cb_5_0_wb_rst_i),
    .io_i_0_in1(cb_5_0_io_i_0_in1),
    .io_i_0_ci(cb_5_0_io_i_0_ci),
    .io_i_1_in1(cb_5_0_io_i_1_in1),
    .io_i_1_ci(cb_5_0_io_i_1_ci),
    .io_i_2_in1(cb_5_0_io_i_2_in1),
    .io_i_2_ci(cb_5_0_io_i_2_ci),
    .io_i_3_in1(cb_5_0_io_i_3_in1),
    .io_i_3_ci(cb_5_0_io_i_3_ci),
    .io_i_4_in1(cb_5_0_io_i_4_in1),
    .io_i_4_ci(cb_5_0_io_i_4_ci),
    .io_i_5_in1(cb_5_0_io_i_5_in1),
    .io_i_5_ci(cb_5_0_io_i_5_ci),
    .io_i_6_in1(cb_5_0_io_i_6_in1),
    .io_i_6_ci(cb_5_0_io_i_6_ci),
    .io_i_7_in1(cb_5_0_io_i_7_in1),
    .io_i_7_ci(cb_5_0_io_i_7_ci),
    .io_o_0_out(cb_5_0_io_o_0_out),
    .io_o_0_co(cb_5_0_io_o_0_co),
    .io_o_1_out(cb_5_0_io_o_1_out),
    .io_o_1_co(cb_5_0_io_o_1_co),
    .io_o_2_out(cb_5_0_io_o_2_out),
    .io_o_2_co(cb_5_0_io_o_2_co),
    .io_o_3_out(cb_5_0_io_o_3_out),
    .io_o_3_co(cb_5_0_io_o_3_co),
    .io_o_4_out(cb_5_0_io_o_4_out),
    .io_o_4_co(cb_5_0_io_o_4_co),
    .io_o_5_out(cb_5_0_io_o_5_out),
    .io_o_5_co(cb_5_0_io_o_5_co),
    .io_o_6_out(cb_5_0_io_o_6_out),
    .io_o_6_co(cb_5_0_io_o_6_co),
    .io_o_7_out(cb_5_0_io_o_7_out),
    .io_o_7_co(cb_5_0_io_o_7_co),
    .io_vi(cb_5_0_io_vi),
    .io_vci(cb_5_0_io_vci),
    .io_vco(cb_5_0_io_vco),
    .io_eo(cb_5_0_io_eo),
    .io_wo(cb_5_0_io_wo),
    .io_cs_i(cb_5_0_io_cs_i),
    .io_we_i(cb_5_0_io_we_i),
    .io_adr_i(cb_5_0_io_adr_i),
    .io_dat_i(cb_5_0_io_dat_i),
    .io_dat_o(cb_5_0_io_dat_o)
  );
  cic_block cb_5_1 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_5_1_wb_clk_i),
    .wb_rst_i(cb_5_1_wb_rst_i),
    .io_i_0_in1(cb_5_1_io_i_0_in1),
    .io_i_0_ci(cb_5_1_io_i_0_ci),
    .io_i_1_in1(cb_5_1_io_i_1_in1),
    .io_i_1_ci(cb_5_1_io_i_1_ci),
    .io_i_2_in1(cb_5_1_io_i_2_in1),
    .io_i_2_ci(cb_5_1_io_i_2_ci),
    .io_i_3_in1(cb_5_1_io_i_3_in1),
    .io_i_3_ci(cb_5_1_io_i_3_ci),
    .io_i_4_in1(cb_5_1_io_i_4_in1),
    .io_i_4_ci(cb_5_1_io_i_4_ci),
    .io_i_5_in1(cb_5_1_io_i_5_in1),
    .io_i_5_ci(cb_5_1_io_i_5_ci),
    .io_i_6_in1(cb_5_1_io_i_6_in1),
    .io_i_6_ci(cb_5_1_io_i_6_ci),
    .io_i_7_in1(cb_5_1_io_i_7_in1),
    .io_i_7_ci(cb_5_1_io_i_7_ci),
    .io_o_0_out(cb_5_1_io_o_0_out),
    .io_o_0_co(cb_5_1_io_o_0_co),
    .io_o_1_out(cb_5_1_io_o_1_out),
    .io_o_1_co(cb_5_1_io_o_1_co),
    .io_o_2_out(cb_5_1_io_o_2_out),
    .io_o_2_co(cb_5_1_io_o_2_co),
    .io_o_3_out(cb_5_1_io_o_3_out),
    .io_o_3_co(cb_5_1_io_o_3_co),
    .io_o_4_out(cb_5_1_io_o_4_out),
    .io_o_4_co(cb_5_1_io_o_4_co),
    .io_o_5_out(cb_5_1_io_o_5_out),
    .io_o_5_co(cb_5_1_io_o_5_co),
    .io_o_6_out(cb_5_1_io_o_6_out),
    .io_o_6_co(cb_5_1_io_o_6_co),
    .io_o_7_out(cb_5_1_io_o_7_out),
    .io_o_7_co(cb_5_1_io_o_7_co),
    .io_vi(cb_5_1_io_vi),
    .io_vci(cb_5_1_io_vci),
    .io_vco(cb_5_1_io_vco),
    .io_eo(cb_5_1_io_eo),
    .io_wo(cb_5_1_io_wo),
    .io_cs_i(cb_5_1_io_cs_i),
    .io_we_i(cb_5_1_io_we_i),
    .io_adr_i(cb_5_1_io_adr_i),
    .io_dat_i(cb_5_1_io_dat_i),
    .io_dat_o(cb_5_1_io_dat_o)
  );
  cic_block cb_5_2 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_5_2_wb_clk_i),
    .wb_rst_i(cb_5_2_wb_rst_i),
    .io_i_0_in1(cb_5_2_io_i_0_in1),
    .io_i_0_ci(cb_5_2_io_i_0_ci),
    .io_i_1_in1(cb_5_2_io_i_1_in1),
    .io_i_1_ci(cb_5_2_io_i_1_ci),
    .io_i_2_in1(cb_5_2_io_i_2_in1),
    .io_i_2_ci(cb_5_2_io_i_2_ci),
    .io_i_3_in1(cb_5_2_io_i_3_in1),
    .io_i_3_ci(cb_5_2_io_i_3_ci),
    .io_i_4_in1(cb_5_2_io_i_4_in1),
    .io_i_4_ci(cb_5_2_io_i_4_ci),
    .io_i_5_in1(cb_5_2_io_i_5_in1),
    .io_i_5_ci(cb_5_2_io_i_5_ci),
    .io_i_6_in1(cb_5_2_io_i_6_in1),
    .io_i_6_ci(cb_5_2_io_i_6_ci),
    .io_i_7_in1(cb_5_2_io_i_7_in1),
    .io_i_7_ci(cb_5_2_io_i_7_ci),
    .io_o_0_out(cb_5_2_io_o_0_out),
    .io_o_0_co(cb_5_2_io_o_0_co),
    .io_o_1_out(cb_5_2_io_o_1_out),
    .io_o_1_co(cb_5_2_io_o_1_co),
    .io_o_2_out(cb_5_2_io_o_2_out),
    .io_o_2_co(cb_5_2_io_o_2_co),
    .io_o_3_out(cb_5_2_io_o_3_out),
    .io_o_3_co(cb_5_2_io_o_3_co),
    .io_o_4_out(cb_5_2_io_o_4_out),
    .io_o_4_co(cb_5_2_io_o_4_co),
    .io_o_5_out(cb_5_2_io_o_5_out),
    .io_o_5_co(cb_5_2_io_o_5_co),
    .io_o_6_out(cb_5_2_io_o_6_out),
    .io_o_6_co(cb_5_2_io_o_6_co),
    .io_o_7_out(cb_5_2_io_o_7_out),
    .io_o_7_co(cb_5_2_io_o_7_co),
    .io_vi(cb_5_2_io_vi),
    .io_vci(cb_5_2_io_vci),
    .io_vco(cb_5_2_io_vco),
    .io_eo(cb_5_2_io_eo),
    .io_wo(cb_5_2_io_wo),
    .io_cs_i(cb_5_2_io_cs_i),
    .io_we_i(cb_5_2_io_we_i),
    .io_adr_i(cb_5_2_io_adr_i),
    .io_dat_i(cb_5_2_io_dat_i),
    .io_dat_o(cb_5_2_io_dat_o)
  );
  cic_block cb_5_3 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_5_3_wb_clk_i),
    .wb_rst_i(cb_5_3_wb_rst_i),
    .io_i_0_in1(cb_5_3_io_i_0_in1),
    .io_i_0_ci(cb_5_3_io_i_0_ci),
    .io_i_1_in1(cb_5_3_io_i_1_in1),
    .io_i_1_ci(cb_5_3_io_i_1_ci),
    .io_i_2_in1(cb_5_3_io_i_2_in1),
    .io_i_2_ci(cb_5_3_io_i_2_ci),
    .io_i_3_in1(cb_5_3_io_i_3_in1),
    .io_i_3_ci(cb_5_3_io_i_3_ci),
    .io_i_4_in1(cb_5_3_io_i_4_in1),
    .io_i_4_ci(cb_5_3_io_i_4_ci),
    .io_i_5_in1(cb_5_3_io_i_5_in1),
    .io_i_5_ci(cb_5_3_io_i_5_ci),
    .io_i_6_in1(cb_5_3_io_i_6_in1),
    .io_i_6_ci(cb_5_3_io_i_6_ci),
    .io_i_7_in1(cb_5_3_io_i_7_in1),
    .io_i_7_ci(cb_5_3_io_i_7_ci),
    .io_o_0_out(cb_5_3_io_o_0_out),
    .io_o_0_co(cb_5_3_io_o_0_co),
    .io_o_1_out(cb_5_3_io_o_1_out),
    .io_o_1_co(cb_5_3_io_o_1_co),
    .io_o_2_out(cb_5_3_io_o_2_out),
    .io_o_2_co(cb_5_3_io_o_2_co),
    .io_o_3_out(cb_5_3_io_o_3_out),
    .io_o_3_co(cb_5_3_io_o_3_co),
    .io_o_4_out(cb_5_3_io_o_4_out),
    .io_o_4_co(cb_5_3_io_o_4_co),
    .io_o_5_out(cb_5_3_io_o_5_out),
    .io_o_5_co(cb_5_3_io_o_5_co),
    .io_o_6_out(cb_5_3_io_o_6_out),
    .io_o_6_co(cb_5_3_io_o_6_co),
    .io_o_7_out(cb_5_3_io_o_7_out),
    .io_o_7_co(cb_5_3_io_o_7_co),
    .io_vi(cb_5_3_io_vi),
    .io_vci(cb_5_3_io_vci),
    .io_vco(cb_5_3_io_vco),
    .io_eo(cb_5_3_io_eo),
    .io_wo(cb_5_3_io_wo),
    .io_cs_i(cb_5_3_io_cs_i),
    .io_we_i(cb_5_3_io_we_i),
    .io_adr_i(cb_5_3_io_adr_i),
    .io_dat_i(cb_5_3_io_dat_i),
    .io_dat_o(cb_5_3_io_dat_o)
  );
  cic_block cb_5_4 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_5_4_wb_clk_i),
    .wb_rst_i(cb_5_4_wb_rst_i),
    .io_i_0_in1(cb_5_4_io_i_0_in1),
    .io_i_0_ci(cb_5_4_io_i_0_ci),
    .io_i_1_in1(cb_5_4_io_i_1_in1),
    .io_i_1_ci(cb_5_4_io_i_1_ci),
    .io_i_2_in1(cb_5_4_io_i_2_in1),
    .io_i_2_ci(cb_5_4_io_i_2_ci),
    .io_i_3_in1(cb_5_4_io_i_3_in1),
    .io_i_3_ci(cb_5_4_io_i_3_ci),
    .io_i_4_in1(cb_5_4_io_i_4_in1),
    .io_i_4_ci(cb_5_4_io_i_4_ci),
    .io_i_5_in1(cb_5_4_io_i_5_in1),
    .io_i_5_ci(cb_5_4_io_i_5_ci),
    .io_i_6_in1(cb_5_4_io_i_6_in1),
    .io_i_6_ci(cb_5_4_io_i_6_ci),
    .io_i_7_in1(cb_5_4_io_i_7_in1),
    .io_i_7_ci(cb_5_4_io_i_7_ci),
    .io_o_0_out(cb_5_4_io_o_0_out),
    .io_o_0_co(cb_5_4_io_o_0_co),
    .io_o_1_out(cb_5_4_io_o_1_out),
    .io_o_1_co(cb_5_4_io_o_1_co),
    .io_o_2_out(cb_5_4_io_o_2_out),
    .io_o_2_co(cb_5_4_io_o_2_co),
    .io_o_3_out(cb_5_4_io_o_3_out),
    .io_o_3_co(cb_5_4_io_o_3_co),
    .io_o_4_out(cb_5_4_io_o_4_out),
    .io_o_4_co(cb_5_4_io_o_4_co),
    .io_o_5_out(cb_5_4_io_o_5_out),
    .io_o_5_co(cb_5_4_io_o_5_co),
    .io_o_6_out(cb_5_4_io_o_6_out),
    .io_o_6_co(cb_5_4_io_o_6_co),
    .io_o_7_out(cb_5_4_io_o_7_out),
    .io_o_7_co(cb_5_4_io_o_7_co),
    .io_vi(cb_5_4_io_vi),
    .io_vci(cb_5_4_io_vci),
    .io_vco(cb_5_4_io_vco),
    .io_eo(cb_5_4_io_eo),
    .io_wo(cb_5_4_io_wo),
    .io_cs_i(cb_5_4_io_cs_i),
    .io_we_i(cb_5_4_io_we_i),
    .io_adr_i(cb_5_4_io_adr_i),
    .io_dat_i(cb_5_4_io_dat_i),
    .io_dat_o(cb_5_4_io_dat_o)
  );
  cic_block cb_5_5 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_5_5_wb_clk_i),
    .wb_rst_i(cb_5_5_wb_rst_i),
    .io_i_0_in1(cb_5_5_io_i_0_in1),
    .io_i_0_ci(cb_5_5_io_i_0_ci),
    .io_i_1_in1(cb_5_5_io_i_1_in1),
    .io_i_1_ci(cb_5_5_io_i_1_ci),
    .io_i_2_in1(cb_5_5_io_i_2_in1),
    .io_i_2_ci(cb_5_5_io_i_2_ci),
    .io_i_3_in1(cb_5_5_io_i_3_in1),
    .io_i_3_ci(cb_5_5_io_i_3_ci),
    .io_i_4_in1(cb_5_5_io_i_4_in1),
    .io_i_4_ci(cb_5_5_io_i_4_ci),
    .io_i_5_in1(cb_5_5_io_i_5_in1),
    .io_i_5_ci(cb_5_5_io_i_5_ci),
    .io_i_6_in1(cb_5_5_io_i_6_in1),
    .io_i_6_ci(cb_5_5_io_i_6_ci),
    .io_i_7_in1(cb_5_5_io_i_7_in1),
    .io_i_7_ci(cb_5_5_io_i_7_ci),
    .io_o_0_out(cb_5_5_io_o_0_out),
    .io_o_0_co(cb_5_5_io_o_0_co),
    .io_o_1_out(cb_5_5_io_o_1_out),
    .io_o_1_co(cb_5_5_io_o_1_co),
    .io_o_2_out(cb_5_5_io_o_2_out),
    .io_o_2_co(cb_5_5_io_o_2_co),
    .io_o_3_out(cb_5_5_io_o_3_out),
    .io_o_3_co(cb_5_5_io_o_3_co),
    .io_o_4_out(cb_5_5_io_o_4_out),
    .io_o_4_co(cb_5_5_io_o_4_co),
    .io_o_5_out(cb_5_5_io_o_5_out),
    .io_o_5_co(cb_5_5_io_o_5_co),
    .io_o_6_out(cb_5_5_io_o_6_out),
    .io_o_6_co(cb_5_5_io_o_6_co),
    .io_o_7_out(cb_5_5_io_o_7_out),
    .io_o_7_co(cb_5_5_io_o_7_co),
    .io_vi(cb_5_5_io_vi),
    .io_vci(cb_5_5_io_vci),
    .io_vco(cb_5_5_io_vco),
    .io_eo(cb_5_5_io_eo),
    .io_wo(cb_5_5_io_wo),
    .io_cs_i(cb_5_5_io_cs_i),
    .io_we_i(cb_5_5_io_we_i),
    .io_adr_i(cb_5_5_io_adr_i),
    .io_dat_i(cb_5_5_io_dat_i),
    .io_dat_o(cb_5_5_io_dat_o)
  );
  cic_block cb_5_6 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_5_6_wb_clk_i),
    .wb_rst_i(cb_5_6_wb_rst_i),
    .io_i_0_in1(cb_5_6_io_i_0_in1),
    .io_i_0_ci(cb_5_6_io_i_0_ci),
    .io_i_1_in1(cb_5_6_io_i_1_in1),
    .io_i_1_ci(cb_5_6_io_i_1_ci),
    .io_i_2_in1(cb_5_6_io_i_2_in1),
    .io_i_2_ci(cb_5_6_io_i_2_ci),
    .io_i_3_in1(cb_5_6_io_i_3_in1),
    .io_i_3_ci(cb_5_6_io_i_3_ci),
    .io_i_4_in1(cb_5_6_io_i_4_in1),
    .io_i_4_ci(cb_5_6_io_i_4_ci),
    .io_i_5_in1(cb_5_6_io_i_5_in1),
    .io_i_5_ci(cb_5_6_io_i_5_ci),
    .io_i_6_in1(cb_5_6_io_i_6_in1),
    .io_i_6_ci(cb_5_6_io_i_6_ci),
    .io_i_7_in1(cb_5_6_io_i_7_in1),
    .io_i_7_ci(cb_5_6_io_i_7_ci),
    .io_o_0_out(cb_5_6_io_o_0_out),
    .io_o_0_co(cb_5_6_io_o_0_co),
    .io_o_1_out(cb_5_6_io_o_1_out),
    .io_o_1_co(cb_5_6_io_o_1_co),
    .io_o_2_out(cb_5_6_io_o_2_out),
    .io_o_2_co(cb_5_6_io_o_2_co),
    .io_o_3_out(cb_5_6_io_o_3_out),
    .io_o_3_co(cb_5_6_io_o_3_co),
    .io_o_4_out(cb_5_6_io_o_4_out),
    .io_o_4_co(cb_5_6_io_o_4_co),
    .io_o_5_out(cb_5_6_io_o_5_out),
    .io_o_5_co(cb_5_6_io_o_5_co),
    .io_o_6_out(cb_5_6_io_o_6_out),
    .io_o_6_co(cb_5_6_io_o_6_co),
    .io_o_7_out(cb_5_6_io_o_7_out),
    .io_o_7_co(cb_5_6_io_o_7_co),
    .io_vi(cb_5_6_io_vi),
    .io_vci(cb_5_6_io_vci),
    .io_vco(cb_5_6_io_vco),
    .io_eo(cb_5_6_io_eo),
    .io_wo(cb_5_6_io_wo),
    .io_cs_i(cb_5_6_io_cs_i),
    .io_we_i(cb_5_6_io_we_i),
    .io_adr_i(cb_5_6_io_adr_i),
    .io_dat_i(cb_5_6_io_dat_i),
    .io_dat_o(cb_5_6_io_dat_o)
  );
  cic_block cb_5_7 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_5_7_wb_clk_i),
    .wb_rst_i(cb_5_7_wb_rst_i),
    .io_i_0_in1(cb_5_7_io_i_0_in1),
    .io_i_0_ci(cb_5_7_io_i_0_ci),
    .io_i_1_in1(cb_5_7_io_i_1_in1),
    .io_i_1_ci(cb_5_7_io_i_1_ci),
    .io_i_2_in1(cb_5_7_io_i_2_in1),
    .io_i_2_ci(cb_5_7_io_i_2_ci),
    .io_i_3_in1(cb_5_7_io_i_3_in1),
    .io_i_3_ci(cb_5_7_io_i_3_ci),
    .io_i_4_in1(cb_5_7_io_i_4_in1),
    .io_i_4_ci(cb_5_7_io_i_4_ci),
    .io_i_5_in1(cb_5_7_io_i_5_in1),
    .io_i_5_ci(cb_5_7_io_i_5_ci),
    .io_i_6_in1(cb_5_7_io_i_6_in1),
    .io_i_6_ci(cb_5_7_io_i_6_ci),
    .io_i_7_in1(cb_5_7_io_i_7_in1),
    .io_i_7_ci(cb_5_7_io_i_7_ci),
    .io_o_0_out(cb_5_7_io_o_0_out),
    .io_o_0_co(cb_5_7_io_o_0_co),
    .io_o_1_out(cb_5_7_io_o_1_out),
    .io_o_1_co(cb_5_7_io_o_1_co),
    .io_o_2_out(cb_5_7_io_o_2_out),
    .io_o_2_co(cb_5_7_io_o_2_co),
    .io_o_3_out(cb_5_7_io_o_3_out),
    .io_o_3_co(cb_5_7_io_o_3_co),
    .io_o_4_out(cb_5_7_io_o_4_out),
    .io_o_4_co(cb_5_7_io_o_4_co),
    .io_o_5_out(cb_5_7_io_o_5_out),
    .io_o_5_co(cb_5_7_io_o_5_co),
    .io_o_6_out(cb_5_7_io_o_6_out),
    .io_o_6_co(cb_5_7_io_o_6_co),
    .io_o_7_out(cb_5_7_io_o_7_out),
    .io_o_7_co(cb_5_7_io_o_7_co),
    .io_vi(cb_5_7_io_vi),
    .io_vci(cb_5_7_io_vci),
    .io_vco(cb_5_7_io_vco),
    .io_eo(cb_5_7_io_eo),
    .io_wo(cb_5_7_io_wo),
    .io_cs_i(cb_5_7_io_cs_i),
    .io_we_i(cb_5_7_io_we_i),
    .io_adr_i(cb_5_7_io_adr_i),
    .io_dat_i(cb_5_7_io_dat_i),
    .io_dat_o(cb_5_7_io_dat_o)
  );
  cic_block cb_5_8 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_5_8_wb_clk_i),
    .wb_rst_i(cb_5_8_wb_rst_i),
    .io_i_0_in1(cb_5_8_io_i_0_in1),
    .io_i_0_ci(cb_5_8_io_i_0_ci),
    .io_i_1_in1(cb_5_8_io_i_1_in1),
    .io_i_1_ci(cb_5_8_io_i_1_ci),
    .io_i_2_in1(cb_5_8_io_i_2_in1),
    .io_i_2_ci(cb_5_8_io_i_2_ci),
    .io_i_3_in1(cb_5_8_io_i_3_in1),
    .io_i_3_ci(cb_5_8_io_i_3_ci),
    .io_i_4_in1(cb_5_8_io_i_4_in1),
    .io_i_4_ci(cb_5_8_io_i_4_ci),
    .io_i_5_in1(cb_5_8_io_i_5_in1),
    .io_i_5_ci(cb_5_8_io_i_5_ci),
    .io_i_6_in1(cb_5_8_io_i_6_in1),
    .io_i_6_ci(cb_5_8_io_i_6_ci),
    .io_i_7_in1(cb_5_8_io_i_7_in1),
    .io_i_7_ci(cb_5_8_io_i_7_ci),
    .io_o_0_out(cb_5_8_io_o_0_out),
    .io_o_0_co(cb_5_8_io_o_0_co),
    .io_o_1_out(cb_5_8_io_o_1_out),
    .io_o_1_co(cb_5_8_io_o_1_co),
    .io_o_2_out(cb_5_8_io_o_2_out),
    .io_o_2_co(cb_5_8_io_o_2_co),
    .io_o_3_out(cb_5_8_io_o_3_out),
    .io_o_3_co(cb_5_8_io_o_3_co),
    .io_o_4_out(cb_5_8_io_o_4_out),
    .io_o_4_co(cb_5_8_io_o_4_co),
    .io_o_5_out(cb_5_8_io_o_5_out),
    .io_o_5_co(cb_5_8_io_o_5_co),
    .io_o_6_out(cb_5_8_io_o_6_out),
    .io_o_6_co(cb_5_8_io_o_6_co),
    .io_o_7_out(cb_5_8_io_o_7_out),
    .io_o_7_co(cb_5_8_io_o_7_co),
    .io_vi(cb_5_8_io_vi),
    .io_vci(cb_5_8_io_vci),
    .io_vco(cb_5_8_io_vco),
    .io_eo(cb_5_8_io_eo),
    .io_wo(cb_5_8_io_wo),
    .io_cs_i(cb_5_8_io_cs_i),
    .io_we_i(cb_5_8_io_we_i),
    .io_adr_i(cb_5_8_io_adr_i),
    .io_dat_i(cb_5_8_io_dat_i),
    .io_dat_o(cb_5_8_io_dat_o)
  );
  cic_block cb_5_9 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_5_9_wb_clk_i),
    .wb_rst_i(cb_5_9_wb_rst_i),
    .io_i_0_in1(cb_5_9_io_i_0_in1),
    .io_i_0_ci(cb_5_9_io_i_0_ci),
    .io_i_1_in1(cb_5_9_io_i_1_in1),
    .io_i_1_ci(cb_5_9_io_i_1_ci),
    .io_i_2_in1(cb_5_9_io_i_2_in1),
    .io_i_2_ci(cb_5_9_io_i_2_ci),
    .io_i_3_in1(cb_5_9_io_i_3_in1),
    .io_i_3_ci(cb_5_9_io_i_3_ci),
    .io_i_4_in1(cb_5_9_io_i_4_in1),
    .io_i_4_ci(cb_5_9_io_i_4_ci),
    .io_i_5_in1(cb_5_9_io_i_5_in1),
    .io_i_5_ci(cb_5_9_io_i_5_ci),
    .io_i_6_in1(cb_5_9_io_i_6_in1),
    .io_i_6_ci(cb_5_9_io_i_6_ci),
    .io_i_7_in1(cb_5_9_io_i_7_in1),
    .io_i_7_ci(cb_5_9_io_i_7_ci),
    .io_o_0_out(cb_5_9_io_o_0_out),
    .io_o_0_co(cb_5_9_io_o_0_co),
    .io_o_1_out(cb_5_9_io_o_1_out),
    .io_o_1_co(cb_5_9_io_o_1_co),
    .io_o_2_out(cb_5_9_io_o_2_out),
    .io_o_2_co(cb_5_9_io_o_2_co),
    .io_o_3_out(cb_5_9_io_o_3_out),
    .io_o_3_co(cb_5_9_io_o_3_co),
    .io_o_4_out(cb_5_9_io_o_4_out),
    .io_o_4_co(cb_5_9_io_o_4_co),
    .io_o_5_out(cb_5_9_io_o_5_out),
    .io_o_5_co(cb_5_9_io_o_5_co),
    .io_o_6_out(cb_5_9_io_o_6_out),
    .io_o_6_co(cb_5_9_io_o_6_co),
    .io_o_7_out(cb_5_9_io_o_7_out),
    .io_o_7_co(cb_5_9_io_o_7_co),
    .io_vi(cb_5_9_io_vi),
    .io_vci(cb_5_9_io_vci),
    .io_vco(cb_5_9_io_vco),
    .io_eo(cb_5_9_io_eo),
    .io_wo(cb_5_9_io_wo),
    .io_cs_i(cb_5_9_io_cs_i),
    .io_we_i(cb_5_9_io_we_i),
    .io_adr_i(cb_5_9_io_adr_i),
    .io_dat_i(cb_5_9_io_dat_i),
    .io_dat_o(cb_5_9_io_dat_o)
  );
  cic_block cb_5_10 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_5_10_wb_clk_i),
    .wb_rst_i(cb_5_10_wb_rst_i),
    .io_i_0_in1(cb_5_10_io_i_0_in1),
    .io_i_0_ci(cb_5_10_io_i_0_ci),
    .io_i_1_in1(cb_5_10_io_i_1_in1),
    .io_i_1_ci(cb_5_10_io_i_1_ci),
    .io_i_2_in1(cb_5_10_io_i_2_in1),
    .io_i_2_ci(cb_5_10_io_i_2_ci),
    .io_i_3_in1(cb_5_10_io_i_3_in1),
    .io_i_3_ci(cb_5_10_io_i_3_ci),
    .io_i_4_in1(cb_5_10_io_i_4_in1),
    .io_i_4_ci(cb_5_10_io_i_4_ci),
    .io_i_5_in1(cb_5_10_io_i_5_in1),
    .io_i_5_ci(cb_5_10_io_i_5_ci),
    .io_i_6_in1(cb_5_10_io_i_6_in1),
    .io_i_6_ci(cb_5_10_io_i_6_ci),
    .io_i_7_in1(cb_5_10_io_i_7_in1),
    .io_i_7_ci(cb_5_10_io_i_7_ci),
    .io_o_0_out(cb_5_10_io_o_0_out),
    .io_o_0_co(cb_5_10_io_o_0_co),
    .io_o_1_out(cb_5_10_io_o_1_out),
    .io_o_1_co(cb_5_10_io_o_1_co),
    .io_o_2_out(cb_5_10_io_o_2_out),
    .io_o_2_co(cb_5_10_io_o_2_co),
    .io_o_3_out(cb_5_10_io_o_3_out),
    .io_o_3_co(cb_5_10_io_o_3_co),
    .io_o_4_out(cb_5_10_io_o_4_out),
    .io_o_4_co(cb_5_10_io_o_4_co),
    .io_o_5_out(cb_5_10_io_o_5_out),
    .io_o_5_co(cb_5_10_io_o_5_co),
    .io_o_6_out(cb_5_10_io_o_6_out),
    .io_o_6_co(cb_5_10_io_o_6_co),
    .io_o_7_out(cb_5_10_io_o_7_out),
    .io_o_7_co(cb_5_10_io_o_7_co),
    .io_vi(cb_5_10_io_vi),
    .io_vci(cb_5_10_io_vci),
    .io_vco(cb_5_10_io_vco),
    .io_eo(cb_5_10_io_eo),
    .io_wo(cb_5_10_io_wo),
    .io_cs_i(cb_5_10_io_cs_i),
    .io_we_i(cb_5_10_io_we_i),
    .io_adr_i(cb_5_10_io_adr_i),
    .io_dat_i(cb_5_10_io_dat_i),
    .io_dat_o(cb_5_10_io_dat_o)
  );
  cic_con ccon_6 ( // @[UserProjectWrapper.scala 80:19]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(ccon_6_wb_clk_i),
    .wb_rst_i(ccon_6_wb_rst_i),
    .io_cs_i(ccon_6_io_cs_i),
    .io_ack_o(ccon_6_io_ack_o),
    .io_we_i(ccon_6_io_we_i),
    .io_adr_i(ccon_6_io_adr_i),
    .io_dat_i(ccon_6_io_dat_i),
    .io_dat_o(ccon_6_io_dat_o),
    .io_dsi_in(ccon_6_io_dsi_in),
    .io_dataLastBlock(ccon_6_io_dataLastBlock),
    .io_dsi_o(ccon_6_io_dsi_o),
    .io_b_cs_i_0(ccon_6_io_b_cs_i_0),
    .io_b_cs_i_1(ccon_6_io_b_cs_i_1),
    .io_b_cs_i_2(ccon_6_io_b_cs_i_2),
    .io_b_cs_i_3(ccon_6_io_b_cs_i_3),
    .io_b_cs_i_4(ccon_6_io_b_cs_i_4),
    .io_b_cs_i_5(ccon_6_io_b_cs_i_5),
    .io_b_cs_i_6(ccon_6_io_b_cs_i_6),
    .io_b_cs_i_7(ccon_6_io_b_cs_i_7),
    .io_b_cs_i_8(ccon_6_io_b_cs_i_8),
    .io_b_cs_i_9(ccon_6_io_b_cs_i_9),
    .io_b_cs_i_10(ccon_6_io_b_cs_i_10),
    .io_b_we_i(ccon_6_io_b_we_i),
    .io_b_adr_i(ccon_6_io_b_adr_i),
    .io_b_dat_i(ccon_6_io_b_dat_i),
    .io_b_dat_o_0(ccon_6_io_b_dat_o_0),
    .io_b_dat_o_1(ccon_6_io_b_dat_o_1),
    .io_b_dat_o_2(ccon_6_io_b_dat_o_2),
    .io_b_dat_o_3(ccon_6_io_b_dat_o_3),
    .io_b_dat_o_4(ccon_6_io_b_dat_o_4),
    .io_b_dat_o_5(ccon_6_io_b_dat_o_5),
    .io_b_dat_o_6(ccon_6_io_b_dat_o_6),
    .io_b_dat_o_7(ccon_6_io_b_dat_o_7),
    .io_b_dat_o_8(ccon_6_io_b_dat_o_8),
    .io_b_dat_o_9(ccon_6_io_b_dat_o_9),
    .io_b_dat_o_10(ccon_6_io_b_dat_o_10),
    .io_vout(ccon_6_io_vout),
    .io_irq(ccon_6_io_irq),
    .io_sync_out(ccon_6_io_sync_out)
  );
  cic_block cb_6_0 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_6_0_wb_clk_i),
    .wb_rst_i(cb_6_0_wb_rst_i),
    .io_i_0_in1(cb_6_0_io_i_0_in1),
    .io_i_0_ci(cb_6_0_io_i_0_ci),
    .io_i_1_in1(cb_6_0_io_i_1_in1),
    .io_i_1_ci(cb_6_0_io_i_1_ci),
    .io_i_2_in1(cb_6_0_io_i_2_in1),
    .io_i_2_ci(cb_6_0_io_i_2_ci),
    .io_i_3_in1(cb_6_0_io_i_3_in1),
    .io_i_3_ci(cb_6_0_io_i_3_ci),
    .io_i_4_in1(cb_6_0_io_i_4_in1),
    .io_i_4_ci(cb_6_0_io_i_4_ci),
    .io_i_5_in1(cb_6_0_io_i_5_in1),
    .io_i_5_ci(cb_6_0_io_i_5_ci),
    .io_i_6_in1(cb_6_0_io_i_6_in1),
    .io_i_6_ci(cb_6_0_io_i_6_ci),
    .io_i_7_in1(cb_6_0_io_i_7_in1),
    .io_i_7_ci(cb_6_0_io_i_7_ci),
    .io_o_0_out(cb_6_0_io_o_0_out),
    .io_o_0_co(cb_6_0_io_o_0_co),
    .io_o_1_out(cb_6_0_io_o_1_out),
    .io_o_1_co(cb_6_0_io_o_1_co),
    .io_o_2_out(cb_6_0_io_o_2_out),
    .io_o_2_co(cb_6_0_io_o_2_co),
    .io_o_3_out(cb_6_0_io_o_3_out),
    .io_o_3_co(cb_6_0_io_o_3_co),
    .io_o_4_out(cb_6_0_io_o_4_out),
    .io_o_4_co(cb_6_0_io_o_4_co),
    .io_o_5_out(cb_6_0_io_o_5_out),
    .io_o_5_co(cb_6_0_io_o_5_co),
    .io_o_6_out(cb_6_0_io_o_6_out),
    .io_o_6_co(cb_6_0_io_o_6_co),
    .io_o_7_out(cb_6_0_io_o_7_out),
    .io_o_7_co(cb_6_0_io_o_7_co),
    .io_vi(cb_6_0_io_vi),
    .io_vci(cb_6_0_io_vci),
    .io_vco(cb_6_0_io_vco),
    .io_eo(cb_6_0_io_eo),
    .io_wo(cb_6_0_io_wo),
    .io_cs_i(cb_6_0_io_cs_i),
    .io_we_i(cb_6_0_io_we_i),
    .io_adr_i(cb_6_0_io_adr_i),
    .io_dat_i(cb_6_0_io_dat_i),
    .io_dat_o(cb_6_0_io_dat_o)
  );
  cic_block cb_6_1 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_6_1_wb_clk_i),
    .wb_rst_i(cb_6_1_wb_rst_i),
    .io_i_0_in1(cb_6_1_io_i_0_in1),
    .io_i_0_ci(cb_6_1_io_i_0_ci),
    .io_i_1_in1(cb_6_1_io_i_1_in1),
    .io_i_1_ci(cb_6_1_io_i_1_ci),
    .io_i_2_in1(cb_6_1_io_i_2_in1),
    .io_i_2_ci(cb_6_1_io_i_2_ci),
    .io_i_3_in1(cb_6_1_io_i_3_in1),
    .io_i_3_ci(cb_6_1_io_i_3_ci),
    .io_i_4_in1(cb_6_1_io_i_4_in1),
    .io_i_4_ci(cb_6_1_io_i_4_ci),
    .io_i_5_in1(cb_6_1_io_i_5_in1),
    .io_i_5_ci(cb_6_1_io_i_5_ci),
    .io_i_6_in1(cb_6_1_io_i_6_in1),
    .io_i_6_ci(cb_6_1_io_i_6_ci),
    .io_i_7_in1(cb_6_1_io_i_7_in1),
    .io_i_7_ci(cb_6_1_io_i_7_ci),
    .io_o_0_out(cb_6_1_io_o_0_out),
    .io_o_0_co(cb_6_1_io_o_0_co),
    .io_o_1_out(cb_6_1_io_o_1_out),
    .io_o_1_co(cb_6_1_io_o_1_co),
    .io_o_2_out(cb_6_1_io_o_2_out),
    .io_o_2_co(cb_6_1_io_o_2_co),
    .io_o_3_out(cb_6_1_io_o_3_out),
    .io_o_3_co(cb_6_1_io_o_3_co),
    .io_o_4_out(cb_6_1_io_o_4_out),
    .io_o_4_co(cb_6_1_io_o_4_co),
    .io_o_5_out(cb_6_1_io_o_5_out),
    .io_o_5_co(cb_6_1_io_o_5_co),
    .io_o_6_out(cb_6_1_io_o_6_out),
    .io_o_6_co(cb_6_1_io_o_6_co),
    .io_o_7_out(cb_6_1_io_o_7_out),
    .io_o_7_co(cb_6_1_io_o_7_co),
    .io_vi(cb_6_1_io_vi),
    .io_vci(cb_6_1_io_vci),
    .io_vco(cb_6_1_io_vco),
    .io_eo(cb_6_1_io_eo),
    .io_wo(cb_6_1_io_wo),
    .io_cs_i(cb_6_1_io_cs_i),
    .io_we_i(cb_6_1_io_we_i),
    .io_adr_i(cb_6_1_io_adr_i),
    .io_dat_i(cb_6_1_io_dat_i),
    .io_dat_o(cb_6_1_io_dat_o)
  );
  cic_block cb_6_2 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_6_2_wb_clk_i),
    .wb_rst_i(cb_6_2_wb_rst_i),
    .io_i_0_in1(cb_6_2_io_i_0_in1),
    .io_i_0_ci(cb_6_2_io_i_0_ci),
    .io_i_1_in1(cb_6_2_io_i_1_in1),
    .io_i_1_ci(cb_6_2_io_i_1_ci),
    .io_i_2_in1(cb_6_2_io_i_2_in1),
    .io_i_2_ci(cb_6_2_io_i_2_ci),
    .io_i_3_in1(cb_6_2_io_i_3_in1),
    .io_i_3_ci(cb_6_2_io_i_3_ci),
    .io_i_4_in1(cb_6_2_io_i_4_in1),
    .io_i_4_ci(cb_6_2_io_i_4_ci),
    .io_i_5_in1(cb_6_2_io_i_5_in1),
    .io_i_5_ci(cb_6_2_io_i_5_ci),
    .io_i_6_in1(cb_6_2_io_i_6_in1),
    .io_i_6_ci(cb_6_2_io_i_6_ci),
    .io_i_7_in1(cb_6_2_io_i_7_in1),
    .io_i_7_ci(cb_6_2_io_i_7_ci),
    .io_o_0_out(cb_6_2_io_o_0_out),
    .io_o_0_co(cb_6_2_io_o_0_co),
    .io_o_1_out(cb_6_2_io_o_1_out),
    .io_o_1_co(cb_6_2_io_o_1_co),
    .io_o_2_out(cb_6_2_io_o_2_out),
    .io_o_2_co(cb_6_2_io_o_2_co),
    .io_o_3_out(cb_6_2_io_o_3_out),
    .io_o_3_co(cb_6_2_io_o_3_co),
    .io_o_4_out(cb_6_2_io_o_4_out),
    .io_o_4_co(cb_6_2_io_o_4_co),
    .io_o_5_out(cb_6_2_io_o_5_out),
    .io_o_5_co(cb_6_2_io_o_5_co),
    .io_o_6_out(cb_6_2_io_o_6_out),
    .io_o_6_co(cb_6_2_io_o_6_co),
    .io_o_7_out(cb_6_2_io_o_7_out),
    .io_o_7_co(cb_6_2_io_o_7_co),
    .io_vi(cb_6_2_io_vi),
    .io_vci(cb_6_2_io_vci),
    .io_vco(cb_6_2_io_vco),
    .io_eo(cb_6_2_io_eo),
    .io_wo(cb_6_2_io_wo),
    .io_cs_i(cb_6_2_io_cs_i),
    .io_we_i(cb_6_2_io_we_i),
    .io_adr_i(cb_6_2_io_adr_i),
    .io_dat_i(cb_6_2_io_dat_i),
    .io_dat_o(cb_6_2_io_dat_o)
  );
  cic_block cb_6_3 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_6_3_wb_clk_i),
    .wb_rst_i(cb_6_3_wb_rst_i),
    .io_i_0_in1(cb_6_3_io_i_0_in1),
    .io_i_0_ci(cb_6_3_io_i_0_ci),
    .io_i_1_in1(cb_6_3_io_i_1_in1),
    .io_i_1_ci(cb_6_3_io_i_1_ci),
    .io_i_2_in1(cb_6_3_io_i_2_in1),
    .io_i_2_ci(cb_6_3_io_i_2_ci),
    .io_i_3_in1(cb_6_3_io_i_3_in1),
    .io_i_3_ci(cb_6_3_io_i_3_ci),
    .io_i_4_in1(cb_6_3_io_i_4_in1),
    .io_i_4_ci(cb_6_3_io_i_4_ci),
    .io_i_5_in1(cb_6_3_io_i_5_in1),
    .io_i_5_ci(cb_6_3_io_i_5_ci),
    .io_i_6_in1(cb_6_3_io_i_6_in1),
    .io_i_6_ci(cb_6_3_io_i_6_ci),
    .io_i_7_in1(cb_6_3_io_i_7_in1),
    .io_i_7_ci(cb_6_3_io_i_7_ci),
    .io_o_0_out(cb_6_3_io_o_0_out),
    .io_o_0_co(cb_6_3_io_o_0_co),
    .io_o_1_out(cb_6_3_io_o_1_out),
    .io_o_1_co(cb_6_3_io_o_1_co),
    .io_o_2_out(cb_6_3_io_o_2_out),
    .io_o_2_co(cb_6_3_io_o_2_co),
    .io_o_3_out(cb_6_3_io_o_3_out),
    .io_o_3_co(cb_6_3_io_o_3_co),
    .io_o_4_out(cb_6_3_io_o_4_out),
    .io_o_4_co(cb_6_3_io_o_4_co),
    .io_o_5_out(cb_6_3_io_o_5_out),
    .io_o_5_co(cb_6_3_io_o_5_co),
    .io_o_6_out(cb_6_3_io_o_6_out),
    .io_o_6_co(cb_6_3_io_o_6_co),
    .io_o_7_out(cb_6_3_io_o_7_out),
    .io_o_7_co(cb_6_3_io_o_7_co),
    .io_vi(cb_6_3_io_vi),
    .io_vci(cb_6_3_io_vci),
    .io_vco(cb_6_3_io_vco),
    .io_eo(cb_6_3_io_eo),
    .io_wo(cb_6_3_io_wo),
    .io_cs_i(cb_6_3_io_cs_i),
    .io_we_i(cb_6_3_io_we_i),
    .io_adr_i(cb_6_3_io_adr_i),
    .io_dat_i(cb_6_3_io_dat_i),
    .io_dat_o(cb_6_3_io_dat_o)
  );
  cic_block cb_6_4 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_6_4_wb_clk_i),
    .wb_rst_i(cb_6_4_wb_rst_i),
    .io_i_0_in1(cb_6_4_io_i_0_in1),
    .io_i_0_ci(cb_6_4_io_i_0_ci),
    .io_i_1_in1(cb_6_4_io_i_1_in1),
    .io_i_1_ci(cb_6_4_io_i_1_ci),
    .io_i_2_in1(cb_6_4_io_i_2_in1),
    .io_i_2_ci(cb_6_4_io_i_2_ci),
    .io_i_3_in1(cb_6_4_io_i_3_in1),
    .io_i_3_ci(cb_6_4_io_i_3_ci),
    .io_i_4_in1(cb_6_4_io_i_4_in1),
    .io_i_4_ci(cb_6_4_io_i_4_ci),
    .io_i_5_in1(cb_6_4_io_i_5_in1),
    .io_i_5_ci(cb_6_4_io_i_5_ci),
    .io_i_6_in1(cb_6_4_io_i_6_in1),
    .io_i_6_ci(cb_6_4_io_i_6_ci),
    .io_i_7_in1(cb_6_4_io_i_7_in1),
    .io_i_7_ci(cb_6_4_io_i_7_ci),
    .io_o_0_out(cb_6_4_io_o_0_out),
    .io_o_0_co(cb_6_4_io_o_0_co),
    .io_o_1_out(cb_6_4_io_o_1_out),
    .io_o_1_co(cb_6_4_io_o_1_co),
    .io_o_2_out(cb_6_4_io_o_2_out),
    .io_o_2_co(cb_6_4_io_o_2_co),
    .io_o_3_out(cb_6_4_io_o_3_out),
    .io_o_3_co(cb_6_4_io_o_3_co),
    .io_o_4_out(cb_6_4_io_o_4_out),
    .io_o_4_co(cb_6_4_io_o_4_co),
    .io_o_5_out(cb_6_4_io_o_5_out),
    .io_o_5_co(cb_6_4_io_o_5_co),
    .io_o_6_out(cb_6_4_io_o_6_out),
    .io_o_6_co(cb_6_4_io_o_6_co),
    .io_o_7_out(cb_6_4_io_o_7_out),
    .io_o_7_co(cb_6_4_io_o_7_co),
    .io_vi(cb_6_4_io_vi),
    .io_vci(cb_6_4_io_vci),
    .io_vco(cb_6_4_io_vco),
    .io_eo(cb_6_4_io_eo),
    .io_wo(cb_6_4_io_wo),
    .io_cs_i(cb_6_4_io_cs_i),
    .io_we_i(cb_6_4_io_we_i),
    .io_adr_i(cb_6_4_io_adr_i),
    .io_dat_i(cb_6_4_io_dat_i),
    .io_dat_o(cb_6_4_io_dat_o)
  );
  cic_block cb_6_5 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_6_5_wb_clk_i),
    .wb_rst_i(cb_6_5_wb_rst_i),
    .io_i_0_in1(cb_6_5_io_i_0_in1),
    .io_i_0_ci(cb_6_5_io_i_0_ci),
    .io_i_1_in1(cb_6_5_io_i_1_in1),
    .io_i_1_ci(cb_6_5_io_i_1_ci),
    .io_i_2_in1(cb_6_5_io_i_2_in1),
    .io_i_2_ci(cb_6_5_io_i_2_ci),
    .io_i_3_in1(cb_6_5_io_i_3_in1),
    .io_i_3_ci(cb_6_5_io_i_3_ci),
    .io_i_4_in1(cb_6_5_io_i_4_in1),
    .io_i_4_ci(cb_6_5_io_i_4_ci),
    .io_i_5_in1(cb_6_5_io_i_5_in1),
    .io_i_5_ci(cb_6_5_io_i_5_ci),
    .io_i_6_in1(cb_6_5_io_i_6_in1),
    .io_i_6_ci(cb_6_5_io_i_6_ci),
    .io_i_7_in1(cb_6_5_io_i_7_in1),
    .io_i_7_ci(cb_6_5_io_i_7_ci),
    .io_o_0_out(cb_6_5_io_o_0_out),
    .io_o_0_co(cb_6_5_io_o_0_co),
    .io_o_1_out(cb_6_5_io_o_1_out),
    .io_o_1_co(cb_6_5_io_o_1_co),
    .io_o_2_out(cb_6_5_io_o_2_out),
    .io_o_2_co(cb_6_5_io_o_2_co),
    .io_o_3_out(cb_6_5_io_o_3_out),
    .io_o_3_co(cb_6_5_io_o_3_co),
    .io_o_4_out(cb_6_5_io_o_4_out),
    .io_o_4_co(cb_6_5_io_o_4_co),
    .io_o_5_out(cb_6_5_io_o_5_out),
    .io_o_5_co(cb_6_5_io_o_5_co),
    .io_o_6_out(cb_6_5_io_o_6_out),
    .io_o_6_co(cb_6_5_io_o_6_co),
    .io_o_7_out(cb_6_5_io_o_7_out),
    .io_o_7_co(cb_6_5_io_o_7_co),
    .io_vi(cb_6_5_io_vi),
    .io_vci(cb_6_5_io_vci),
    .io_vco(cb_6_5_io_vco),
    .io_eo(cb_6_5_io_eo),
    .io_wo(cb_6_5_io_wo),
    .io_cs_i(cb_6_5_io_cs_i),
    .io_we_i(cb_6_5_io_we_i),
    .io_adr_i(cb_6_5_io_adr_i),
    .io_dat_i(cb_6_5_io_dat_i),
    .io_dat_o(cb_6_5_io_dat_o)
  );
  cic_block cb_6_6 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_6_6_wb_clk_i),
    .wb_rst_i(cb_6_6_wb_rst_i),
    .io_i_0_in1(cb_6_6_io_i_0_in1),
    .io_i_0_ci(cb_6_6_io_i_0_ci),
    .io_i_1_in1(cb_6_6_io_i_1_in1),
    .io_i_1_ci(cb_6_6_io_i_1_ci),
    .io_i_2_in1(cb_6_6_io_i_2_in1),
    .io_i_2_ci(cb_6_6_io_i_2_ci),
    .io_i_3_in1(cb_6_6_io_i_3_in1),
    .io_i_3_ci(cb_6_6_io_i_3_ci),
    .io_i_4_in1(cb_6_6_io_i_4_in1),
    .io_i_4_ci(cb_6_6_io_i_4_ci),
    .io_i_5_in1(cb_6_6_io_i_5_in1),
    .io_i_5_ci(cb_6_6_io_i_5_ci),
    .io_i_6_in1(cb_6_6_io_i_6_in1),
    .io_i_6_ci(cb_6_6_io_i_6_ci),
    .io_i_7_in1(cb_6_6_io_i_7_in1),
    .io_i_7_ci(cb_6_6_io_i_7_ci),
    .io_o_0_out(cb_6_6_io_o_0_out),
    .io_o_0_co(cb_6_6_io_o_0_co),
    .io_o_1_out(cb_6_6_io_o_1_out),
    .io_o_1_co(cb_6_6_io_o_1_co),
    .io_o_2_out(cb_6_6_io_o_2_out),
    .io_o_2_co(cb_6_6_io_o_2_co),
    .io_o_3_out(cb_6_6_io_o_3_out),
    .io_o_3_co(cb_6_6_io_o_3_co),
    .io_o_4_out(cb_6_6_io_o_4_out),
    .io_o_4_co(cb_6_6_io_o_4_co),
    .io_o_5_out(cb_6_6_io_o_5_out),
    .io_o_5_co(cb_6_6_io_o_5_co),
    .io_o_6_out(cb_6_6_io_o_6_out),
    .io_o_6_co(cb_6_6_io_o_6_co),
    .io_o_7_out(cb_6_6_io_o_7_out),
    .io_o_7_co(cb_6_6_io_o_7_co),
    .io_vi(cb_6_6_io_vi),
    .io_vci(cb_6_6_io_vci),
    .io_vco(cb_6_6_io_vco),
    .io_eo(cb_6_6_io_eo),
    .io_wo(cb_6_6_io_wo),
    .io_cs_i(cb_6_6_io_cs_i),
    .io_we_i(cb_6_6_io_we_i),
    .io_adr_i(cb_6_6_io_adr_i),
    .io_dat_i(cb_6_6_io_dat_i),
    .io_dat_o(cb_6_6_io_dat_o)
  );
  cic_block cb_6_7 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_6_7_wb_clk_i),
    .wb_rst_i(cb_6_7_wb_rst_i),
    .io_i_0_in1(cb_6_7_io_i_0_in1),
    .io_i_0_ci(cb_6_7_io_i_0_ci),
    .io_i_1_in1(cb_6_7_io_i_1_in1),
    .io_i_1_ci(cb_6_7_io_i_1_ci),
    .io_i_2_in1(cb_6_7_io_i_2_in1),
    .io_i_2_ci(cb_6_7_io_i_2_ci),
    .io_i_3_in1(cb_6_7_io_i_3_in1),
    .io_i_3_ci(cb_6_7_io_i_3_ci),
    .io_i_4_in1(cb_6_7_io_i_4_in1),
    .io_i_4_ci(cb_6_7_io_i_4_ci),
    .io_i_5_in1(cb_6_7_io_i_5_in1),
    .io_i_5_ci(cb_6_7_io_i_5_ci),
    .io_i_6_in1(cb_6_7_io_i_6_in1),
    .io_i_6_ci(cb_6_7_io_i_6_ci),
    .io_i_7_in1(cb_6_7_io_i_7_in1),
    .io_i_7_ci(cb_6_7_io_i_7_ci),
    .io_o_0_out(cb_6_7_io_o_0_out),
    .io_o_0_co(cb_6_7_io_o_0_co),
    .io_o_1_out(cb_6_7_io_o_1_out),
    .io_o_1_co(cb_6_7_io_o_1_co),
    .io_o_2_out(cb_6_7_io_o_2_out),
    .io_o_2_co(cb_6_7_io_o_2_co),
    .io_o_3_out(cb_6_7_io_o_3_out),
    .io_o_3_co(cb_6_7_io_o_3_co),
    .io_o_4_out(cb_6_7_io_o_4_out),
    .io_o_4_co(cb_6_7_io_o_4_co),
    .io_o_5_out(cb_6_7_io_o_5_out),
    .io_o_5_co(cb_6_7_io_o_5_co),
    .io_o_6_out(cb_6_7_io_o_6_out),
    .io_o_6_co(cb_6_7_io_o_6_co),
    .io_o_7_out(cb_6_7_io_o_7_out),
    .io_o_7_co(cb_6_7_io_o_7_co),
    .io_vi(cb_6_7_io_vi),
    .io_vci(cb_6_7_io_vci),
    .io_vco(cb_6_7_io_vco),
    .io_eo(cb_6_7_io_eo),
    .io_wo(cb_6_7_io_wo),
    .io_cs_i(cb_6_7_io_cs_i),
    .io_we_i(cb_6_7_io_we_i),
    .io_adr_i(cb_6_7_io_adr_i),
    .io_dat_i(cb_6_7_io_dat_i),
    .io_dat_o(cb_6_7_io_dat_o)
  );
  cic_block cb_6_8 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_6_8_wb_clk_i),
    .wb_rst_i(cb_6_8_wb_rst_i),
    .io_i_0_in1(cb_6_8_io_i_0_in1),
    .io_i_0_ci(cb_6_8_io_i_0_ci),
    .io_i_1_in1(cb_6_8_io_i_1_in1),
    .io_i_1_ci(cb_6_8_io_i_1_ci),
    .io_i_2_in1(cb_6_8_io_i_2_in1),
    .io_i_2_ci(cb_6_8_io_i_2_ci),
    .io_i_3_in1(cb_6_8_io_i_3_in1),
    .io_i_3_ci(cb_6_8_io_i_3_ci),
    .io_i_4_in1(cb_6_8_io_i_4_in1),
    .io_i_4_ci(cb_6_8_io_i_4_ci),
    .io_i_5_in1(cb_6_8_io_i_5_in1),
    .io_i_5_ci(cb_6_8_io_i_5_ci),
    .io_i_6_in1(cb_6_8_io_i_6_in1),
    .io_i_6_ci(cb_6_8_io_i_6_ci),
    .io_i_7_in1(cb_6_8_io_i_7_in1),
    .io_i_7_ci(cb_6_8_io_i_7_ci),
    .io_o_0_out(cb_6_8_io_o_0_out),
    .io_o_0_co(cb_6_8_io_o_0_co),
    .io_o_1_out(cb_6_8_io_o_1_out),
    .io_o_1_co(cb_6_8_io_o_1_co),
    .io_o_2_out(cb_6_8_io_o_2_out),
    .io_o_2_co(cb_6_8_io_o_2_co),
    .io_o_3_out(cb_6_8_io_o_3_out),
    .io_o_3_co(cb_6_8_io_o_3_co),
    .io_o_4_out(cb_6_8_io_o_4_out),
    .io_o_4_co(cb_6_8_io_o_4_co),
    .io_o_5_out(cb_6_8_io_o_5_out),
    .io_o_5_co(cb_6_8_io_o_5_co),
    .io_o_6_out(cb_6_8_io_o_6_out),
    .io_o_6_co(cb_6_8_io_o_6_co),
    .io_o_7_out(cb_6_8_io_o_7_out),
    .io_o_7_co(cb_6_8_io_o_7_co),
    .io_vi(cb_6_8_io_vi),
    .io_vci(cb_6_8_io_vci),
    .io_vco(cb_6_8_io_vco),
    .io_eo(cb_6_8_io_eo),
    .io_wo(cb_6_8_io_wo),
    .io_cs_i(cb_6_8_io_cs_i),
    .io_we_i(cb_6_8_io_we_i),
    .io_adr_i(cb_6_8_io_adr_i),
    .io_dat_i(cb_6_8_io_dat_i),
    .io_dat_o(cb_6_8_io_dat_o)
  );
  cic_block cb_6_9 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_6_9_wb_clk_i),
    .wb_rst_i(cb_6_9_wb_rst_i),
    .io_i_0_in1(cb_6_9_io_i_0_in1),
    .io_i_0_ci(cb_6_9_io_i_0_ci),
    .io_i_1_in1(cb_6_9_io_i_1_in1),
    .io_i_1_ci(cb_6_9_io_i_1_ci),
    .io_i_2_in1(cb_6_9_io_i_2_in1),
    .io_i_2_ci(cb_6_9_io_i_2_ci),
    .io_i_3_in1(cb_6_9_io_i_3_in1),
    .io_i_3_ci(cb_6_9_io_i_3_ci),
    .io_i_4_in1(cb_6_9_io_i_4_in1),
    .io_i_4_ci(cb_6_9_io_i_4_ci),
    .io_i_5_in1(cb_6_9_io_i_5_in1),
    .io_i_5_ci(cb_6_9_io_i_5_ci),
    .io_i_6_in1(cb_6_9_io_i_6_in1),
    .io_i_6_ci(cb_6_9_io_i_6_ci),
    .io_i_7_in1(cb_6_9_io_i_7_in1),
    .io_i_7_ci(cb_6_9_io_i_7_ci),
    .io_o_0_out(cb_6_9_io_o_0_out),
    .io_o_0_co(cb_6_9_io_o_0_co),
    .io_o_1_out(cb_6_9_io_o_1_out),
    .io_o_1_co(cb_6_9_io_o_1_co),
    .io_o_2_out(cb_6_9_io_o_2_out),
    .io_o_2_co(cb_6_9_io_o_2_co),
    .io_o_3_out(cb_6_9_io_o_3_out),
    .io_o_3_co(cb_6_9_io_o_3_co),
    .io_o_4_out(cb_6_9_io_o_4_out),
    .io_o_4_co(cb_6_9_io_o_4_co),
    .io_o_5_out(cb_6_9_io_o_5_out),
    .io_o_5_co(cb_6_9_io_o_5_co),
    .io_o_6_out(cb_6_9_io_o_6_out),
    .io_o_6_co(cb_6_9_io_o_6_co),
    .io_o_7_out(cb_6_9_io_o_7_out),
    .io_o_7_co(cb_6_9_io_o_7_co),
    .io_vi(cb_6_9_io_vi),
    .io_vci(cb_6_9_io_vci),
    .io_vco(cb_6_9_io_vco),
    .io_eo(cb_6_9_io_eo),
    .io_wo(cb_6_9_io_wo),
    .io_cs_i(cb_6_9_io_cs_i),
    .io_we_i(cb_6_9_io_we_i),
    .io_adr_i(cb_6_9_io_adr_i),
    .io_dat_i(cb_6_9_io_dat_i),
    .io_dat_o(cb_6_9_io_dat_o)
  );
  cic_block cb_6_10 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_6_10_wb_clk_i),
    .wb_rst_i(cb_6_10_wb_rst_i),
    .io_i_0_in1(cb_6_10_io_i_0_in1),
    .io_i_0_ci(cb_6_10_io_i_0_ci),
    .io_i_1_in1(cb_6_10_io_i_1_in1),
    .io_i_1_ci(cb_6_10_io_i_1_ci),
    .io_i_2_in1(cb_6_10_io_i_2_in1),
    .io_i_2_ci(cb_6_10_io_i_2_ci),
    .io_i_3_in1(cb_6_10_io_i_3_in1),
    .io_i_3_ci(cb_6_10_io_i_3_ci),
    .io_i_4_in1(cb_6_10_io_i_4_in1),
    .io_i_4_ci(cb_6_10_io_i_4_ci),
    .io_i_5_in1(cb_6_10_io_i_5_in1),
    .io_i_5_ci(cb_6_10_io_i_5_ci),
    .io_i_6_in1(cb_6_10_io_i_6_in1),
    .io_i_6_ci(cb_6_10_io_i_6_ci),
    .io_i_7_in1(cb_6_10_io_i_7_in1),
    .io_i_7_ci(cb_6_10_io_i_7_ci),
    .io_o_0_out(cb_6_10_io_o_0_out),
    .io_o_0_co(cb_6_10_io_o_0_co),
    .io_o_1_out(cb_6_10_io_o_1_out),
    .io_o_1_co(cb_6_10_io_o_1_co),
    .io_o_2_out(cb_6_10_io_o_2_out),
    .io_o_2_co(cb_6_10_io_o_2_co),
    .io_o_3_out(cb_6_10_io_o_3_out),
    .io_o_3_co(cb_6_10_io_o_3_co),
    .io_o_4_out(cb_6_10_io_o_4_out),
    .io_o_4_co(cb_6_10_io_o_4_co),
    .io_o_5_out(cb_6_10_io_o_5_out),
    .io_o_5_co(cb_6_10_io_o_5_co),
    .io_o_6_out(cb_6_10_io_o_6_out),
    .io_o_6_co(cb_6_10_io_o_6_co),
    .io_o_7_out(cb_6_10_io_o_7_out),
    .io_o_7_co(cb_6_10_io_o_7_co),
    .io_vi(cb_6_10_io_vi),
    .io_vci(cb_6_10_io_vci),
    .io_vco(cb_6_10_io_vco),
    .io_eo(cb_6_10_io_eo),
    .io_wo(cb_6_10_io_wo),
    .io_cs_i(cb_6_10_io_cs_i),
    .io_we_i(cb_6_10_io_we_i),
    .io_adr_i(cb_6_10_io_adr_i),
    .io_dat_i(cb_6_10_io_dat_i),
    .io_dat_o(cb_6_10_io_dat_o)
  );
  cic_con ccon_7 ( // @[UserProjectWrapper.scala 80:19]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(ccon_7_wb_clk_i),
    .wb_rst_i(ccon_7_wb_rst_i),
    .io_cs_i(ccon_7_io_cs_i),
    .io_ack_o(ccon_7_io_ack_o),
    .io_we_i(ccon_7_io_we_i),
    .io_adr_i(ccon_7_io_adr_i),
    .io_dat_i(ccon_7_io_dat_i),
    .io_dat_o(ccon_7_io_dat_o),
    .io_dsi_in(ccon_7_io_dsi_in),
    .io_dataLastBlock(ccon_7_io_dataLastBlock),
    .io_dsi_o(ccon_7_io_dsi_o),
    .io_b_cs_i_0(ccon_7_io_b_cs_i_0),
    .io_b_cs_i_1(ccon_7_io_b_cs_i_1),
    .io_b_cs_i_2(ccon_7_io_b_cs_i_2),
    .io_b_cs_i_3(ccon_7_io_b_cs_i_3),
    .io_b_cs_i_4(ccon_7_io_b_cs_i_4),
    .io_b_cs_i_5(ccon_7_io_b_cs_i_5),
    .io_b_cs_i_6(ccon_7_io_b_cs_i_6),
    .io_b_cs_i_7(ccon_7_io_b_cs_i_7),
    .io_b_cs_i_8(ccon_7_io_b_cs_i_8),
    .io_b_cs_i_9(ccon_7_io_b_cs_i_9),
    .io_b_cs_i_10(ccon_7_io_b_cs_i_10),
    .io_b_we_i(ccon_7_io_b_we_i),
    .io_b_adr_i(ccon_7_io_b_adr_i),
    .io_b_dat_i(ccon_7_io_b_dat_i),
    .io_b_dat_o_0(ccon_7_io_b_dat_o_0),
    .io_b_dat_o_1(ccon_7_io_b_dat_o_1),
    .io_b_dat_o_2(ccon_7_io_b_dat_o_2),
    .io_b_dat_o_3(ccon_7_io_b_dat_o_3),
    .io_b_dat_o_4(ccon_7_io_b_dat_o_4),
    .io_b_dat_o_5(ccon_7_io_b_dat_o_5),
    .io_b_dat_o_6(ccon_7_io_b_dat_o_6),
    .io_b_dat_o_7(ccon_7_io_b_dat_o_7),
    .io_b_dat_o_8(ccon_7_io_b_dat_o_8),
    .io_b_dat_o_9(ccon_7_io_b_dat_o_9),
    .io_b_dat_o_10(ccon_7_io_b_dat_o_10),
    .io_vout(ccon_7_io_vout),
    .io_irq(ccon_7_io_irq),
    .io_sync_out(ccon_7_io_sync_out)
  );
  cic_block cb_7_0 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_7_0_wb_clk_i),
    .wb_rst_i(cb_7_0_wb_rst_i),
    .io_i_0_in1(cb_7_0_io_i_0_in1),
    .io_i_0_ci(cb_7_0_io_i_0_ci),
    .io_i_1_in1(cb_7_0_io_i_1_in1),
    .io_i_1_ci(cb_7_0_io_i_1_ci),
    .io_i_2_in1(cb_7_0_io_i_2_in1),
    .io_i_2_ci(cb_7_0_io_i_2_ci),
    .io_i_3_in1(cb_7_0_io_i_3_in1),
    .io_i_3_ci(cb_7_0_io_i_3_ci),
    .io_i_4_in1(cb_7_0_io_i_4_in1),
    .io_i_4_ci(cb_7_0_io_i_4_ci),
    .io_i_5_in1(cb_7_0_io_i_5_in1),
    .io_i_5_ci(cb_7_0_io_i_5_ci),
    .io_i_6_in1(cb_7_0_io_i_6_in1),
    .io_i_6_ci(cb_7_0_io_i_6_ci),
    .io_i_7_in1(cb_7_0_io_i_7_in1),
    .io_i_7_ci(cb_7_0_io_i_7_ci),
    .io_o_0_out(cb_7_0_io_o_0_out),
    .io_o_0_co(cb_7_0_io_o_0_co),
    .io_o_1_out(cb_7_0_io_o_1_out),
    .io_o_1_co(cb_7_0_io_o_1_co),
    .io_o_2_out(cb_7_0_io_o_2_out),
    .io_o_2_co(cb_7_0_io_o_2_co),
    .io_o_3_out(cb_7_0_io_o_3_out),
    .io_o_3_co(cb_7_0_io_o_3_co),
    .io_o_4_out(cb_7_0_io_o_4_out),
    .io_o_4_co(cb_7_0_io_o_4_co),
    .io_o_5_out(cb_7_0_io_o_5_out),
    .io_o_5_co(cb_7_0_io_o_5_co),
    .io_o_6_out(cb_7_0_io_o_6_out),
    .io_o_6_co(cb_7_0_io_o_6_co),
    .io_o_7_out(cb_7_0_io_o_7_out),
    .io_o_7_co(cb_7_0_io_o_7_co),
    .io_vi(cb_7_0_io_vi),
    .io_vci(cb_7_0_io_vci),
    .io_vco(cb_7_0_io_vco),
    .io_eo(cb_7_0_io_eo),
    .io_wo(cb_7_0_io_wo),
    .io_cs_i(cb_7_0_io_cs_i),
    .io_we_i(cb_7_0_io_we_i),
    .io_adr_i(cb_7_0_io_adr_i),
    .io_dat_i(cb_7_0_io_dat_i),
    .io_dat_o(cb_7_0_io_dat_o)
  );
  cic_block cb_7_1 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_7_1_wb_clk_i),
    .wb_rst_i(cb_7_1_wb_rst_i),
    .io_i_0_in1(cb_7_1_io_i_0_in1),
    .io_i_0_ci(cb_7_1_io_i_0_ci),
    .io_i_1_in1(cb_7_1_io_i_1_in1),
    .io_i_1_ci(cb_7_1_io_i_1_ci),
    .io_i_2_in1(cb_7_1_io_i_2_in1),
    .io_i_2_ci(cb_7_1_io_i_2_ci),
    .io_i_3_in1(cb_7_1_io_i_3_in1),
    .io_i_3_ci(cb_7_1_io_i_3_ci),
    .io_i_4_in1(cb_7_1_io_i_4_in1),
    .io_i_4_ci(cb_7_1_io_i_4_ci),
    .io_i_5_in1(cb_7_1_io_i_5_in1),
    .io_i_5_ci(cb_7_1_io_i_5_ci),
    .io_i_6_in1(cb_7_1_io_i_6_in1),
    .io_i_6_ci(cb_7_1_io_i_6_ci),
    .io_i_7_in1(cb_7_1_io_i_7_in1),
    .io_i_7_ci(cb_7_1_io_i_7_ci),
    .io_o_0_out(cb_7_1_io_o_0_out),
    .io_o_0_co(cb_7_1_io_o_0_co),
    .io_o_1_out(cb_7_1_io_o_1_out),
    .io_o_1_co(cb_7_1_io_o_1_co),
    .io_o_2_out(cb_7_1_io_o_2_out),
    .io_o_2_co(cb_7_1_io_o_2_co),
    .io_o_3_out(cb_7_1_io_o_3_out),
    .io_o_3_co(cb_7_1_io_o_3_co),
    .io_o_4_out(cb_7_1_io_o_4_out),
    .io_o_4_co(cb_7_1_io_o_4_co),
    .io_o_5_out(cb_7_1_io_o_5_out),
    .io_o_5_co(cb_7_1_io_o_5_co),
    .io_o_6_out(cb_7_1_io_o_6_out),
    .io_o_6_co(cb_7_1_io_o_6_co),
    .io_o_7_out(cb_7_1_io_o_7_out),
    .io_o_7_co(cb_7_1_io_o_7_co),
    .io_vi(cb_7_1_io_vi),
    .io_vci(cb_7_1_io_vci),
    .io_vco(cb_7_1_io_vco),
    .io_eo(cb_7_1_io_eo),
    .io_wo(cb_7_1_io_wo),
    .io_cs_i(cb_7_1_io_cs_i),
    .io_we_i(cb_7_1_io_we_i),
    .io_adr_i(cb_7_1_io_adr_i),
    .io_dat_i(cb_7_1_io_dat_i),
    .io_dat_o(cb_7_1_io_dat_o)
  );
  cic_block cb_7_2 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_7_2_wb_clk_i),
    .wb_rst_i(cb_7_2_wb_rst_i),
    .io_i_0_in1(cb_7_2_io_i_0_in1),
    .io_i_0_ci(cb_7_2_io_i_0_ci),
    .io_i_1_in1(cb_7_2_io_i_1_in1),
    .io_i_1_ci(cb_7_2_io_i_1_ci),
    .io_i_2_in1(cb_7_2_io_i_2_in1),
    .io_i_2_ci(cb_7_2_io_i_2_ci),
    .io_i_3_in1(cb_7_2_io_i_3_in1),
    .io_i_3_ci(cb_7_2_io_i_3_ci),
    .io_i_4_in1(cb_7_2_io_i_4_in1),
    .io_i_4_ci(cb_7_2_io_i_4_ci),
    .io_i_5_in1(cb_7_2_io_i_5_in1),
    .io_i_5_ci(cb_7_2_io_i_5_ci),
    .io_i_6_in1(cb_7_2_io_i_6_in1),
    .io_i_6_ci(cb_7_2_io_i_6_ci),
    .io_i_7_in1(cb_7_2_io_i_7_in1),
    .io_i_7_ci(cb_7_2_io_i_7_ci),
    .io_o_0_out(cb_7_2_io_o_0_out),
    .io_o_0_co(cb_7_2_io_o_0_co),
    .io_o_1_out(cb_7_2_io_o_1_out),
    .io_o_1_co(cb_7_2_io_o_1_co),
    .io_o_2_out(cb_7_2_io_o_2_out),
    .io_o_2_co(cb_7_2_io_o_2_co),
    .io_o_3_out(cb_7_2_io_o_3_out),
    .io_o_3_co(cb_7_2_io_o_3_co),
    .io_o_4_out(cb_7_2_io_o_4_out),
    .io_o_4_co(cb_7_2_io_o_4_co),
    .io_o_5_out(cb_7_2_io_o_5_out),
    .io_o_5_co(cb_7_2_io_o_5_co),
    .io_o_6_out(cb_7_2_io_o_6_out),
    .io_o_6_co(cb_7_2_io_o_6_co),
    .io_o_7_out(cb_7_2_io_o_7_out),
    .io_o_7_co(cb_7_2_io_o_7_co),
    .io_vi(cb_7_2_io_vi),
    .io_vci(cb_7_2_io_vci),
    .io_vco(cb_7_2_io_vco),
    .io_eo(cb_7_2_io_eo),
    .io_wo(cb_7_2_io_wo),
    .io_cs_i(cb_7_2_io_cs_i),
    .io_we_i(cb_7_2_io_we_i),
    .io_adr_i(cb_7_2_io_adr_i),
    .io_dat_i(cb_7_2_io_dat_i),
    .io_dat_o(cb_7_2_io_dat_o)
  );
  cic_block cb_7_3 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_7_3_wb_clk_i),
    .wb_rst_i(cb_7_3_wb_rst_i),
    .io_i_0_in1(cb_7_3_io_i_0_in1),
    .io_i_0_ci(cb_7_3_io_i_0_ci),
    .io_i_1_in1(cb_7_3_io_i_1_in1),
    .io_i_1_ci(cb_7_3_io_i_1_ci),
    .io_i_2_in1(cb_7_3_io_i_2_in1),
    .io_i_2_ci(cb_7_3_io_i_2_ci),
    .io_i_3_in1(cb_7_3_io_i_3_in1),
    .io_i_3_ci(cb_7_3_io_i_3_ci),
    .io_i_4_in1(cb_7_3_io_i_4_in1),
    .io_i_4_ci(cb_7_3_io_i_4_ci),
    .io_i_5_in1(cb_7_3_io_i_5_in1),
    .io_i_5_ci(cb_7_3_io_i_5_ci),
    .io_i_6_in1(cb_7_3_io_i_6_in1),
    .io_i_6_ci(cb_7_3_io_i_6_ci),
    .io_i_7_in1(cb_7_3_io_i_7_in1),
    .io_i_7_ci(cb_7_3_io_i_7_ci),
    .io_o_0_out(cb_7_3_io_o_0_out),
    .io_o_0_co(cb_7_3_io_o_0_co),
    .io_o_1_out(cb_7_3_io_o_1_out),
    .io_o_1_co(cb_7_3_io_o_1_co),
    .io_o_2_out(cb_7_3_io_o_2_out),
    .io_o_2_co(cb_7_3_io_o_2_co),
    .io_o_3_out(cb_7_3_io_o_3_out),
    .io_o_3_co(cb_7_3_io_o_3_co),
    .io_o_4_out(cb_7_3_io_o_4_out),
    .io_o_4_co(cb_7_3_io_o_4_co),
    .io_o_5_out(cb_7_3_io_o_5_out),
    .io_o_5_co(cb_7_3_io_o_5_co),
    .io_o_6_out(cb_7_3_io_o_6_out),
    .io_o_6_co(cb_7_3_io_o_6_co),
    .io_o_7_out(cb_7_3_io_o_7_out),
    .io_o_7_co(cb_7_3_io_o_7_co),
    .io_vi(cb_7_3_io_vi),
    .io_vci(cb_7_3_io_vci),
    .io_vco(cb_7_3_io_vco),
    .io_eo(cb_7_3_io_eo),
    .io_wo(cb_7_3_io_wo),
    .io_cs_i(cb_7_3_io_cs_i),
    .io_we_i(cb_7_3_io_we_i),
    .io_adr_i(cb_7_3_io_adr_i),
    .io_dat_i(cb_7_3_io_dat_i),
    .io_dat_o(cb_7_3_io_dat_o)
  );
  cic_block cb_7_4 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_7_4_wb_clk_i),
    .wb_rst_i(cb_7_4_wb_rst_i),
    .io_i_0_in1(cb_7_4_io_i_0_in1),
    .io_i_0_ci(cb_7_4_io_i_0_ci),
    .io_i_1_in1(cb_7_4_io_i_1_in1),
    .io_i_1_ci(cb_7_4_io_i_1_ci),
    .io_i_2_in1(cb_7_4_io_i_2_in1),
    .io_i_2_ci(cb_7_4_io_i_2_ci),
    .io_i_3_in1(cb_7_4_io_i_3_in1),
    .io_i_3_ci(cb_7_4_io_i_3_ci),
    .io_i_4_in1(cb_7_4_io_i_4_in1),
    .io_i_4_ci(cb_7_4_io_i_4_ci),
    .io_i_5_in1(cb_7_4_io_i_5_in1),
    .io_i_5_ci(cb_7_4_io_i_5_ci),
    .io_i_6_in1(cb_7_4_io_i_6_in1),
    .io_i_6_ci(cb_7_4_io_i_6_ci),
    .io_i_7_in1(cb_7_4_io_i_7_in1),
    .io_i_7_ci(cb_7_4_io_i_7_ci),
    .io_o_0_out(cb_7_4_io_o_0_out),
    .io_o_0_co(cb_7_4_io_o_0_co),
    .io_o_1_out(cb_7_4_io_o_1_out),
    .io_o_1_co(cb_7_4_io_o_1_co),
    .io_o_2_out(cb_7_4_io_o_2_out),
    .io_o_2_co(cb_7_4_io_o_2_co),
    .io_o_3_out(cb_7_4_io_o_3_out),
    .io_o_3_co(cb_7_4_io_o_3_co),
    .io_o_4_out(cb_7_4_io_o_4_out),
    .io_o_4_co(cb_7_4_io_o_4_co),
    .io_o_5_out(cb_7_4_io_o_5_out),
    .io_o_5_co(cb_7_4_io_o_5_co),
    .io_o_6_out(cb_7_4_io_o_6_out),
    .io_o_6_co(cb_7_4_io_o_6_co),
    .io_o_7_out(cb_7_4_io_o_7_out),
    .io_o_7_co(cb_7_4_io_o_7_co),
    .io_vi(cb_7_4_io_vi),
    .io_vci(cb_7_4_io_vci),
    .io_vco(cb_7_4_io_vco),
    .io_eo(cb_7_4_io_eo),
    .io_wo(cb_7_4_io_wo),
    .io_cs_i(cb_7_4_io_cs_i),
    .io_we_i(cb_7_4_io_we_i),
    .io_adr_i(cb_7_4_io_adr_i),
    .io_dat_i(cb_7_4_io_dat_i),
    .io_dat_o(cb_7_4_io_dat_o)
  );
  cic_block cb_7_5 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_7_5_wb_clk_i),
    .wb_rst_i(cb_7_5_wb_rst_i),
    .io_i_0_in1(cb_7_5_io_i_0_in1),
    .io_i_0_ci(cb_7_5_io_i_0_ci),
    .io_i_1_in1(cb_7_5_io_i_1_in1),
    .io_i_1_ci(cb_7_5_io_i_1_ci),
    .io_i_2_in1(cb_7_5_io_i_2_in1),
    .io_i_2_ci(cb_7_5_io_i_2_ci),
    .io_i_3_in1(cb_7_5_io_i_3_in1),
    .io_i_3_ci(cb_7_5_io_i_3_ci),
    .io_i_4_in1(cb_7_5_io_i_4_in1),
    .io_i_4_ci(cb_7_5_io_i_4_ci),
    .io_i_5_in1(cb_7_5_io_i_5_in1),
    .io_i_5_ci(cb_7_5_io_i_5_ci),
    .io_i_6_in1(cb_7_5_io_i_6_in1),
    .io_i_6_ci(cb_7_5_io_i_6_ci),
    .io_i_7_in1(cb_7_5_io_i_7_in1),
    .io_i_7_ci(cb_7_5_io_i_7_ci),
    .io_o_0_out(cb_7_5_io_o_0_out),
    .io_o_0_co(cb_7_5_io_o_0_co),
    .io_o_1_out(cb_7_5_io_o_1_out),
    .io_o_1_co(cb_7_5_io_o_1_co),
    .io_o_2_out(cb_7_5_io_o_2_out),
    .io_o_2_co(cb_7_5_io_o_2_co),
    .io_o_3_out(cb_7_5_io_o_3_out),
    .io_o_3_co(cb_7_5_io_o_3_co),
    .io_o_4_out(cb_7_5_io_o_4_out),
    .io_o_4_co(cb_7_5_io_o_4_co),
    .io_o_5_out(cb_7_5_io_o_5_out),
    .io_o_5_co(cb_7_5_io_o_5_co),
    .io_o_6_out(cb_7_5_io_o_6_out),
    .io_o_6_co(cb_7_5_io_o_6_co),
    .io_o_7_out(cb_7_5_io_o_7_out),
    .io_o_7_co(cb_7_5_io_o_7_co),
    .io_vi(cb_7_5_io_vi),
    .io_vci(cb_7_5_io_vci),
    .io_vco(cb_7_5_io_vco),
    .io_eo(cb_7_5_io_eo),
    .io_wo(cb_7_5_io_wo),
    .io_cs_i(cb_7_5_io_cs_i),
    .io_we_i(cb_7_5_io_we_i),
    .io_adr_i(cb_7_5_io_adr_i),
    .io_dat_i(cb_7_5_io_dat_i),
    .io_dat_o(cb_7_5_io_dat_o)
  );
  cic_block cb_7_6 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_7_6_wb_clk_i),
    .wb_rst_i(cb_7_6_wb_rst_i),
    .io_i_0_in1(cb_7_6_io_i_0_in1),
    .io_i_0_ci(cb_7_6_io_i_0_ci),
    .io_i_1_in1(cb_7_6_io_i_1_in1),
    .io_i_1_ci(cb_7_6_io_i_1_ci),
    .io_i_2_in1(cb_7_6_io_i_2_in1),
    .io_i_2_ci(cb_7_6_io_i_2_ci),
    .io_i_3_in1(cb_7_6_io_i_3_in1),
    .io_i_3_ci(cb_7_6_io_i_3_ci),
    .io_i_4_in1(cb_7_6_io_i_4_in1),
    .io_i_4_ci(cb_7_6_io_i_4_ci),
    .io_i_5_in1(cb_7_6_io_i_5_in1),
    .io_i_5_ci(cb_7_6_io_i_5_ci),
    .io_i_6_in1(cb_7_6_io_i_6_in1),
    .io_i_6_ci(cb_7_6_io_i_6_ci),
    .io_i_7_in1(cb_7_6_io_i_7_in1),
    .io_i_7_ci(cb_7_6_io_i_7_ci),
    .io_o_0_out(cb_7_6_io_o_0_out),
    .io_o_0_co(cb_7_6_io_o_0_co),
    .io_o_1_out(cb_7_6_io_o_1_out),
    .io_o_1_co(cb_7_6_io_o_1_co),
    .io_o_2_out(cb_7_6_io_o_2_out),
    .io_o_2_co(cb_7_6_io_o_2_co),
    .io_o_3_out(cb_7_6_io_o_3_out),
    .io_o_3_co(cb_7_6_io_o_3_co),
    .io_o_4_out(cb_7_6_io_o_4_out),
    .io_o_4_co(cb_7_6_io_o_4_co),
    .io_o_5_out(cb_7_6_io_o_5_out),
    .io_o_5_co(cb_7_6_io_o_5_co),
    .io_o_6_out(cb_7_6_io_o_6_out),
    .io_o_6_co(cb_7_6_io_o_6_co),
    .io_o_7_out(cb_7_6_io_o_7_out),
    .io_o_7_co(cb_7_6_io_o_7_co),
    .io_vi(cb_7_6_io_vi),
    .io_vci(cb_7_6_io_vci),
    .io_vco(cb_7_6_io_vco),
    .io_eo(cb_7_6_io_eo),
    .io_wo(cb_7_6_io_wo),
    .io_cs_i(cb_7_6_io_cs_i),
    .io_we_i(cb_7_6_io_we_i),
    .io_adr_i(cb_7_6_io_adr_i),
    .io_dat_i(cb_7_6_io_dat_i),
    .io_dat_o(cb_7_6_io_dat_o)
  );
  cic_block cb_7_7 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_7_7_wb_clk_i),
    .wb_rst_i(cb_7_7_wb_rst_i),
    .io_i_0_in1(cb_7_7_io_i_0_in1),
    .io_i_0_ci(cb_7_7_io_i_0_ci),
    .io_i_1_in1(cb_7_7_io_i_1_in1),
    .io_i_1_ci(cb_7_7_io_i_1_ci),
    .io_i_2_in1(cb_7_7_io_i_2_in1),
    .io_i_2_ci(cb_7_7_io_i_2_ci),
    .io_i_3_in1(cb_7_7_io_i_3_in1),
    .io_i_3_ci(cb_7_7_io_i_3_ci),
    .io_i_4_in1(cb_7_7_io_i_4_in1),
    .io_i_4_ci(cb_7_7_io_i_4_ci),
    .io_i_5_in1(cb_7_7_io_i_5_in1),
    .io_i_5_ci(cb_7_7_io_i_5_ci),
    .io_i_6_in1(cb_7_7_io_i_6_in1),
    .io_i_6_ci(cb_7_7_io_i_6_ci),
    .io_i_7_in1(cb_7_7_io_i_7_in1),
    .io_i_7_ci(cb_7_7_io_i_7_ci),
    .io_o_0_out(cb_7_7_io_o_0_out),
    .io_o_0_co(cb_7_7_io_o_0_co),
    .io_o_1_out(cb_7_7_io_o_1_out),
    .io_o_1_co(cb_7_7_io_o_1_co),
    .io_o_2_out(cb_7_7_io_o_2_out),
    .io_o_2_co(cb_7_7_io_o_2_co),
    .io_o_3_out(cb_7_7_io_o_3_out),
    .io_o_3_co(cb_7_7_io_o_3_co),
    .io_o_4_out(cb_7_7_io_o_4_out),
    .io_o_4_co(cb_7_7_io_o_4_co),
    .io_o_5_out(cb_7_7_io_o_5_out),
    .io_o_5_co(cb_7_7_io_o_5_co),
    .io_o_6_out(cb_7_7_io_o_6_out),
    .io_o_6_co(cb_7_7_io_o_6_co),
    .io_o_7_out(cb_7_7_io_o_7_out),
    .io_o_7_co(cb_7_7_io_o_7_co),
    .io_vi(cb_7_7_io_vi),
    .io_vci(cb_7_7_io_vci),
    .io_vco(cb_7_7_io_vco),
    .io_eo(cb_7_7_io_eo),
    .io_wo(cb_7_7_io_wo),
    .io_cs_i(cb_7_7_io_cs_i),
    .io_we_i(cb_7_7_io_we_i),
    .io_adr_i(cb_7_7_io_adr_i),
    .io_dat_i(cb_7_7_io_dat_i),
    .io_dat_o(cb_7_7_io_dat_o)
  );
  cic_block cb_7_8 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_7_8_wb_clk_i),
    .wb_rst_i(cb_7_8_wb_rst_i),
    .io_i_0_in1(cb_7_8_io_i_0_in1),
    .io_i_0_ci(cb_7_8_io_i_0_ci),
    .io_i_1_in1(cb_7_8_io_i_1_in1),
    .io_i_1_ci(cb_7_8_io_i_1_ci),
    .io_i_2_in1(cb_7_8_io_i_2_in1),
    .io_i_2_ci(cb_7_8_io_i_2_ci),
    .io_i_3_in1(cb_7_8_io_i_3_in1),
    .io_i_3_ci(cb_7_8_io_i_3_ci),
    .io_i_4_in1(cb_7_8_io_i_4_in1),
    .io_i_4_ci(cb_7_8_io_i_4_ci),
    .io_i_5_in1(cb_7_8_io_i_5_in1),
    .io_i_5_ci(cb_7_8_io_i_5_ci),
    .io_i_6_in1(cb_7_8_io_i_6_in1),
    .io_i_6_ci(cb_7_8_io_i_6_ci),
    .io_i_7_in1(cb_7_8_io_i_7_in1),
    .io_i_7_ci(cb_7_8_io_i_7_ci),
    .io_o_0_out(cb_7_8_io_o_0_out),
    .io_o_0_co(cb_7_8_io_o_0_co),
    .io_o_1_out(cb_7_8_io_o_1_out),
    .io_o_1_co(cb_7_8_io_o_1_co),
    .io_o_2_out(cb_7_8_io_o_2_out),
    .io_o_2_co(cb_7_8_io_o_2_co),
    .io_o_3_out(cb_7_8_io_o_3_out),
    .io_o_3_co(cb_7_8_io_o_3_co),
    .io_o_4_out(cb_7_8_io_o_4_out),
    .io_o_4_co(cb_7_8_io_o_4_co),
    .io_o_5_out(cb_7_8_io_o_5_out),
    .io_o_5_co(cb_7_8_io_o_5_co),
    .io_o_6_out(cb_7_8_io_o_6_out),
    .io_o_6_co(cb_7_8_io_o_6_co),
    .io_o_7_out(cb_7_8_io_o_7_out),
    .io_o_7_co(cb_7_8_io_o_7_co),
    .io_vi(cb_7_8_io_vi),
    .io_vci(cb_7_8_io_vci),
    .io_vco(cb_7_8_io_vco),
    .io_eo(cb_7_8_io_eo),
    .io_wo(cb_7_8_io_wo),
    .io_cs_i(cb_7_8_io_cs_i),
    .io_we_i(cb_7_8_io_we_i),
    .io_adr_i(cb_7_8_io_adr_i),
    .io_dat_i(cb_7_8_io_dat_i),
    .io_dat_o(cb_7_8_io_dat_o)
  );
  cic_block cb_7_9 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_7_9_wb_clk_i),
    .wb_rst_i(cb_7_9_wb_rst_i),
    .io_i_0_in1(cb_7_9_io_i_0_in1),
    .io_i_0_ci(cb_7_9_io_i_0_ci),
    .io_i_1_in1(cb_7_9_io_i_1_in1),
    .io_i_1_ci(cb_7_9_io_i_1_ci),
    .io_i_2_in1(cb_7_9_io_i_2_in1),
    .io_i_2_ci(cb_7_9_io_i_2_ci),
    .io_i_3_in1(cb_7_9_io_i_3_in1),
    .io_i_3_ci(cb_7_9_io_i_3_ci),
    .io_i_4_in1(cb_7_9_io_i_4_in1),
    .io_i_4_ci(cb_7_9_io_i_4_ci),
    .io_i_5_in1(cb_7_9_io_i_5_in1),
    .io_i_5_ci(cb_7_9_io_i_5_ci),
    .io_i_6_in1(cb_7_9_io_i_6_in1),
    .io_i_6_ci(cb_7_9_io_i_6_ci),
    .io_i_7_in1(cb_7_9_io_i_7_in1),
    .io_i_7_ci(cb_7_9_io_i_7_ci),
    .io_o_0_out(cb_7_9_io_o_0_out),
    .io_o_0_co(cb_7_9_io_o_0_co),
    .io_o_1_out(cb_7_9_io_o_1_out),
    .io_o_1_co(cb_7_9_io_o_1_co),
    .io_o_2_out(cb_7_9_io_o_2_out),
    .io_o_2_co(cb_7_9_io_o_2_co),
    .io_o_3_out(cb_7_9_io_o_3_out),
    .io_o_3_co(cb_7_9_io_o_3_co),
    .io_o_4_out(cb_7_9_io_o_4_out),
    .io_o_4_co(cb_7_9_io_o_4_co),
    .io_o_5_out(cb_7_9_io_o_5_out),
    .io_o_5_co(cb_7_9_io_o_5_co),
    .io_o_6_out(cb_7_9_io_o_6_out),
    .io_o_6_co(cb_7_9_io_o_6_co),
    .io_o_7_out(cb_7_9_io_o_7_out),
    .io_o_7_co(cb_7_9_io_o_7_co),
    .io_vi(cb_7_9_io_vi),
    .io_vci(cb_7_9_io_vci),
    .io_vco(cb_7_9_io_vco),
    .io_eo(cb_7_9_io_eo),
    .io_wo(cb_7_9_io_wo),
    .io_cs_i(cb_7_9_io_cs_i),
    .io_we_i(cb_7_9_io_we_i),
    .io_adr_i(cb_7_9_io_adr_i),
    .io_dat_i(cb_7_9_io_dat_i),
    .io_dat_o(cb_7_9_io_dat_o)
  );
  cic_block cb_7_10 ( // @[UserProjectWrapper.scala 98:21]
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .wb_clk_i(cb_7_10_wb_clk_i),
    .wb_rst_i(cb_7_10_wb_rst_i),
    .io_i_0_in1(cb_7_10_io_i_0_in1),
    .io_i_0_ci(cb_7_10_io_i_0_ci),
    .io_i_1_in1(cb_7_10_io_i_1_in1),
    .io_i_1_ci(cb_7_10_io_i_1_ci),
    .io_i_2_in1(cb_7_10_io_i_2_in1),
    .io_i_2_ci(cb_7_10_io_i_2_ci),
    .io_i_3_in1(cb_7_10_io_i_3_in1),
    .io_i_3_ci(cb_7_10_io_i_3_ci),
    .io_i_4_in1(cb_7_10_io_i_4_in1),
    .io_i_4_ci(cb_7_10_io_i_4_ci),
    .io_i_5_in1(cb_7_10_io_i_5_in1),
    .io_i_5_ci(cb_7_10_io_i_5_ci),
    .io_i_6_in1(cb_7_10_io_i_6_in1),
    .io_i_6_ci(cb_7_10_io_i_6_ci),
    .io_i_7_in1(cb_7_10_io_i_7_in1),
    .io_i_7_ci(cb_7_10_io_i_7_ci),
    .io_o_0_out(cb_7_10_io_o_0_out),
    .io_o_0_co(cb_7_10_io_o_0_co),
    .io_o_1_out(cb_7_10_io_o_1_out),
    .io_o_1_co(cb_7_10_io_o_1_co),
    .io_o_2_out(cb_7_10_io_o_2_out),
    .io_o_2_co(cb_7_10_io_o_2_co),
    .io_o_3_out(cb_7_10_io_o_3_out),
    .io_o_3_co(cb_7_10_io_o_3_co),
    .io_o_4_out(cb_7_10_io_o_4_out),
    .io_o_4_co(cb_7_10_io_o_4_co),
    .io_o_5_out(cb_7_10_io_o_5_out),
    .io_o_5_co(cb_7_10_io_o_5_co),
    .io_o_6_out(cb_7_10_io_o_6_out),
    .io_o_6_co(cb_7_10_io_o_6_co),
    .io_o_7_out(cb_7_10_io_o_7_out),
    .io_o_7_co(cb_7_10_io_o_7_co),
    .io_vi(cb_7_10_io_vi),
    .io_vci(cb_7_10_io_vci),
    .io_vco(cb_7_10_io_vco),
    .io_eo(cb_7_10_io_eo),
    .io_wo(cb_7_10_io_wo),
    .io_cs_i(cb_7_10_io_cs_i),
    .io_we_i(cb_7_10_io_we_i),
    .io_adr_i(cb_7_10_io_adr_i),
    .io_dat_i(cb_7_10_io_dat_i),
    .io_dat_o(cb_7_10_io_dat_o)
  );
  assign _T_7 = {cordic_sw_o,cordic_w_o}; // @[Cat.scala 29:58]
  assign _T_8 = {cordic_e_o,cordic_se_o}; // @[Cat.scala 29:58]
  assign _T_33 = {cb_0_10_io_o_3_out,cb_0_10_io_o_2_out,cb_0_10_io_o_1_out,cb_0_10_io_o_0_out}; // @[Cat.scala 29:58]
  assign _T_36 = {cb_0_10_io_o_7_out,cb_0_10_io_o_6_out,cb_0_10_io_o_5_out,cb_0_10_io_o_4_out}; // @[Cat.scala 29:58]
  assign _T_53 = {cb_1_10_io_o_3_out,cb_1_10_io_o_2_out,cb_1_10_io_o_1_out,cb_1_10_io_o_0_out}; // @[Cat.scala 29:58]
  assign _T_56 = {cb_1_10_io_o_7_out,cb_1_10_io_o_6_out,cb_1_10_io_o_5_out,cb_1_10_io_o_4_out}; // @[Cat.scala 29:58]
  assign _T_73 = {cb_2_10_io_o_3_out,cb_2_10_io_o_2_out,cb_2_10_io_o_1_out,cb_2_10_io_o_0_out}; // @[Cat.scala 29:58]
  assign _T_76 = {cb_2_10_io_o_7_out,cb_2_10_io_o_6_out,cb_2_10_io_o_5_out,cb_2_10_io_o_4_out}; // @[Cat.scala 29:58]
  assign _T_93 = {cb_3_10_io_o_3_out,cb_3_10_io_o_2_out,cb_3_10_io_o_1_out,cb_3_10_io_o_0_out}; // @[Cat.scala 29:58]
  assign _T_96 = {cb_3_10_io_o_7_out,cb_3_10_io_o_6_out,cb_3_10_io_o_5_out,cb_3_10_io_o_4_out}; // @[Cat.scala 29:58]
  assign _T_113 = {cb_4_10_io_o_3_out,cb_4_10_io_o_2_out,cb_4_10_io_o_1_out,cb_4_10_io_o_0_out}; // @[Cat.scala 29:58]
  assign _T_116 = {cb_4_10_io_o_7_out,cb_4_10_io_o_6_out,cb_4_10_io_o_5_out,cb_4_10_io_o_4_out}; // @[Cat.scala 29:58]
  assign _T_133 = {cb_5_10_io_o_3_out,cb_5_10_io_o_2_out,cb_5_10_io_o_1_out,cb_5_10_io_o_0_out}; // @[Cat.scala 29:58]
  assign _T_136 = {cb_5_10_io_o_7_out,cb_5_10_io_o_6_out,cb_5_10_io_o_5_out,cb_5_10_io_o_4_out}; // @[Cat.scala 29:58]
  assign _T_153 = {cb_6_10_io_o_3_out,cb_6_10_io_o_2_out,cb_6_10_io_o_1_out,cb_6_10_io_o_0_out}; // @[Cat.scala 29:58]
  assign _T_156 = {cb_6_10_io_o_7_out,cb_6_10_io_o_6_out,cb_6_10_io_o_5_out,cb_6_10_io_o_4_out}; // @[Cat.scala 29:58]
  assign _T_173 = {cb_7_10_io_o_3_out,cb_7_10_io_o_2_out,cb_7_10_io_o_1_out,cb_7_10_io_o_0_out}; // @[Cat.scala 29:58]
  assign _T_176 = {cb_7_10_io_o_7_out,cb_7_10_io_o_6_out,cb_7_10_io_o_5_out,cb_7_10_io_o_4_out}; // @[Cat.scala 29:58]
  assign _T_180 = {ccon_3_io_sync_out,ccon_2_io_sync_out,ccon_1_io_sync_out,ccon_0_io_sync_out}; // @[Cat.scala 29:58]
  assign _T_183 = {ccon_7_io_sync_out,ccon_6_io_sync_out,ccon_5_io_sync_out,ccon_4_io_sync_out}; // @[Cat.scala 29:58]
  assign _T_189 = {ccon_1_io_ack_o,ccon_0_io_ack_o,mcons_3_io_wb_ack_o,mcons_2_io_wb_ack_o,mcons_1_io_wb_ack_o,mcons_0_io_wb_ack_o}; // @[Cat.scala 29:58]
  assign _T_194 = {ccon_7_io_ack_o,ccon_6_io_ack_o,ccon_5_io_ack_o,ccon_4_io_ack_o,ccon_3_io_ack_o,ccon_2_io_ack_o}; // @[Cat.scala 29:58]
  assign _T_200 = {ccon_1_io_irq,ccon_0_io_irq,mcons_3_io_irq,mcons_2_io_irq,mcons_1_io_irq,mcons_0_io_irq}; // @[Cat.scala 29:58]
  assign _T_205 = {ccon_7_io_irq,ccon_6_io_irq,ccon_5_io_irq,ccon_4_io_irq,ccon_3_io_irq,ccon_2_io_irq}; // @[Cat.scala 29:58]
  assign wbs_ack_o = icon_wbs_ack_o; // @[UserProjectWrapper.scala 24:14]
  assign wbs_dat_o = icon_wbs_dat_o; // @[UserProjectWrapper.scala 24:14]
  assign la_data_out = {_T_8,_T_7}; // @[UserProjectWrapper.scala 37:15]
  assign io_out = icon_io_out; // @[UserProjectWrapper.scala 25:13]
  assign io_oeb = icon_io_oeb; // @[UserProjectWrapper.scala 25:13]
  assign user_irq = icon_irq; // @[UserProjectWrapper.scala 26:14]
  assign icon_wb_clk_i = wb_clk_i; // @[UserProjectWrapper.scala 22:13]
  assign icon_wb_rst_i = wb_rst_i; // @[UserProjectWrapper.scala 22:13]
  assign icon_wbs_stb_i = wbs_stb_i; // @[UserProjectWrapper.scala 24:14]
  assign icon_wbs_cyc_i = wbs_cyc_i; // @[UserProjectWrapper.scala 24:14]
  assign icon_wbs_we_i = wbs_we_i; // @[UserProjectWrapper.scala 24:14]
  assign icon_wbs_sel_i = wbs_sel_i; // @[UserProjectWrapper.scala 24:14]
  assign icon_wbs_dat_i = wbs_dat_i; // @[UserProjectWrapper.scala 24:14]
  assign icon_wbs_adr_i = wbs_adr_i; // @[UserProjectWrapper.scala 24:14]
  assign icon_io_in = io_in; // @[UserProjectWrapper.scala 25:13]
  assign icon_la_reset = {la_data_in[31:24],la_data_in[127:124]}; // @[UserProjectWrapper.scala 23:19]
  assign icon_m_wbs_ack_o = {_T_194,_T_189}; // @[UserProjectWrapper.scala 140:22]
  assign icon_m_wbs_dat_o_0 = mcons_0_io_wb_dat_o; // @[UserProjectWrapper.scala 59:27]
  assign icon_m_wbs_dat_o_1 = mcons_1_io_wb_dat_o; // @[UserProjectWrapper.scala 59:27]
  assign icon_m_wbs_dat_o_2 = mcons_2_io_wb_dat_o; // @[UserProjectWrapper.scala 59:27]
  assign icon_m_wbs_dat_o_3 = mcons_3_io_wb_dat_o; // @[UserProjectWrapper.scala 59:27]
  assign icon_m_wbs_dat_o_4 = ccon_0_io_dat_o; // @[UserProjectWrapper.scala 93:31]
  assign icon_m_wbs_dat_o_5 = ccon_1_io_dat_o; // @[UserProjectWrapper.scala 93:31]
  assign icon_m_wbs_dat_o_6 = ccon_2_io_dat_o; // @[UserProjectWrapper.scala 93:31]
  assign icon_m_wbs_dat_o_7 = ccon_3_io_dat_o; // @[UserProjectWrapper.scala 93:31]
  assign icon_m_wbs_dat_o_8 = ccon_4_io_dat_o; // @[UserProjectWrapper.scala 93:31]
  assign icon_m_wbs_dat_o_9 = ccon_5_io_dat_o; // @[UserProjectWrapper.scala 93:31]
  assign icon_m_wbs_dat_o_10 = ccon_6_io_dat_o; // @[UserProjectWrapper.scala 93:31]
  assign icon_m_wbs_dat_o_11 = ccon_7_io_dat_o; // @[UserProjectWrapper.scala 93:31]
  assign icon_m_irqs = {_T_205,_T_200}; // @[UserProjectWrapper.scala 141:17]
  assign icon_mt_pwm_h_0 = mcons_0_io_pwm_h; // @[UserProjectWrapper.scala 63:24]
  assign icon_mt_pwm_h_1 = mcons_1_io_pwm_h; // @[UserProjectWrapper.scala 63:24]
  assign icon_mt_pwm_h_2 = mcons_2_io_pwm_h; // @[UserProjectWrapper.scala 63:24]
  assign icon_mt_pwm_h_3 = mcons_3_io_pwm_h; // @[UserProjectWrapper.scala 63:24]
  assign icon_mt_pwm_l_0 = mcons_0_io_pwm_l; // @[UserProjectWrapper.scala 64:24]
  assign icon_mt_pwm_l_1 = mcons_1_io_pwm_l; // @[UserProjectWrapper.scala 64:24]
  assign icon_mt_pwm_l_2 = mcons_2_io_pwm_l; // @[UserProjectWrapper.scala 64:24]
  assign icon_mt_pwm_l_3 = mcons_3_io_pwm_l; // @[UserProjectWrapper.scala 64:24]
  assign icon_mt_sync_in = {_T_183,_T_180}; // @[UserProjectWrapper.scala 138:21]
  assign cordic_asel = 1'h0; // @[UserProjectWrapper.scala 32:18]
  assign cordic_e_i = la_data_in[127:96]; // @[UserProjectWrapper.scala 33:17]
  assign cordic_w_i = la_data_in[31:0]; // @[UserProjectWrapper.scala 36:17]
  assign cordic_se_i = la_data_in[95:64]; // @[UserProjectWrapper.scala 34:18]
  assign cordic_sw_i = la_data_in[63:32]; // @[UserProjectWrapper.scala 35:18]
  assign mcons_0_clock = icon_m_wb_clk_i; // @[UserProjectWrapper.scala 53:16]
  assign mcons_0_reset = icon_m_la_reset[0]; // @[UserProjectWrapper.scala 54:16]
  assign mcons_0_io_wb_adr_i = icon_m_wbs_adr_i; // @[UserProjectWrapper.scala 55:22]
  assign mcons_0_io_wb_dat_i = icon_m_wbs_dat_i; // @[UserProjectWrapper.scala 56:22]
  assign mcons_0_io_wb_we_i = icon_m_wbs_we_i; // @[UserProjectWrapper.scala 57:21]
  assign mcons_0_io_wb_cs_i = icon_m_wbs_cs_i[0]; // @[UserProjectWrapper.scala 58:21]
  assign mcons_0_io_QEI_ChA = icon_mt_QEI_ChA_0; // @[UserProjectWrapper.scala 61:21]
  assign mcons_0_io_QEI_ChB = icon_mt_QEI_ChB_0; // @[UserProjectWrapper.scala 62:21]
  assign mcons_0_io_sync_in = icon_mt_sync_out; // @[UserProjectWrapper.scala 75:23]
  assign mcons_0_io_pwm_test = icon_mt_pwm_test; // @[UserProjectWrapper.scala 66:22]
  assign mcons_0_io_clo_test = icon_mt_clo_test; // @[UserProjectWrapper.scala 67:22]
  assign mcons_1_clock = icon_m_wb_clk_i; // @[UserProjectWrapper.scala 53:16]
  assign mcons_1_reset = icon_m_la_reset[1]; // @[UserProjectWrapper.scala 54:16]
  assign mcons_1_io_wb_adr_i = icon_m_wbs_adr_i; // @[UserProjectWrapper.scala 55:22]
  assign mcons_1_io_wb_dat_i = icon_m_wbs_dat_i; // @[UserProjectWrapper.scala 56:22]
  assign mcons_1_io_wb_we_i = icon_m_wbs_we_i; // @[UserProjectWrapper.scala 57:21]
  assign mcons_1_io_wb_cs_i = icon_m_wbs_cs_i[1]; // @[UserProjectWrapper.scala 58:21]
  assign mcons_1_io_QEI_ChA = icon_mt_QEI_ChA_1; // @[UserProjectWrapper.scala 61:21]
  assign mcons_1_io_QEI_ChB = icon_mt_QEI_ChB_1; // @[UserProjectWrapper.scala 62:21]
  assign mcons_1_io_sync_in = mcons_0_io_sync_out; // @[UserProjectWrapper.scala 76:39]
  assign mcons_1_io_pwm_test = icon_mt_pwm_test; // @[UserProjectWrapper.scala 66:22]
  assign mcons_1_io_clo_test = icon_mt_clo_test; // @[UserProjectWrapper.scala 67:22]
  assign mcons_2_clock = icon_m_wb_clk_i; // @[UserProjectWrapper.scala 53:16]
  assign mcons_2_reset = icon_m_la_reset[2]; // @[UserProjectWrapper.scala 54:16]
  assign mcons_2_io_wb_adr_i = icon_m_wbs_adr_i; // @[UserProjectWrapper.scala 55:22]
  assign mcons_2_io_wb_dat_i = icon_m_wbs_dat_i; // @[UserProjectWrapper.scala 56:22]
  assign mcons_2_io_wb_we_i = icon_m_wbs_we_i; // @[UserProjectWrapper.scala 57:21]
  assign mcons_2_io_wb_cs_i = icon_m_wbs_cs_i[2]; // @[UserProjectWrapper.scala 58:21]
  assign mcons_2_io_QEI_ChA = icon_mt_QEI_ChA_2; // @[UserProjectWrapper.scala 61:21]
  assign mcons_2_io_QEI_ChB = icon_mt_QEI_ChB_2; // @[UserProjectWrapper.scala 62:21]
  assign mcons_2_io_sync_in = mcons_0_io_sync_out; // @[UserProjectWrapper.scala 76:39]
  assign mcons_2_io_pwm_test = icon_mt_pwm_test; // @[UserProjectWrapper.scala 66:22]
  assign mcons_2_io_clo_test = icon_mt_clo_test; // @[UserProjectWrapper.scala 67:22]
  assign mcons_3_clock = icon_m_wb_clk_i; // @[UserProjectWrapper.scala 53:16]
  assign mcons_3_reset = icon_m_la_reset[3]; // @[UserProjectWrapper.scala 54:16]
  assign mcons_3_io_wb_adr_i = icon_m_wbs_adr_i; // @[UserProjectWrapper.scala 55:22]
  assign mcons_3_io_wb_dat_i = icon_m_wbs_dat_i; // @[UserProjectWrapper.scala 56:22]
  assign mcons_3_io_wb_we_i = icon_m_wbs_we_i; // @[UserProjectWrapper.scala 57:21]
  assign mcons_3_io_wb_cs_i = icon_m_wbs_cs_i[3]; // @[UserProjectWrapper.scala 58:21]
  assign mcons_3_io_QEI_ChA = icon_mt_QEI_ChA_3; // @[UserProjectWrapper.scala 61:21]
  assign mcons_3_io_QEI_ChB = icon_mt_QEI_ChB_3; // @[UserProjectWrapper.scala 62:21]
  assign mcons_3_io_sync_in = mcons_0_io_sync_out; // @[UserProjectWrapper.scala 76:39]
  assign mcons_3_io_pwm_test = icon_mt_pwm_test; // @[UserProjectWrapper.scala 66:22]
  assign mcons_3_io_clo_test = icon_mt_clo_test; // @[UserProjectWrapper.scala 67:22]
  assign ccon_0_wb_clk_i = icon_m_wb_clk_i; // @[UserProjectWrapper.scala 86:16]
  assign ccon_0_wb_rst_i = icon_m_la_reset[4]; // @[UserProjectWrapper.scala 87:16]
  assign ccon_0_io_cs_i = icon_m_wbs_cs_i[4]; // @[UserProjectWrapper.scala 92:15]
  assign ccon_0_io_we_i = icon_m_wbs_we_i; // @[UserProjectWrapper.scala 91:15]
  assign ccon_0_io_adr_i = icon_m_wbs_adr_i; // @[UserProjectWrapper.scala 89:16]
  assign ccon_0_io_dat_i = icon_m_wbs_dat_i; // @[UserProjectWrapper.scala 90:16]
  assign ccon_0_io_dsi_in = icon_dsi; // @[UserProjectWrapper.scala 95:17]
  assign ccon_0_io_dataLastBlock = cb_0_0_io_wo; // @[UserProjectWrapper.scala 125:24]
  assign ccon_0_io_b_dat_o_0 = cb_0_0_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_0_io_b_dat_o_1 = cb_0_1_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_0_io_b_dat_o_2 = cb_0_2_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_0_io_b_dat_o_3 = cb_0_3_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_0_io_b_dat_o_4 = cb_0_4_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_0_io_b_dat_o_5 = cb_0_5_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_0_io_b_dat_o_6 = cb_0_6_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_0_io_b_dat_o_7 = cb_0_7_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_0_io_b_dat_o_8 = cb_0_8_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_0_io_b_dat_o_9 = cb_0_9_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_0_io_b_dat_o_10 = cb_0_10_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign cb_0_0_wb_clk_i = ccon_0_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_0_0_wb_rst_i = ccon_0_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_0_0_io_i_0_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_0_0_io_i_0_ci = ccon_0_io_dsi_o; // @[UserProjectWrapper.scala 118:14 UserProjectWrapper.scala 121:26]
  assign cb_0_0_io_i_1_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_0_0_io_i_1_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_0_0_io_i_2_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_0_0_io_i_2_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_0_0_io_i_3_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_0_0_io_i_3_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_0_0_io_i_4_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_0_0_io_i_4_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_0_0_io_i_5_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_0_0_io_i_5_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_0_0_io_i_6_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_0_0_io_i_6_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_0_0_io_i_7_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_0_0_io_i_7_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_0_0_io_vi = ccon_0_io_vout[0]; // @[UserProjectWrapper.scala 113:18]
  assign cb_0_0_io_vci = 1'h0; // @[UserProjectWrapper.scala 122:22]
  assign cb_0_0_io_eo = cb_0_1_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_0_0_io_cs_i = ccon_0_io_b_cs_i_0; // @[UserProjectWrapper.scala 107:20]
  assign cb_0_0_io_we_i = ccon_0_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_0_0_io_adr_i = ccon_0_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_0_0_io_dat_i = ccon_0_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_0_1_wb_clk_i = ccon_0_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_0_1_wb_rst_i = ccon_0_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_0_1_io_i_0_in1 = cb_0_0_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_1_io_i_0_ci = cb_0_0_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_1_io_i_1_in1 = cb_0_0_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_1_io_i_1_ci = cb_0_0_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_1_io_i_2_in1 = cb_0_0_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_1_io_i_2_ci = cb_0_0_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_1_io_i_3_in1 = cb_0_0_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_1_io_i_3_ci = cb_0_0_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_1_io_i_4_in1 = cb_0_0_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_1_io_i_4_ci = cb_0_0_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_1_io_i_5_in1 = cb_0_0_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_1_io_i_5_ci = cb_0_0_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_1_io_i_6_in1 = cb_0_0_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_1_io_i_6_ci = cb_0_0_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_1_io_i_7_in1 = cb_0_0_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_1_io_i_7_ci = cb_0_0_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_1_io_vi = ccon_0_io_vout[1]; // @[UserProjectWrapper.scala 113:18]
  assign cb_0_1_io_vci = cb_0_0_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_0_1_io_eo = cb_0_2_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_0_1_io_cs_i = ccon_0_io_b_cs_i_1; // @[UserProjectWrapper.scala 107:20]
  assign cb_0_1_io_we_i = ccon_0_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_0_1_io_adr_i = ccon_0_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_0_1_io_dat_i = ccon_0_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_0_2_wb_clk_i = ccon_0_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_0_2_wb_rst_i = ccon_0_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_0_2_io_i_0_in1 = cb_0_1_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_2_io_i_0_ci = cb_0_1_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_2_io_i_1_in1 = cb_0_1_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_2_io_i_1_ci = cb_0_1_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_2_io_i_2_in1 = cb_0_1_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_2_io_i_2_ci = cb_0_1_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_2_io_i_3_in1 = cb_0_1_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_2_io_i_3_ci = cb_0_1_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_2_io_i_4_in1 = cb_0_1_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_2_io_i_4_ci = cb_0_1_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_2_io_i_5_in1 = cb_0_1_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_2_io_i_5_ci = cb_0_1_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_2_io_i_6_in1 = cb_0_1_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_2_io_i_6_ci = cb_0_1_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_2_io_i_7_in1 = cb_0_1_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_2_io_i_7_ci = cb_0_1_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_2_io_vi = ccon_0_io_vout[2]; // @[UserProjectWrapper.scala 113:18]
  assign cb_0_2_io_vci = cb_0_1_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_0_2_io_eo = cb_0_3_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_0_2_io_cs_i = ccon_0_io_b_cs_i_2; // @[UserProjectWrapper.scala 107:20]
  assign cb_0_2_io_we_i = ccon_0_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_0_2_io_adr_i = ccon_0_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_0_2_io_dat_i = ccon_0_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_0_3_wb_clk_i = ccon_0_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_0_3_wb_rst_i = ccon_0_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_0_3_io_i_0_in1 = cb_0_2_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_3_io_i_0_ci = cb_0_2_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_3_io_i_1_in1 = cb_0_2_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_3_io_i_1_ci = cb_0_2_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_3_io_i_2_in1 = cb_0_2_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_3_io_i_2_ci = cb_0_2_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_3_io_i_3_in1 = cb_0_2_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_3_io_i_3_ci = cb_0_2_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_3_io_i_4_in1 = cb_0_2_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_3_io_i_4_ci = cb_0_2_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_3_io_i_5_in1 = cb_0_2_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_3_io_i_5_ci = cb_0_2_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_3_io_i_6_in1 = cb_0_2_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_3_io_i_6_ci = cb_0_2_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_3_io_i_7_in1 = cb_0_2_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_3_io_i_7_ci = cb_0_2_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_3_io_vi = ccon_0_io_vout[3]; // @[UserProjectWrapper.scala 113:18]
  assign cb_0_3_io_vci = cb_0_2_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_0_3_io_eo = cb_0_4_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_0_3_io_cs_i = ccon_0_io_b_cs_i_3; // @[UserProjectWrapper.scala 107:20]
  assign cb_0_3_io_we_i = ccon_0_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_0_3_io_adr_i = ccon_0_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_0_3_io_dat_i = ccon_0_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_0_4_wb_clk_i = ccon_0_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_0_4_wb_rst_i = ccon_0_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_0_4_io_i_0_in1 = cb_0_3_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_4_io_i_0_ci = cb_0_3_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_4_io_i_1_in1 = cb_0_3_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_4_io_i_1_ci = cb_0_3_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_4_io_i_2_in1 = cb_0_3_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_4_io_i_2_ci = cb_0_3_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_4_io_i_3_in1 = cb_0_3_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_4_io_i_3_ci = cb_0_3_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_4_io_i_4_in1 = cb_0_3_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_4_io_i_4_ci = cb_0_3_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_4_io_i_5_in1 = cb_0_3_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_4_io_i_5_ci = cb_0_3_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_4_io_i_6_in1 = cb_0_3_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_4_io_i_6_ci = cb_0_3_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_4_io_i_7_in1 = cb_0_3_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_4_io_i_7_ci = cb_0_3_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_4_io_vi = ccon_0_io_vout[4]; // @[UserProjectWrapper.scala 113:18]
  assign cb_0_4_io_vci = cb_0_3_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_0_4_io_eo = cb_0_5_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_0_4_io_cs_i = ccon_0_io_b_cs_i_4; // @[UserProjectWrapper.scala 107:20]
  assign cb_0_4_io_we_i = ccon_0_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_0_4_io_adr_i = ccon_0_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_0_4_io_dat_i = ccon_0_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_0_5_wb_clk_i = ccon_0_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_0_5_wb_rst_i = ccon_0_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_0_5_io_i_0_in1 = cb_0_4_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_5_io_i_0_ci = cb_0_4_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_5_io_i_1_in1 = cb_0_4_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_5_io_i_1_ci = cb_0_4_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_5_io_i_2_in1 = cb_0_4_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_5_io_i_2_ci = cb_0_4_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_5_io_i_3_in1 = cb_0_4_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_5_io_i_3_ci = cb_0_4_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_5_io_i_4_in1 = cb_0_4_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_5_io_i_4_ci = cb_0_4_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_5_io_i_5_in1 = cb_0_4_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_5_io_i_5_ci = cb_0_4_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_5_io_i_6_in1 = cb_0_4_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_5_io_i_6_ci = cb_0_4_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_5_io_i_7_in1 = cb_0_4_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_5_io_i_7_ci = cb_0_4_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_5_io_vi = ccon_0_io_vout[5]; // @[UserProjectWrapper.scala 113:18]
  assign cb_0_5_io_vci = cb_0_4_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_0_5_io_eo = cb_0_6_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_0_5_io_cs_i = ccon_0_io_b_cs_i_5; // @[UserProjectWrapper.scala 107:20]
  assign cb_0_5_io_we_i = ccon_0_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_0_5_io_adr_i = ccon_0_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_0_5_io_dat_i = ccon_0_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_0_6_wb_clk_i = ccon_0_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_0_6_wb_rst_i = ccon_0_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_0_6_io_i_0_in1 = cb_0_5_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_6_io_i_0_ci = cb_0_5_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_6_io_i_1_in1 = cb_0_5_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_6_io_i_1_ci = cb_0_5_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_6_io_i_2_in1 = cb_0_5_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_6_io_i_2_ci = cb_0_5_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_6_io_i_3_in1 = cb_0_5_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_6_io_i_3_ci = cb_0_5_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_6_io_i_4_in1 = cb_0_5_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_6_io_i_4_ci = cb_0_5_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_6_io_i_5_in1 = cb_0_5_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_6_io_i_5_ci = cb_0_5_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_6_io_i_6_in1 = cb_0_5_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_6_io_i_6_ci = cb_0_5_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_6_io_i_7_in1 = cb_0_5_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_6_io_i_7_ci = cb_0_5_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_6_io_vi = ccon_0_io_vout[6]; // @[UserProjectWrapper.scala 113:18]
  assign cb_0_6_io_vci = cb_0_5_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_0_6_io_eo = cb_0_7_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_0_6_io_cs_i = ccon_0_io_b_cs_i_6; // @[UserProjectWrapper.scala 107:20]
  assign cb_0_6_io_we_i = ccon_0_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_0_6_io_adr_i = ccon_0_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_0_6_io_dat_i = ccon_0_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_0_7_wb_clk_i = ccon_0_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_0_7_wb_rst_i = ccon_0_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_0_7_io_i_0_in1 = cb_0_6_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_7_io_i_0_ci = cb_0_6_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_7_io_i_1_in1 = cb_0_6_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_7_io_i_1_ci = cb_0_6_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_7_io_i_2_in1 = cb_0_6_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_7_io_i_2_ci = cb_0_6_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_7_io_i_3_in1 = cb_0_6_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_7_io_i_3_ci = cb_0_6_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_7_io_i_4_in1 = cb_0_6_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_7_io_i_4_ci = cb_0_6_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_7_io_i_5_in1 = cb_0_6_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_7_io_i_5_ci = cb_0_6_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_7_io_i_6_in1 = cb_0_6_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_7_io_i_6_ci = cb_0_6_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_7_io_i_7_in1 = cb_0_6_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_7_io_i_7_ci = cb_0_6_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_7_io_vi = ccon_0_io_vout[7]; // @[UserProjectWrapper.scala 113:18]
  assign cb_0_7_io_vci = cb_0_6_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_0_7_io_eo = cb_0_8_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_0_7_io_cs_i = ccon_0_io_b_cs_i_7; // @[UserProjectWrapper.scala 107:20]
  assign cb_0_7_io_we_i = ccon_0_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_0_7_io_adr_i = ccon_0_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_0_7_io_dat_i = ccon_0_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_0_8_wb_clk_i = ccon_0_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_0_8_wb_rst_i = ccon_0_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_0_8_io_i_0_in1 = cb_0_7_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_8_io_i_0_ci = cb_0_7_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_8_io_i_1_in1 = cb_0_7_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_8_io_i_1_ci = cb_0_7_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_8_io_i_2_in1 = cb_0_7_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_8_io_i_2_ci = cb_0_7_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_8_io_i_3_in1 = cb_0_7_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_8_io_i_3_ci = cb_0_7_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_8_io_i_4_in1 = cb_0_7_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_8_io_i_4_ci = cb_0_7_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_8_io_i_5_in1 = cb_0_7_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_8_io_i_5_ci = cb_0_7_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_8_io_i_6_in1 = cb_0_7_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_8_io_i_6_ci = cb_0_7_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_8_io_i_7_in1 = cb_0_7_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_8_io_i_7_ci = cb_0_7_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_8_io_vi = ccon_0_io_vout[8]; // @[UserProjectWrapper.scala 113:18]
  assign cb_0_8_io_vci = cb_0_7_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_0_8_io_eo = cb_0_9_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_0_8_io_cs_i = ccon_0_io_b_cs_i_8; // @[UserProjectWrapper.scala 107:20]
  assign cb_0_8_io_we_i = ccon_0_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_0_8_io_adr_i = ccon_0_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_0_8_io_dat_i = ccon_0_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_0_9_wb_clk_i = ccon_0_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_0_9_wb_rst_i = ccon_0_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_0_9_io_i_0_in1 = cb_0_8_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_9_io_i_0_ci = cb_0_8_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_9_io_i_1_in1 = cb_0_8_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_9_io_i_1_ci = cb_0_8_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_9_io_i_2_in1 = cb_0_8_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_9_io_i_2_ci = cb_0_8_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_9_io_i_3_in1 = cb_0_8_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_9_io_i_3_ci = cb_0_8_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_9_io_i_4_in1 = cb_0_8_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_9_io_i_4_ci = cb_0_8_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_9_io_i_5_in1 = cb_0_8_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_9_io_i_5_ci = cb_0_8_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_9_io_i_6_in1 = cb_0_8_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_9_io_i_6_ci = cb_0_8_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_9_io_i_7_in1 = cb_0_8_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_9_io_i_7_ci = cb_0_8_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_9_io_vi = ccon_0_io_vout[9]; // @[UserProjectWrapper.scala 113:18]
  assign cb_0_9_io_vci = cb_0_8_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_0_9_io_eo = cb_0_10_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_0_9_io_cs_i = ccon_0_io_b_cs_i_9; // @[UserProjectWrapper.scala 107:20]
  assign cb_0_9_io_we_i = ccon_0_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_0_9_io_adr_i = ccon_0_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_0_9_io_dat_i = ccon_0_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_0_10_wb_clk_i = ccon_0_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_0_10_wb_rst_i = ccon_0_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_0_10_io_i_0_in1 = cb_0_9_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_10_io_i_0_ci = cb_0_9_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_10_io_i_1_in1 = cb_0_9_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_10_io_i_1_ci = cb_0_9_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_10_io_i_2_in1 = cb_0_9_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_10_io_i_2_ci = cb_0_9_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_10_io_i_3_in1 = cb_0_9_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_10_io_i_3_ci = cb_0_9_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_10_io_i_4_in1 = cb_0_9_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_10_io_i_4_ci = cb_0_9_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_10_io_i_5_in1 = cb_0_9_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_10_io_i_5_ci = cb_0_9_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_10_io_i_6_in1 = cb_0_9_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_10_io_i_6_ci = cb_0_9_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_10_io_i_7_in1 = cb_0_9_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_0_10_io_i_7_ci = cb_0_9_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_0_10_io_vi = ccon_0_io_vout[10]; // @[UserProjectWrapper.scala 113:18]
  assign cb_0_10_io_vci = cb_0_9_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_0_10_io_eo = {_T_36,_T_33}; // @[UserProjectWrapper.scala 124:31]
  assign cb_0_10_io_cs_i = ccon_0_io_b_cs_i_10; // @[UserProjectWrapper.scala 107:20]
  assign cb_0_10_io_we_i = ccon_0_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_0_10_io_adr_i = ccon_0_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_0_10_io_dat_i = ccon_0_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign ccon_1_wb_clk_i = icon_m_wb_clk_i; // @[UserProjectWrapper.scala 86:16]
  assign ccon_1_wb_rst_i = icon_m_la_reset[5]; // @[UserProjectWrapper.scala 87:16]
  assign ccon_1_io_cs_i = icon_m_wbs_cs_i[5]; // @[UserProjectWrapper.scala 92:15]
  assign ccon_1_io_we_i = icon_m_wbs_we_i; // @[UserProjectWrapper.scala 91:15]
  assign ccon_1_io_adr_i = icon_m_wbs_adr_i; // @[UserProjectWrapper.scala 89:16]
  assign ccon_1_io_dat_i = icon_m_wbs_dat_i; // @[UserProjectWrapper.scala 90:16]
  assign ccon_1_io_dsi_in = icon_dsi; // @[UserProjectWrapper.scala 95:17]
  assign ccon_1_io_dataLastBlock = cb_1_0_io_wo; // @[UserProjectWrapper.scala 125:24]
  assign ccon_1_io_b_dat_o_0 = cb_1_0_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_1_io_b_dat_o_1 = cb_1_1_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_1_io_b_dat_o_2 = cb_1_2_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_1_io_b_dat_o_3 = cb_1_3_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_1_io_b_dat_o_4 = cb_1_4_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_1_io_b_dat_o_5 = cb_1_5_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_1_io_b_dat_o_6 = cb_1_6_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_1_io_b_dat_o_7 = cb_1_7_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_1_io_b_dat_o_8 = cb_1_8_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_1_io_b_dat_o_9 = cb_1_9_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_1_io_b_dat_o_10 = cb_1_10_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign cb_1_0_wb_clk_i = ccon_1_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_1_0_wb_rst_i = ccon_1_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_1_0_io_i_0_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_1_0_io_i_0_ci = ccon_1_io_dsi_o; // @[UserProjectWrapper.scala 118:14 UserProjectWrapper.scala 121:26]
  assign cb_1_0_io_i_1_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_1_0_io_i_1_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_1_0_io_i_2_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_1_0_io_i_2_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_1_0_io_i_3_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_1_0_io_i_3_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_1_0_io_i_4_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_1_0_io_i_4_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_1_0_io_i_5_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_1_0_io_i_5_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_1_0_io_i_6_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_1_0_io_i_6_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_1_0_io_i_7_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_1_0_io_i_7_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_1_0_io_vi = ccon_1_io_vout[0]; // @[UserProjectWrapper.scala 113:18]
  assign cb_1_0_io_vci = 1'h0; // @[UserProjectWrapper.scala 122:22]
  assign cb_1_0_io_eo = cb_1_1_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_1_0_io_cs_i = ccon_1_io_b_cs_i_0; // @[UserProjectWrapper.scala 107:20]
  assign cb_1_0_io_we_i = ccon_1_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_1_0_io_adr_i = ccon_1_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_1_0_io_dat_i = ccon_1_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_1_1_wb_clk_i = ccon_1_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_1_1_wb_rst_i = ccon_1_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_1_1_io_i_0_in1 = cb_1_0_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_1_io_i_0_ci = cb_1_0_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_1_io_i_1_in1 = cb_1_0_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_1_io_i_1_ci = cb_1_0_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_1_io_i_2_in1 = cb_1_0_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_1_io_i_2_ci = cb_1_0_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_1_io_i_3_in1 = cb_1_0_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_1_io_i_3_ci = cb_1_0_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_1_io_i_4_in1 = cb_1_0_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_1_io_i_4_ci = cb_1_0_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_1_io_i_5_in1 = cb_1_0_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_1_io_i_5_ci = cb_1_0_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_1_io_i_6_in1 = cb_1_0_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_1_io_i_6_ci = cb_1_0_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_1_io_i_7_in1 = cb_1_0_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_1_io_i_7_ci = cb_1_0_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_1_io_vi = ccon_1_io_vout[1]; // @[UserProjectWrapper.scala 113:18]
  assign cb_1_1_io_vci = cb_1_0_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_1_1_io_eo = cb_1_2_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_1_1_io_cs_i = ccon_1_io_b_cs_i_1; // @[UserProjectWrapper.scala 107:20]
  assign cb_1_1_io_we_i = ccon_1_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_1_1_io_adr_i = ccon_1_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_1_1_io_dat_i = ccon_1_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_1_2_wb_clk_i = ccon_1_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_1_2_wb_rst_i = ccon_1_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_1_2_io_i_0_in1 = cb_1_1_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_2_io_i_0_ci = cb_1_1_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_2_io_i_1_in1 = cb_1_1_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_2_io_i_1_ci = cb_1_1_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_2_io_i_2_in1 = cb_1_1_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_2_io_i_2_ci = cb_1_1_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_2_io_i_3_in1 = cb_1_1_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_2_io_i_3_ci = cb_1_1_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_2_io_i_4_in1 = cb_1_1_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_2_io_i_4_ci = cb_1_1_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_2_io_i_5_in1 = cb_1_1_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_2_io_i_5_ci = cb_1_1_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_2_io_i_6_in1 = cb_1_1_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_2_io_i_6_ci = cb_1_1_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_2_io_i_7_in1 = cb_1_1_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_2_io_i_7_ci = cb_1_1_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_2_io_vi = ccon_1_io_vout[2]; // @[UserProjectWrapper.scala 113:18]
  assign cb_1_2_io_vci = cb_1_1_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_1_2_io_eo = cb_1_3_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_1_2_io_cs_i = ccon_1_io_b_cs_i_2; // @[UserProjectWrapper.scala 107:20]
  assign cb_1_2_io_we_i = ccon_1_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_1_2_io_adr_i = ccon_1_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_1_2_io_dat_i = ccon_1_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_1_3_wb_clk_i = ccon_1_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_1_3_wb_rst_i = ccon_1_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_1_3_io_i_0_in1 = cb_1_2_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_3_io_i_0_ci = cb_1_2_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_3_io_i_1_in1 = cb_1_2_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_3_io_i_1_ci = cb_1_2_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_3_io_i_2_in1 = cb_1_2_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_3_io_i_2_ci = cb_1_2_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_3_io_i_3_in1 = cb_1_2_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_3_io_i_3_ci = cb_1_2_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_3_io_i_4_in1 = cb_1_2_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_3_io_i_4_ci = cb_1_2_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_3_io_i_5_in1 = cb_1_2_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_3_io_i_5_ci = cb_1_2_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_3_io_i_6_in1 = cb_1_2_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_3_io_i_6_ci = cb_1_2_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_3_io_i_7_in1 = cb_1_2_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_3_io_i_7_ci = cb_1_2_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_3_io_vi = ccon_1_io_vout[3]; // @[UserProjectWrapper.scala 113:18]
  assign cb_1_3_io_vci = cb_1_2_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_1_3_io_eo = cb_1_4_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_1_3_io_cs_i = ccon_1_io_b_cs_i_3; // @[UserProjectWrapper.scala 107:20]
  assign cb_1_3_io_we_i = ccon_1_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_1_3_io_adr_i = ccon_1_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_1_3_io_dat_i = ccon_1_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_1_4_wb_clk_i = ccon_1_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_1_4_wb_rst_i = ccon_1_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_1_4_io_i_0_in1 = cb_1_3_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_4_io_i_0_ci = cb_1_3_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_4_io_i_1_in1 = cb_1_3_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_4_io_i_1_ci = cb_1_3_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_4_io_i_2_in1 = cb_1_3_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_4_io_i_2_ci = cb_1_3_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_4_io_i_3_in1 = cb_1_3_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_4_io_i_3_ci = cb_1_3_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_4_io_i_4_in1 = cb_1_3_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_4_io_i_4_ci = cb_1_3_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_4_io_i_5_in1 = cb_1_3_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_4_io_i_5_ci = cb_1_3_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_4_io_i_6_in1 = cb_1_3_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_4_io_i_6_ci = cb_1_3_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_4_io_i_7_in1 = cb_1_3_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_4_io_i_7_ci = cb_1_3_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_4_io_vi = ccon_1_io_vout[4]; // @[UserProjectWrapper.scala 113:18]
  assign cb_1_4_io_vci = cb_1_3_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_1_4_io_eo = cb_1_5_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_1_4_io_cs_i = ccon_1_io_b_cs_i_4; // @[UserProjectWrapper.scala 107:20]
  assign cb_1_4_io_we_i = ccon_1_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_1_4_io_adr_i = ccon_1_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_1_4_io_dat_i = ccon_1_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_1_5_wb_clk_i = ccon_1_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_1_5_wb_rst_i = ccon_1_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_1_5_io_i_0_in1 = cb_1_4_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_5_io_i_0_ci = cb_1_4_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_5_io_i_1_in1 = cb_1_4_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_5_io_i_1_ci = cb_1_4_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_5_io_i_2_in1 = cb_1_4_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_5_io_i_2_ci = cb_1_4_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_5_io_i_3_in1 = cb_1_4_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_5_io_i_3_ci = cb_1_4_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_5_io_i_4_in1 = cb_1_4_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_5_io_i_4_ci = cb_1_4_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_5_io_i_5_in1 = cb_1_4_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_5_io_i_5_ci = cb_1_4_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_5_io_i_6_in1 = cb_1_4_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_5_io_i_6_ci = cb_1_4_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_5_io_i_7_in1 = cb_1_4_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_5_io_i_7_ci = cb_1_4_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_5_io_vi = ccon_1_io_vout[5]; // @[UserProjectWrapper.scala 113:18]
  assign cb_1_5_io_vci = cb_1_4_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_1_5_io_eo = cb_1_6_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_1_5_io_cs_i = ccon_1_io_b_cs_i_5; // @[UserProjectWrapper.scala 107:20]
  assign cb_1_5_io_we_i = ccon_1_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_1_5_io_adr_i = ccon_1_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_1_5_io_dat_i = ccon_1_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_1_6_wb_clk_i = ccon_1_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_1_6_wb_rst_i = ccon_1_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_1_6_io_i_0_in1 = cb_1_5_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_6_io_i_0_ci = cb_1_5_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_6_io_i_1_in1 = cb_1_5_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_6_io_i_1_ci = cb_1_5_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_6_io_i_2_in1 = cb_1_5_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_6_io_i_2_ci = cb_1_5_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_6_io_i_3_in1 = cb_1_5_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_6_io_i_3_ci = cb_1_5_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_6_io_i_4_in1 = cb_1_5_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_6_io_i_4_ci = cb_1_5_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_6_io_i_5_in1 = cb_1_5_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_6_io_i_5_ci = cb_1_5_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_6_io_i_6_in1 = cb_1_5_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_6_io_i_6_ci = cb_1_5_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_6_io_i_7_in1 = cb_1_5_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_6_io_i_7_ci = cb_1_5_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_6_io_vi = ccon_1_io_vout[6]; // @[UserProjectWrapper.scala 113:18]
  assign cb_1_6_io_vci = cb_1_5_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_1_6_io_eo = cb_1_7_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_1_6_io_cs_i = ccon_1_io_b_cs_i_6; // @[UserProjectWrapper.scala 107:20]
  assign cb_1_6_io_we_i = ccon_1_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_1_6_io_adr_i = ccon_1_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_1_6_io_dat_i = ccon_1_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_1_7_wb_clk_i = ccon_1_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_1_7_wb_rst_i = ccon_1_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_1_7_io_i_0_in1 = cb_1_6_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_7_io_i_0_ci = cb_1_6_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_7_io_i_1_in1 = cb_1_6_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_7_io_i_1_ci = cb_1_6_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_7_io_i_2_in1 = cb_1_6_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_7_io_i_2_ci = cb_1_6_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_7_io_i_3_in1 = cb_1_6_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_7_io_i_3_ci = cb_1_6_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_7_io_i_4_in1 = cb_1_6_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_7_io_i_4_ci = cb_1_6_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_7_io_i_5_in1 = cb_1_6_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_7_io_i_5_ci = cb_1_6_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_7_io_i_6_in1 = cb_1_6_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_7_io_i_6_ci = cb_1_6_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_7_io_i_7_in1 = cb_1_6_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_7_io_i_7_ci = cb_1_6_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_7_io_vi = ccon_1_io_vout[7]; // @[UserProjectWrapper.scala 113:18]
  assign cb_1_7_io_vci = cb_1_6_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_1_7_io_eo = cb_1_8_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_1_7_io_cs_i = ccon_1_io_b_cs_i_7; // @[UserProjectWrapper.scala 107:20]
  assign cb_1_7_io_we_i = ccon_1_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_1_7_io_adr_i = ccon_1_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_1_7_io_dat_i = ccon_1_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_1_8_wb_clk_i = ccon_1_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_1_8_wb_rst_i = ccon_1_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_1_8_io_i_0_in1 = cb_1_7_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_8_io_i_0_ci = cb_1_7_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_8_io_i_1_in1 = cb_1_7_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_8_io_i_1_ci = cb_1_7_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_8_io_i_2_in1 = cb_1_7_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_8_io_i_2_ci = cb_1_7_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_8_io_i_3_in1 = cb_1_7_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_8_io_i_3_ci = cb_1_7_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_8_io_i_4_in1 = cb_1_7_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_8_io_i_4_ci = cb_1_7_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_8_io_i_5_in1 = cb_1_7_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_8_io_i_5_ci = cb_1_7_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_8_io_i_6_in1 = cb_1_7_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_8_io_i_6_ci = cb_1_7_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_8_io_i_7_in1 = cb_1_7_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_8_io_i_7_ci = cb_1_7_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_8_io_vi = ccon_1_io_vout[8]; // @[UserProjectWrapper.scala 113:18]
  assign cb_1_8_io_vci = cb_1_7_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_1_8_io_eo = cb_1_9_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_1_8_io_cs_i = ccon_1_io_b_cs_i_8; // @[UserProjectWrapper.scala 107:20]
  assign cb_1_8_io_we_i = ccon_1_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_1_8_io_adr_i = ccon_1_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_1_8_io_dat_i = ccon_1_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_1_9_wb_clk_i = ccon_1_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_1_9_wb_rst_i = ccon_1_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_1_9_io_i_0_in1 = cb_1_8_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_9_io_i_0_ci = cb_1_8_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_9_io_i_1_in1 = cb_1_8_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_9_io_i_1_ci = cb_1_8_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_9_io_i_2_in1 = cb_1_8_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_9_io_i_2_ci = cb_1_8_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_9_io_i_3_in1 = cb_1_8_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_9_io_i_3_ci = cb_1_8_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_9_io_i_4_in1 = cb_1_8_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_9_io_i_4_ci = cb_1_8_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_9_io_i_5_in1 = cb_1_8_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_9_io_i_5_ci = cb_1_8_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_9_io_i_6_in1 = cb_1_8_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_9_io_i_6_ci = cb_1_8_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_9_io_i_7_in1 = cb_1_8_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_9_io_i_7_ci = cb_1_8_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_9_io_vi = ccon_1_io_vout[9]; // @[UserProjectWrapper.scala 113:18]
  assign cb_1_9_io_vci = cb_1_8_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_1_9_io_eo = cb_1_10_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_1_9_io_cs_i = ccon_1_io_b_cs_i_9; // @[UserProjectWrapper.scala 107:20]
  assign cb_1_9_io_we_i = ccon_1_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_1_9_io_adr_i = ccon_1_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_1_9_io_dat_i = ccon_1_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_1_10_wb_clk_i = ccon_1_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_1_10_wb_rst_i = ccon_1_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_1_10_io_i_0_in1 = cb_1_9_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_10_io_i_0_ci = cb_1_9_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_10_io_i_1_in1 = cb_1_9_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_10_io_i_1_ci = cb_1_9_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_10_io_i_2_in1 = cb_1_9_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_10_io_i_2_ci = cb_1_9_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_10_io_i_3_in1 = cb_1_9_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_10_io_i_3_ci = cb_1_9_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_10_io_i_4_in1 = cb_1_9_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_10_io_i_4_ci = cb_1_9_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_10_io_i_5_in1 = cb_1_9_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_10_io_i_5_ci = cb_1_9_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_10_io_i_6_in1 = cb_1_9_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_10_io_i_6_ci = cb_1_9_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_10_io_i_7_in1 = cb_1_9_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_1_10_io_i_7_ci = cb_1_9_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_1_10_io_vi = ccon_1_io_vout[10]; // @[UserProjectWrapper.scala 113:18]
  assign cb_1_10_io_vci = cb_1_9_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_1_10_io_eo = {_T_56,_T_53}; // @[UserProjectWrapper.scala 124:31]
  assign cb_1_10_io_cs_i = ccon_1_io_b_cs_i_10; // @[UserProjectWrapper.scala 107:20]
  assign cb_1_10_io_we_i = ccon_1_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_1_10_io_adr_i = ccon_1_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_1_10_io_dat_i = ccon_1_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign ccon_2_wb_clk_i = icon_m_wb_clk_i; // @[UserProjectWrapper.scala 86:16]
  assign ccon_2_wb_rst_i = icon_m_la_reset[6]; // @[UserProjectWrapper.scala 87:16]
  assign ccon_2_io_cs_i = icon_m_wbs_cs_i[6]; // @[UserProjectWrapper.scala 92:15]
  assign ccon_2_io_we_i = icon_m_wbs_we_i; // @[UserProjectWrapper.scala 91:15]
  assign ccon_2_io_adr_i = icon_m_wbs_adr_i; // @[UserProjectWrapper.scala 89:16]
  assign ccon_2_io_dat_i = icon_m_wbs_dat_i; // @[UserProjectWrapper.scala 90:16]
  assign ccon_2_io_dsi_in = icon_dsi; // @[UserProjectWrapper.scala 95:17]
  assign ccon_2_io_dataLastBlock = cb_2_0_io_wo; // @[UserProjectWrapper.scala 125:24]
  assign ccon_2_io_b_dat_o_0 = cb_2_0_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_2_io_b_dat_o_1 = cb_2_1_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_2_io_b_dat_o_2 = cb_2_2_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_2_io_b_dat_o_3 = cb_2_3_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_2_io_b_dat_o_4 = cb_2_4_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_2_io_b_dat_o_5 = cb_2_5_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_2_io_b_dat_o_6 = cb_2_6_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_2_io_b_dat_o_7 = cb_2_7_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_2_io_b_dat_o_8 = cb_2_8_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_2_io_b_dat_o_9 = cb_2_9_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_2_io_b_dat_o_10 = cb_2_10_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign cb_2_0_wb_clk_i = ccon_2_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_2_0_wb_rst_i = ccon_2_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_2_0_io_i_0_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_2_0_io_i_0_ci = ccon_2_io_dsi_o; // @[UserProjectWrapper.scala 118:14 UserProjectWrapper.scala 121:26]
  assign cb_2_0_io_i_1_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_2_0_io_i_1_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_2_0_io_i_2_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_2_0_io_i_2_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_2_0_io_i_3_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_2_0_io_i_3_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_2_0_io_i_4_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_2_0_io_i_4_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_2_0_io_i_5_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_2_0_io_i_5_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_2_0_io_i_6_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_2_0_io_i_6_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_2_0_io_i_7_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_2_0_io_i_7_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_2_0_io_vi = ccon_2_io_vout[0]; // @[UserProjectWrapper.scala 113:18]
  assign cb_2_0_io_vci = 1'h0; // @[UserProjectWrapper.scala 122:22]
  assign cb_2_0_io_eo = cb_2_1_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_2_0_io_cs_i = ccon_2_io_b_cs_i_0; // @[UserProjectWrapper.scala 107:20]
  assign cb_2_0_io_we_i = ccon_2_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_2_0_io_adr_i = ccon_2_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_2_0_io_dat_i = ccon_2_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_2_1_wb_clk_i = ccon_2_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_2_1_wb_rst_i = ccon_2_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_2_1_io_i_0_in1 = cb_2_0_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_1_io_i_0_ci = cb_2_0_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_1_io_i_1_in1 = cb_2_0_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_1_io_i_1_ci = cb_2_0_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_1_io_i_2_in1 = cb_2_0_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_1_io_i_2_ci = cb_2_0_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_1_io_i_3_in1 = cb_2_0_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_1_io_i_3_ci = cb_2_0_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_1_io_i_4_in1 = cb_2_0_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_1_io_i_4_ci = cb_2_0_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_1_io_i_5_in1 = cb_2_0_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_1_io_i_5_ci = cb_2_0_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_1_io_i_6_in1 = cb_2_0_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_1_io_i_6_ci = cb_2_0_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_1_io_i_7_in1 = cb_2_0_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_1_io_i_7_ci = cb_2_0_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_1_io_vi = ccon_2_io_vout[1]; // @[UserProjectWrapper.scala 113:18]
  assign cb_2_1_io_vci = cb_2_0_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_2_1_io_eo = cb_2_2_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_2_1_io_cs_i = ccon_2_io_b_cs_i_1; // @[UserProjectWrapper.scala 107:20]
  assign cb_2_1_io_we_i = ccon_2_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_2_1_io_adr_i = ccon_2_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_2_1_io_dat_i = ccon_2_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_2_2_wb_clk_i = ccon_2_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_2_2_wb_rst_i = ccon_2_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_2_2_io_i_0_in1 = cb_2_1_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_2_io_i_0_ci = cb_2_1_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_2_io_i_1_in1 = cb_2_1_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_2_io_i_1_ci = cb_2_1_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_2_io_i_2_in1 = cb_2_1_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_2_io_i_2_ci = cb_2_1_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_2_io_i_3_in1 = cb_2_1_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_2_io_i_3_ci = cb_2_1_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_2_io_i_4_in1 = cb_2_1_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_2_io_i_4_ci = cb_2_1_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_2_io_i_5_in1 = cb_2_1_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_2_io_i_5_ci = cb_2_1_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_2_io_i_6_in1 = cb_2_1_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_2_io_i_6_ci = cb_2_1_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_2_io_i_7_in1 = cb_2_1_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_2_io_i_7_ci = cb_2_1_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_2_io_vi = ccon_2_io_vout[2]; // @[UserProjectWrapper.scala 113:18]
  assign cb_2_2_io_vci = cb_2_1_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_2_2_io_eo = cb_2_3_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_2_2_io_cs_i = ccon_2_io_b_cs_i_2; // @[UserProjectWrapper.scala 107:20]
  assign cb_2_2_io_we_i = ccon_2_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_2_2_io_adr_i = ccon_2_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_2_2_io_dat_i = ccon_2_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_2_3_wb_clk_i = ccon_2_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_2_3_wb_rst_i = ccon_2_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_2_3_io_i_0_in1 = cb_2_2_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_3_io_i_0_ci = cb_2_2_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_3_io_i_1_in1 = cb_2_2_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_3_io_i_1_ci = cb_2_2_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_3_io_i_2_in1 = cb_2_2_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_3_io_i_2_ci = cb_2_2_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_3_io_i_3_in1 = cb_2_2_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_3_io_i_3_ci = cb_2_2_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_3_io_i_4_in1 = cb_2_2_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_3_io_i_4_ci = cb_2_2_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_3_io_i_5_in1 = cb_2_2_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_3_io_i_5_ci = cb_2_2_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_3_io_i_6_in1 = cb_2_2_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_3_io_i_6_ci = cb_2_2_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_3_io_i_7_in1 = cb_2_2_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_3_io_i_7_ci = cb_2_2_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_3_io_vi = ccon_2_io_vout[3]; // @[UserProjectWrapper.scala 113:18]
  assign cb_2_3_io_vci = cb_2_2_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_2_3_io_eo = cb_2_4_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_2_3_io_cs_i = ccon_2_io_b_cs_i_3; // @[UserProjectWrapper.scala 107:20]
  assign cb_2_3_io_we_i = ccon_2_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_2_3_io_adr_i = ccon_2_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_2_3_io_dat_i = ccon_2_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_2_4_wb_clk_i = ccon_2_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_2_4_wb_rst_i = ccon_2_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_2_4_io_i_0_in1 = cb_2_3_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_4_io_i_0_ci = cb_2_3_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_4_io_i_1_in1 = cb_2_3_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_4_io_i_1_ci = cb_2_3_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_4_io_i_2_in1 = cb_2_3_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_4_io_i_2_ci = cb_2_3_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_4_io_i_3_in1 = cb_2_3_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_4_io_i_3_ci = cb_2_3_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_4_io_i_4_in1 = cb_2_3_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_4_io_i_4_ci = cb_2_3_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_4_io_i_5_in1 = cb_2_3_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_4_io_i_5_ci = cb_2_3_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_4_io_i_6_in1 = cb_2_3_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_4_io_i_6_ci = cb_2_3_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_4_io_i_7_in1 = cb_2_3_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_4_io_i_7_ci = cb_2_3_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_4_io_vi = ccon_2_io_vout[4]; // @[UserProjectWrapper.scala 113:18]
  assign cb_2_4_io_vci = cb_2_3_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_2_4_io_eo = cb_2_5_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_2_4_io_cs_i = ccon_2_io_b_cs_i_4; // @[UserProjectWrapper.scala 107:20]
  assign cb_2_4_io_we_i = ccon_2_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_2_4_io_adr_i = ccon_2_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_2_4_io_dat_i = ccon_2_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_2_5_wb_clk_i = ccon_2_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_2_5_wb_rst_i = ccon_2_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_2_5_io_i_0_in1 = cb_2_4_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_5_io_i_0_ci = cb_2_4_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_5_io_i_1_in1 = cb_2_4_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_5_io_i_1_ci = cb_2_4_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_5_io_i_2_in1 = cb_2_4_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_5_io_i_2_ci = cb_2_4_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_5_io_i_3_in1 = cb_2_4_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_5_io_i_3_ci = cb_2_4_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_5_io_i_4_in1 = cb_2_4_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_5_io_i_4_ci = cb_2_4_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_5_io_i_5_in1 = cb_2_4_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_5_io_i_5_ci = cb_2_4_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_5_io_i_6_in1 = cb_2_4_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_5_io_i_6_ci = cb_2_4_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_5_io_i_7_in1 = cb_2_4_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_5_io_i_7_ci = cb_2_4_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_5_io_vi = ccon_2_io_vout[5]; // @[UserProjectWrapper.scala 113:18]
  assign cb_2_5_io_vci = cb_2_4_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_2_5_io_eo = cb_2_6_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_2_5_io_cs_i = ccon_2_io_b_cs_i_5; // @[UserProjectWrapper.scala 107:20]
  assign cb_2_5_io_we_i = ccon_2_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_2_5_io_adr_i = ccon_2_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_2_5_io_dat_i = ccon_2_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_2_6_wb_clk_i = ccon_2_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_2_6_wb_rst_i = ccon_2_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_2_6_io_i_0_in1 = cb_2_5_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_6_io_i_0_ci = cb_2_5_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_6_io_i_1_in1 = cb_2_5_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_6_io_i_1_ci = cb_2_5_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_6_io_i_2_in1 = cb_2_5_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_6_io_i_2_ci = cb_2_5_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_6_io_i_3_in1 = cb_2_5_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_6_io_i_3_ci = cb_2_5_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_6_io_i_4_in1 = cb_2_5_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_6_io_i_4_ci = cb_2_5_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_6_io_i_5_in1 = cb_2_5_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_6_io_i_5_ci = cb_2_5_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_6_io_i_6_in1 = cb_2_5_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_6_io_i_6_ci = cb_2_5_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_6_io_i_7_in1 = cb_2_5_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_6_io_i_7_ci = cb_2_5_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_6_io_vi = ccon_2_io_vout[6]; // @[UserProjectWrapper.scala 113:18]
  assign cb_2_6_io_vci = cb_2_5_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_2_6_io_eo = cb_2_7_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_2_6_io_cs_i = ccon_2_io_b_cs_i_6; // @[UserProjectWrapper.scala 107:20]
  assign cb_2_6_io_we_i = ccon_2_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_2_6_io_adr_i = ccon_2_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_2_6_io_dat_i = ccon_2_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_2_7_wb_clk_i = ccon_2_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_2_7_wb_rst_i = ccon_2_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_2_7_io_i_0_in1 = cb_2_6_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_7_io_i_0_ci = cb_2_6_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_7_io_i_1_in1 = cb_2_6_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_7_io_i_1_ci = cb_2_6_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_7_io_i_2_in1 = cb_2_6_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_7_io_i_2_ci = cb_2_6_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_7_io_i_3_in1 = cb_2_6_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_7_io_i_3_ci = cb_2_6_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_7_io_i_4_in1 = cb_2_6_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_7_io_i_4_ci = cb_2_6_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_7_io_i_5_in1 = cb_2_6_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_7_io_i_5_ci = cb_2_6_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_7_io_i_6_in1 = cb_2_6_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_7_io_i_6_ci = cb_2_6_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_7_io_i_7_in1 = cb_2_6_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_7_io_i_7_ci = cb_2_6_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_7_io_vi = ccon_2_io_vout[7]; // @[UserProjectWrapper.scala 113:18]
  assign cb_2_7_io_vci = cb_2_6_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_2_7_io_eo = cb_2_8_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_2_7_io_cs_i = ccon_2_io_b_cs_i_7; // @[UserProjectWrapper.scala 107:20]
  assign cb_2_7_io_we_i = ccon_2_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_2_7_io_adr_i = ccon_2_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_2_7_io_dat_i = ccon_2_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_2_8_wb_clk_i = ccon_2_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_2_8_wb_rst_i = ccon_2_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_2_8_io_i_0_in1 = cb_2_7_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_8_io_i_0_ci = cb_2_7_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_8_io_i_1_in1 = cb_2_7_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_8_io_i_1_ci = cb_2_7_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_8_io_i_2_in1 = cb_2_7_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_8_io_i_2_ci = cb_2_7_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_8_io_i_3_in1 = cb_2_7_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_8_io_i_3_ci = cb_2_7_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_8_io_i_4_in1 = cb_2_7_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_8_io_i_4_ci = cb_2_7_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_8_io_i_5_in1 = cb_2_7_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_8_io_i_5_ci = cb_2_7_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_8_io_i_6_in1 = cb_2_7_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_8_io_i_6_ci = cb_2_7_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_8_io_i_7_in1 = cb_2_7_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_8_io_i_7_ci = cb_2_7_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_8_io_vi = ccon_2_io_vout[8]; // @[UserProjectWrapper.scala 113:18]
  assign cb_2_8_io_vci = cb_2_7_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_2_8_io_eo = cb_2_9_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_2_8_io_cs_i = ccon_2_io_b_cs_i_8; // @[UserProjectWrapper.scala 107:20]
  assign cb_2_8_io_we_i = ccon_2_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_2_8_io_adr_i = ccon_2_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_2_8_io_dat_i = ccon_2_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_2_9_wb_clk_i = ccon_2_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_2_9_wb_rst_i = ccon_2_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_2_9_io_i_0_in1 = cb_2_8_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_9_io_i_0_ci = cb_2_8_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_9_io_i_1_in1 = cb_2_8_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_9_io_i_1_ci = cb_2_8_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_9_io_i_2_in1 = cb_2_8_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_9_io_i_2_ci = cb_2_8_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_9_io_i_3_in1 = cb_2_8_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_9_io_i_3_ci = cb_2_8_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_9_io_i_4_in1 = cb_2_8_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_9_io_i_4_ci = cb_2_8_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_9_io_i_5_in1 = cb_2_8_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_9_io_i_5_ci = cb_2_8_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_9_io_i_6_in1 = cb_2_8_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_9_io_i_6_ci = cb_2_8_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_9_io_i_7_in1 = cb_2_8_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_9_io_i_7_ci = cb_2_8_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_9_io_vi = ccon_2_io_vout[9]; // @[UserProjectWrapper.scala 113:18]
  assign cb_2_9_io_vci = cb_2_8_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_2_9_io_eo = cb_2_10_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_2_9_io_cs_i = ccon_2_io_b_cs_i_9; // @[UserProjectWrapper.scala 107:20]
  assign cb_2_9_io_we_i = ccon_2_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_2_9_io_adr_i = ccon_2_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_2_9_io_dat_i = ccon_2_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_2_10_wb_clk_i = ccon_2_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_2_10_wb_rst_i = ccon_2_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_2_10_io_i_0_in1 = cb_2_9_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_10_io_i_0_ci = cb_2_9_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_10_io_i_1_in1 = cb_2_9_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_10_io_i_1_ci = cb_2_9_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_10_io_i_2_in1 = cb_2_9_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_10_io_i_2_ci = cb_2_9_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_10_io_i_3_in1 = cb_2_9_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_10_io_i_3_ci = cb_2_9_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_10_io_i_4_in1 = cb_2_9_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_10_io_i_4_ci = cb_2_9_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_10_io_i_5_in1 = cb_2_9_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_10_io_i_5_ci = cb_2_9_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_10_io_i_6_in1 = cb_2_9_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_10_io_i_6_ci = cb_2_9_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_10_io_i_7_in1 = cb_2_9_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_2_10_io_i_7_ci = cb_2_9_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_2_10_io_vi = ccon_2_io_vout[10]; // @[UserProjectWrapper.scala 113:18]
  assign cb_2_10_io_vci = cb_2_9_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_2_10_io_eo = {_T_76,_T_73}; // @[UserProjectWrapper.scala 124:31]
  assign cb_2_10_io_cs_i = ccon_2_io_b_cs_i_10; // @[UserProjectWrapper.scala 107:20]
  assign cb_2_10_io_we_i = ccon_2_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_2_10_io_adr_i = ccon_2_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_2_10_io_dat_i = ccon_2_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign ccon_3_wb_clk_i = icon_m_wb_clk_i; // @[UserProjectWrapper.scala 86:16]
  assign ccon_3_wb_rst_i = icon_m_la_reset[7]; // @[UserProjectWrapper.scala 87:16]
  assign ccon_3_io_cs_i = icon_m_wbs_cs_i[7]; // @[UserProjectWrapper.scala 92:15]
  assign ccon_3_io_we_i = icon_m_wbs_we_i; // @[UserProjectWrapper.scala 91:15]
  assign ccon_3_io_adr_i = icon_m_wbs_adr_i; // @[UserProjectWrapper.scala 89:16]
  assign ccon_3_io_dat_i = icon_m_wbs_dat_i; // @[UserProjectWrapper.scala 90:16]
  assign ccon_3_io_dsi_in = icon_dsi; // @[UserProjectWrapper.scala 95:17]
  assign ccon_3_io_dataLastBlock = cb_3_0_io_wo; // @[UserProjectWrapper.scala 125:24]
  assign ccon_3_io_b_dat_o_0 = cb_3_0_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_3_io_b_dat_o_1 = cb_3_1_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_3_io_b_dat_o_2 = cb_3_2_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_3_io_b_dat_o_3 = cb_3_3_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_3_io_b_dat_o_4 = cb_3_4_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_3_io_b_dat_o_5 = cb_3_5_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_3_io_b_dat_o_6 = cb_3_6_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_3_io_b_dat_o_7 = cb_3_7_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_3_io_b_dat_o_8 = cb_3_8_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_3_io_b_dat_o_9 = cb_3_9_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_3_io_b_dat_o_10 = cb_3_10_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign cb_3_0_wb_clk_i = ccon_3_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_3_0_wb_rst_i = ccon_3_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_3_0_io_i_0_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_3_0_io_i_0_ci = ccon_3_io_dsi_o; // @[UserProjectWrapper.scala 118:14 UserProjectWrapper.scala 121:26]
  assign cb_3_0_io_i_1_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_3_0_io_i_1_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_3_0_io_i_2_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_3_0_io_i_2_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_3_0_io_i_3_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_3_0_io_i_3_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_3_0_io_i_4_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_3_0_io_i_4_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_3_0_io_i_5_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_3_0_io_i_5_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_3_0_io_i_6_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_3_0_io_i_6_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_3_0_io_i_7_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_3_0_io_i_7_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_3_0_io_vi = ccon_3_io_vout[0]; // @[UserProjectWrapper.scala 113:18]
  assign cb_3_0_io_vci = 1'h0; // @[UserProjectWrapper.scala 122:22]
  assign cb_3_0_io_eo = cb_3_1_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_3_0_io_cs_i = ccon_3_io_b_cs_i_0; // @[UserProjectWrapper.scala 107:20]
  assign cb_3_0_io_we_i = ccon_3_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_3_0_io_adr_i = ccon_3_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_3_0_io_dat_i = ccon_3_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_3_1_wb_clk_i = ccon_3_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_3_1_wb_rst_i = ccon_3_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_3_1_io_i_0_in1 = cb_3_0_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_1_io_i_0_ci = cb_3_0_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_1_io_i_1_in1 = cb_3_0_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_1_io_i_1_ci = cb_3_0_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_1_io_i_2_in1 = cb_3_0_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_1_io_i_2_ci = cb_3_0_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_1_io_i_3_in1 = cb_3_0_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_1_io_i_3_ci = cb_3_0_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_1_io_i_4_in1 = cb_3_0_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_1_io_i_4_ci = cb_3_0_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_1_io_i_5_in1 = cb_3_0_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_1_io_i_5_ci = cb_3_0_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_1_io_i_6_in1 = cb_3_0_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_1_io_i_6_ci = cb_3_0_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_1_io_i_7_in1 = cb_3_0_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_1_io_i_7_ci = cb_3_0_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_1_io_vi = ccon_3_io_vout[1]; // @[UserProjectWrapper.scala 113:18]
  assign cb_3_1_io_vci = cb_3_0_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_3_1_io_eo = cb_3_2_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_3_1_io_cs_i = ccon_3_io_b_cs_i_1; // @[UserProjectWrapper.scala 107:20]
  assign cb_3_1_io_we_i = ccon_3_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_3_1_io_adr_i = ccon_3_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_3_1_io_dat_i = ccon_3_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_3_2_wb_clk_i = ccon_3_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_3_2_wb_rst_i = ccon_3_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_3_2_io_i_0_in1 = cb_3_1_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_2_io_i_0_ci = cb_3_1_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_2_io_i_1_in1 = cb_3_1_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_2_io_i_1_ci = cb_3_1_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_2_io_i_2_in1 = cb_3_1_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_2_io_i_2_ci = cb_3_1_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_2_io_i_3_in1 = cb_3_1_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_2_io_i_3_ci = cb_3_1_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_2_io_i_4_in1 = cb_3_1_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_2_io_i_4_ci = cb_3_1_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_2_io_i_5_in1 = cb_3_1_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_2_io_i_5_ci = cb_3_1_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_2_io_i_6_in1 = cb_3_1_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_2_io_i_6_ci = cb_3_1_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_2_io_i_7_in1 = cb_3_1_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_2_io_i_7_ci = cb_3_1_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_2_io_vi = ccon_3_io_vout[2]; // @[UserProjectWrapper.scala 113:18]
  assign cb_3_2_io_vci = cb_3_1_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_3_2_io_eo = cb_3_3_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_3_2_io_cs_i = ccon_3_io_b_cs_i_2; // @[UserProjectWrapper.scala 107:20]
  assign cb_3_2_io_we_i = ccon_3_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_3_2_io_adr_i = ccon_3_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_3_2_io_dat_i = ccon_3_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_3_3_wb_clk_i = ccon_3_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_3_3_wb_rst_i = ccon_3_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_3_3_io_i_0_in1 = cb_3_2_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_3_io_i_0_ci = cb_3_2_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_3_io_i_1_in1 = cb_3_2_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_3_io_i_1_ci = cb_3_2_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_3_io_i_2_in1 = cb_3_2_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_3_io_i_2_ci = cb_3_2_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_3_io_i_3_in1 = cb_3_2_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_3_io_i_3_ci = cb_3_2_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_3_io_i_4_in1 = cb_3_2_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_3_io_i_4_ci = cb_3_2_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_3_io_i_5_in1 = cb_3_2_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_3_io_i_5_ci = cb_3_2_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_3_io_i_6_in1 = cb_3_2_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_3_io_i_6_ci = cb_3_2_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_3_io_i_7_in1 = cb_3_2_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_3_io_i_7_ci = cb_3_2_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_3_io_vi = ccon_3_io_vout[3]; // @[UserProjectWrapper.scala 113:18]
  assign cb_3_3_io_vci = cb_3_2_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_3_3_io_eo = cb_3_4_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_3_3_io_cs_i = ccon_3_io_b_cs_i_3; // @[UserProjectWrapper.scala 107:20]
  assign cb_3_3_io_we_i = ccon_3_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_3_3_io_adr_i = ccon_3_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_3_3_io_dat_i = ccon_3_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_3_4_wb_clk_i = ccon_3_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_3_4_wb_rst_i = ccon_3_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_3_4_io_i_0_in1 = cb_3_3_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_4_io_i_0_ci = cb_3_3_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_4_io_i_1_in1 = cb_3_3_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_4_io_i_1_ci = cb_3_3_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_4_io_i_2_in1 = cb_3_3_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_4_io_i_2_ci = cb_3_3_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_4_io_i_3_in1 = cb_3_3_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_4_io_i_3_ci = cb_3_3_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_4_io_i_4_in1 = cb_3_3_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_4_io_i_4_ci = cb_3_3_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_4_io_i_5_in1 = cb_3_3_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_4_io_i_5_ci = cb_3_3_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_4_io_i_6_in1 = cb_3_3_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_4_io_i_6_ci = cb_3_3_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_4_io_i_7_in1 = cb_3_3_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_4_io_i_7_ci = cb_3_3_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_4_io_vi = ccon_3_io_vout[4]; // @[UserProjectWrapper.scala 113:18]
  assign cb_3_4_io_vci = cb_3_3_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_3_4_io_eo = cb_3_5_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_3_4_io_cs_i = ccon_3_io_b_cs_i_4; // @[UserProjectWrapper.scala 107:20]
  assign cb_3_4_io_we_i = ccon_3_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_3_4_io_adr_i = ccon_3_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_3_4_io_dat_i = ccon_3_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_3_5_wb_clk_i = ccon_3_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_3_5_wb_rst_i = ccon_3_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_3_5_io_i_0_in1 = cb_3_4_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_5_io_i_0_ci = cb_3_4_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_5_io_i_1_in1 = cb_3_4_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_5_io_i_1_ci = cb_3_4_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_5_io_i_2_in1 = cb_3_4_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_5_io_i_2_ci = cb_3_4_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_5_io_i_3_in1 = cb_3_4_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_5_io_i_3_ci = cb_3_4_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_5_io_i_4_in1 = cb_3_4_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_5_io_i_4_ci = cb_3_4_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_5_io_i_5_in1 = cb_3_4_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_5_io_i_5_ci = cb_3_4_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_5_io_i_6_in1 = cb_3_4_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_5_io_i_6_ci = cb_3_4_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_5_io_i_7_in1 = cb_3_4_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_5_io_i_7_ci = cb_3_4_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_5_io_vi = ccon_3_io_vout[5]; // @[UserProjectWrapper.scala 113:18]
  assign cb_3_5_io_vci = cb_3_4_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_3_5_io_eo = cb_3_6_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_3_5_io_cs_i = ccon_3_io_b_cs_i_5; // @[UserProjectWrapper.scala 107:20]
  assign cb_3_5_io_we_i = ccon_3_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_3_5_io_adr_i = ccon_3_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_3_5_io_dat_i = ccon_3_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_3_6_wb_clk_i = ccon_3_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_3_6_wb_rst_i = ccon_3_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_3_6_io_i_0_in1 = cb_3_5_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_6_io_i_0_ci = cb_3_5_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_6_io_i_1_in1 = cb_3_5_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_6_io_i_1_ci = cb_3_5_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_6_io_i_2_in1 = cb_3_5_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_6_io_i_2_ci = cb_3_5_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_6_io_i_3_in1 = cb_3_5_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_6_io_i_3_ci = cb_3_5_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_6_io_i_4_in1 = cb_3_5_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_6_io_i_4_ci = cb_3_5_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_6_io_i_5_in1 = cb_3_5_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_6_io_i_5_ci = cb_3_5_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_6_io_i_6_in1 = cb_3_5_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_6_io_i_6_ci = cb_3_5_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_6_io_i_7_in1 = cb_3_5_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_6_io_i_7_ci = cb_3_5_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_6_io_vi = ccon_3_io_vout[6]; // @[UserProjectWrapper.scala 113:18]
  assign cb_3_6_io_vci = cb_3_5_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_3_6_io_eo = cb_3_7_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_3_6_io_cs_i = ccon_3_io_b_cs_i_6; // @[UserProjectWrapper.scala 107:20]
  assign cb_3_6_io_we_i = ccon_3_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_3_6_io_adr_i = ccon_3_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_3_6_io_dat_i = ccon_3_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_3_7_wb_clk_i = ccon_3_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_3_7_wb_rst_i = ccon_3_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_3_7_io_i_0_in1 = cb_3_6_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_7_io_i_0_ci = cb_3_6_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_7_io_i_1_in1 = cb_3_6_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_7_io_i_1_ci = cb_3_6_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_7_io_i_2_in1 = cb_3_6_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_7_io_i_2_ci = cb_3_6_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_7_io_i_3_in1 = cb_3_6_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_7_io_i_3_ci = cb_3_6_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_7_io_i_4_in1 = cb_3_6_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_7_io_i_4_ci = cb_3_6_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_7_io_i_5_in1 = cb_3_6_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_7_io_i_5_ci = cb_3_6_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_7_io_i_6_in1 = cb_3_6_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_7_io_i_6_ci = cb_3_6_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_7_io_i_7_in1 = cb_3_6_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_7_io_i_7_ci = cb_3_6_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_7_io_vi = ccon_3_io_vout[7]; // @[UserProjectWrapper.scala 113:18]
  assign cb_3_7_io_vci = cb_3_6_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_3_7_io_eo = cb_3_8_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_3_7_io_cs_i = ccon_3_io_b_cs_i_7; // @[UserProjectWrapper.scala 107:20]
  assign cb_3_7_io_we_i = ccon_3_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_3_7_io_adr_i = ccon_3_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_3_7_io_dat_i = ccon_3_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_3_8_wb_clk_i = ccon_3_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_3_8_wb_rst_i = ccon_3_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_3_8_io_i_0_in1 = cb_3_7_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_8_io_i_0_ci = cb_3_7_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_8_io_i_1_in1 = cb_3_7_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_8_io_i_1_ci = cb_3_7_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_8_io_i_2_in1 = cb_3_7_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_8_io_i_2_ci = cb_3_7_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_8_io_i_3_in1 = cb_3_7_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_8_io_i_3_ci = cb_3_7_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_8_io_i_4_in1 = cb_3_7_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_8_io_i_4_ci = cb_3_7_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_8_io_i_5_in1 = cb_3_7_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_8_io_i_5_ci = cb_3_7_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_8_io_i_6_in1 = cb_3_7_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_8_io_i_6_ci = cb_3_7_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_8_io_i_7_in1 = cb_3_7_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_8_io_i_7_ci = cb_3_7_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_8_io_vi = ccon_3_io_vout[8]; // @[UserProjectWrapper.scala 113:18]
  assign cb_3_8_io_vci = cb_3_7_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_3_8_io_eo = cb_3_9_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_3_8_io_cs_i = ccon_3_io_b_cs_i_8; // @[UserProjectWrapper.scala 107:20]
  assign cb_3_8_io_we_i = ccon_3_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_3_8_io_adr_i = ccon_3_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_3_8_io_dat_i = ccon_3_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_3_9_wb_clk_i = ccon_3_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_3_9_wb_rst_i = ccon_3_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_3_9_io_i_0_in1 = cb_3_8_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_9_io_i_0_ci = cb_3_8_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_9_io_i_1_in1 = cb_3_8_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_9_io_i_1_ci = cb_3_8_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_9_io_i_2_in1 = cb_3_8_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_9_io_i_2_ci = cb_3_8_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_9_io_i_3_in1 = cb_3_8_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_9_io_i_3_ci = cb_3_8_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_9_io_i_4_in1 = cb_3_8_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_9_io_i_4_ci = cb_3_8_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_9_io_i_5_in1 = cb_3_8_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_9_io_i_5_ci = cb_3_8_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_9_io_i_6_in1 = cb_3_8_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_9_io_i_6_ci = cb_3_8_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_9_io_i_7_in1 = cb_3_8_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_9_io_i_7_ci = cb_3_8_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_9_io_vi = ccon_3_io_vout[9]; // @[UserProjectWrapper.scala 113:18]
  assign cb_3_9_io_vci = cb_3_8_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_3_9_io_eo = cb_3_10_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_3_9_io_cs_i = ccon_3_io_b_cs_i_9; // @[UserProjectWrapper.scala 107:20]
  assign cb_3_9_io_we_i = ccon_3_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_3_9_io_adr_i = ccon_3_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_3_9_io_dat_i = ccon_3_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_3_10_wb_clk_i = ccon_3_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_3_10_wb_rst_i = ccon_3_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_3_10_io_i_0_in1 = cb_3_9_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_10_io_i_0_ci = cb_3_9_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_10_io_i_1_in1 = cb_3_9_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_10_io_i_1_ci = cb_3_9_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_10_io_i_2_in1 = cb_3_9_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_10_io_i_2_ci = cb_3_9_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_10_io_i_3_in1 = cb_3_9_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_10_io_i_3_ci = cb_3_9_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_10_io_i_4_in1 = cb_3_9_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_10_io_i_4_ci = cb_3_9_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_10_io_i_5_in1 = cb_3_9_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_10_io_i_5_ci = cb_3_9_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_10_io_i_6_in1 = cb_3_9_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_10_io_i_6_ci = cb_3_9_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_10_io_i_7_in1 = cb_3_9_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_3_10_io_i_7_ci = cb_3_9_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_3_10_io_vi = ccon_3_io_vout[10]; // @[UserProjectWrapper.scala 113:18]
  assign cb_3_10_io_vci = cb_3_9_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_3_10_io_eo = {_T_96,_T_93}; // @[UserProjectWrapper.scala 124:31]
  assign cb_3_10_io_cs_i = ccon_3_io_b_cs_i_10; // @[UserProjectWrapper.scala 107:20]
  assign cb_3_10_io_we_i = ccon_3_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_3_10_io_adr_i = ccon_3_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_3_10_io_dat_i = ccon_3_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign ccon_4_wb_clk_i = icon_m_wb_clk_i; // @[UserProjectWrapper.scala 86:16]
  assign ccon_4_wb_rst_i = icon_m_la_reset[8]; // @[UserProjectWrapper.scala 87:16]
  assign ccon_4_io_cs_i = icon_m_wbs_cs_i[8]; // @[UserProjectWrapper.scala 92:15]
  assign ccon_4_io_we_i = icon_m_wbs_we_i; // @[UserProjectWrapper.scala 91:15]
  assign ccon_4_io_adr_i = icon_m_wbs_adr_i; // @[UserProjectWrapper.scala 89:16]
  assign ccon_4_io_dat_i = icon_m_wbs_dat_i; // @[UserProjectWrapper.scala 90:16]
  assign ccon_4_io_dsi_in = icon_dsi; // @[UserProjectWrapper.scala 95:17]
  assign ccon_4_io_dataLastBlock = cb_4_0_io_wo; // @[UserProjectWrapper.scala 125:24]
  assign ccon_4_io_b_dat_o_0 = cb_4_0_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_4_io_b_dat_o_1 = cb_4_1_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_4_io_b_dat_o_2 = cb_4_2_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_4_io_b_dat_o_3 = cb_4_3_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_4_io_b_dat_o_4 = cb_4_4_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_4_io_b_dat_o_5 = cb_4_5_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_4_io_b_dat_o_6 = cb_4_6_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_4_io_b_dat_o_7 = cb_4_7_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_4_io_b_dat_o_8 = cb_4_8_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_4_io_b_dat_o_9 = cb_4_9_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_4_io_b_dat_o_10 = cb_4_10_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign cb_4_0_wb_clk_i = ccon_4_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_4_0_wb_rst_i = ccon_4_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_4_0_io_i_0_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_4_0_io_i_0_ci = ccon_4_io_dsi_o; // @[UserProjectWrapper.scala 118:14 UserProjectWrapper.scala 121:26]
  assign cb_4_0_io_i_1_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_4_0_io_i_1_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_4_0_io_i_2_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_4_0_io_i_2_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_4_0_io_i_3_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_4_0_io_i_3_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_4_0_io_i_4_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_4_0_io_i_4_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_4_0_io_i_5_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_4_0_io_i_5_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_4_0_io_i_6_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_4_0_io_i_6_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_4_0_io_i_7_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_4_0_io_i_7_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_4_0_io_vi = ccon_4_io_vout[0]; // @[UserProjectWrapper.scala 113:18]
  assign cb_4_0_io_vci = 1'h0; // @[UserProjectWrapper.scala 122:22]
  assign cb_4_0_io_eo = cb_4_1_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_4_0_io_cs_i = ccon_4_io_b_cs_i_0; // @[UserProjectWrapper.scala 107:20]
  assign cb_4_0_io_we_i = ccon_4_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_4_0_io_adr_i = ccon_4_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_4_0_io_dat_i = ccon_4_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_4_1_wb_clk_i = ccon_4_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_4_1_wb_rst_i = ccon_4_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_4_1_io_i_0_in1 = cb_4_0_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_1_io_i_0_ci = cb_4_0_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_1_io_i_1_in1 = cb_4_0_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_1_io_i_1_ci = cb_4_0_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_1_io_i_2_in1 = cb_4_0_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_1_io_i_2_ci = cb_4_0_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_1_io_i_3_in1 = cb_4_0_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_1_io_i_3_ci = cb_4_0_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_1_io_i_4_in1 = cb_4_0_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_1_io_i_4_ci = cb_4_0_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_1_io_i_5_in1 = cb_4_0_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_1_io_i_5_ci = cb_4_0_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_1_io_i_6_in1 = cb_4_0_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_1_io_i_6_ci = cb_4_0_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_1_io_i_7_in1 = cb_4_0_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_1_io_i_7_ci = cb_4_0_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_1_io_vi = ccon_4_io_vout[1]; // @[UserProjectWrapper.scala 113:18]
  assign cb_4_1_io_vci = cb_4_0_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_4_1_io_eo = cb_4_2_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_4_1_io_cs_i = ccon_4_io_b_cs_i_1; // @[UserProjectWrapper.scala 107:20]
  assign cb_4_1_io_we_i = ccon_4_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_4_1_io_adr_i = ccon_4_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_4_1_io_dat_i = ccon_4_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_4_2_wb_clk_i = ccon_4_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_4_2_wb_rst_i = ccon_4_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_4_2_io_i_0_in1 = cb_4_1_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_2_io_i_0_ci = cb_4_1_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_2_io_i_1_in1 = cb_4_1_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_2_io_i_1_ci = cb_4_1_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_2_io_i_2_in1 = cb_4_1_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_2_io_i_2_ci = cb_4_1_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_2_io_i_3_in1 = cb_4_1_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_2_io_i_3_ci = cb_4_1_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_2_io_i_4_in1 = cb_4_1_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_2_io_i_4_ci = cb_4_1_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_2_io_i_5_in1 = cb_4_1_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_2_io_i_5_ci = cb_4_1_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_2_io_i_6_in1 = cb_4_1_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_2_io_i_6_ci = cb_4_1_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_2_io_i_7_in1 = cb_4_1_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_2_io_i_7_ci = cb_4_1_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_2_io_vi = ccon_4_io_vout[2]; // @[UserProjectWrapper.scala 113:18]
  assign cb_4_2_io_vci = cb_4_1_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_4_2_io_eo = cb_4_3_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_4_2_io_cs_i = ccon_4_io_b_cs_i_2; // @[UserProjectWrapper.scala 107:20]
  assign cb_4_2_io_we_i = ccon_4_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_4_2_io_adr_i = ccon_4_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_4_2_io_dat_i = ccon_4_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_4_3_wb_clk_i = ccon_4_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_4_3_wb_rst_i = ccon_4_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_4_3_io_i_0_in1 = cb_4_2_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_3_io_i_0_ci = cb_4_2_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_3_io_i_1_in1 = cb_4_2_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_3_io_i_1_ci = cb_4_2_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_3_io_i_2_in1 = cb_4_2_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_3_io_i_2_ci = cb_4_2_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_3_io_i_3_in1 = cb_4_2_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_3_io_i_3_ci = cb_4_2_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_3_io_i_4_in1 = cb_4_2_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_3_io_i_4_ci = cb_4_2_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_3_io_i_5_in1 = cb_4_2_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_3_io_i_5_ci = cb_4_2_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_3_io_i_6_in1 = cb_4_2_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_3_io_i_6_ci = cb_4_2_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_3_io_i_7_in1 = cb_4_2_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_3_io_i_7_ci = cb_4_2_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_3_io_vi = ccon_4_io_vout[3]; // @[UserProjectWrapper.scala 113:18]
  assign cb_4_3_io_vci = cb_4_2_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_4_3_io_eo = cb_4_4_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_4_3_io_cs_i = ccon_4_io_b_cs_i_3; // @[UserProjectWrapper.scala 107:20]
  assign cb_4_3_io_we_i = ccon_4_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_4_3_io_adr_i = ccon_4_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_4_3_io_dat_i = ccon_4_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_4_4_wb_clk_i = ccon_4_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_4_4_wb_rst_i = ccon_4_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_4_4_io_i_0_in1 = cb_4_3_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_4_io_i_0_ci = cb_4_3_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_4_io_i_1_in1 = cb_4_3_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_4_io_i_1_ci = cb_4_3_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_4_io_i_2_in1 = cb_4_3_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_4_io_i_2_ci = cb_4_3_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_4_io_i_3_in1 = cb_4_3_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_4_io_i_3_ci = cb_4_3_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_4_io_i_4_in1 = cb_4_3_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_4_io_i_4_ci = cb_4_3_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_4_io_i_5_in1 = cb_4_3_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_4_io_i_5_ci = cb_4_3_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_4_io_i_6_in1 = cb_4_3_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_4_io_i_6_ci = cb_4_3_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_4_io_i_7_in1 = cb_4_3_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_4_io_i_7_ci = cb_4_3_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_4_io_vi = ccon_4_io_vout[4]; // @[UserProjectWrapper.scala 113:18]
  assign cb_4_4_io_vci = cb_4_3_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_4_4_io_eo = cb_4_5_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_4_4_io_cs_i = ccon_4_io_b_cs_i_4; // @[UserProjectWrapper.scala 107:20]
  assign cb_4_4_io_we_i = ccon_4_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_4_4_io_adr_i = ccon_4_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_4_4_io_dat_i = ccon_4_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_4_5_wb_clk_i = ccon_4_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_4_5_wb_rst_i = ccon_4_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_4_5_io_i_0_in1 = cb_4_4_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_5_io_i_0_ci = cb_4_4_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_5_io_i_1_in1 = cb_4_4_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_5_io_i_1_ci = cb_4_4_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_5_io_i_2_in1 = cb_4_4_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_5_io_i_2_ci = cb_4_4_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_5_io_i_3_in1 = cb_4_4_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_5_io_i_3_ci = cb_4_4_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_5_io_i_4_in1 = cb_4_4_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_5_io_i_4_ci = cb_4_4_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_5_io_i_5_in1 = cb_4_4_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_5_io_i_5_ci = cb_4_4_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_5_io_i_6_in1 = cb_4_4_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_5_io_i_6_ci = cb_4_4_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_5_io_i_7_in1 = cb_4_4_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_5_io_i_7_ci = cb_4_4_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_5_io_vi = ccon_4_io_vout[5]; // @[UserProjectWrapper.scala 113:18]
  assign cb_4_5_io_vci = cb_4_4_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_4_5_io_eo = cb_4_6_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_4_5_io_cs_i = ccon_4_io_b_cs_i_5; // @[UserProjectWrapper.scala 107:20]
  assign cb_4_5_io_we_i = ccon_4_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_4_5_io_adr_i = ccon_4_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_4_5_io_dat_i = ccon_4_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_4_6_wb_clk_i = ccon_4_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_4_6_wb_rst_i = ccon_4_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_4_6_io_i_0_in1 = cb_4_5_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_6_io_i_0_ci = cb_4_5_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_6_io_i_1_in1 = cb_4_5_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_6_io_i_1_ci = cb_4_5_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_6_io_i_2_in1 = cb_4_5_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_6_io_i_2_ci = cb_4_5_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_6_io_i_3_in1 = cb_4_5_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_6_io_i_3_ci = cb_4_5_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_6_io_i_4_in1 = cb_4_5_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_6_io_i_4_ci = cb_4_5_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_6_io_i_5_in1 = cb_4_5_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_6_io_i_5_ci = cb_4_5_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_6_io_i_6_in1 = cb_4_5_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_6_io_i_6_ci = cb_4_5_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_6_io_i_7_in1 = cb_4_5_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_6_io_i_7_ci = cb_4_5_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_6_io_vi = ccon_4_io_vout[6]; // @[UserProjectWrapper.scala 113:18]
  assign cb_4_6_io_vci = cb_4_5_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_4_6_io_eo = cb_4_7_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_4_6_io_cs_i = ccon_4_io_b_cs_i_6; // @[UserProjectWrapper.scala 107:20]
  assign cb_4_6_io_we_i = ccon_4_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_4_6_io_adr_i = ccon_4_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_4_6_io_dat_i = ccon_4_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_4_7_wb_clk_i = ccon_4_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_4_7_wb_rst_i = ccon_4_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_4_7_io_i_0_in1 = cb_4_6_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_7_io_i_0_ci = cb_4_6_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_7_io_i_1_in1 = cb_4_6_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_7_io_i_1_ci = cb_4_6_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_7_io_i_2_in1 = cb_4_6_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_7_io_i_2_ci = cb_4_6_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_7_io_i_3_in1 = cb_4_6_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_7_io_i_3_ci = cb_4_6_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_7_io_i_4_in1 = cb_4_6_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_7_io_i_4_ci = cb_4_6_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_7_io_i_5_in1 = cb_4_6_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_7_io_i_5_ci = cb_4_6_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_7_io_i_6_in1 = cb_4_6_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_7_io_i_6_ci = cb_4_6_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_7_io_i_7_in1 = cb_4_6_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_7_io_i_7_ci = cb_4_6_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_7_io_vi = ccon_4_io_vout[7]; // @[UserProjectWrapper.scala 113:18]
  assign cb_4_7_io_vci = cb_4_6_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_4_7_io_eo = cb_4_8_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_4_7_io_cs_i = ccon_4_io_b_cs_i_7; // @[UserProjectWrapper.scala 107:20]
  assign cb_4_7_io_we_i = ccon_4_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_4_7_io_adr_i = ccon_4_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_4_7_io_dat_i = ccon_4_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_4_8_wb_clk_i = ccon_4_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_4_8_wb_rst_i = ccon_4_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_4_8_io_i_0_in1 = cb_4_7_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_8_io_i_0_ci = cb_4_7_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_8_io_i_1_in1 = cb_4_7_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_8_io_i_1_ci = cb_4_7_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_8_io_i_2_in1 = cb_4_7_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_8_io_i_2_ci = cb_4_7_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_8_io_i_3_in1 = cb_4_7_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_8_io_i_3_ci = cb_4_7_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_8_io_i_4_in1 = cb_4_7_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_8_io_i_4_ci = cb_4_7_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_8_io_i_5_in1 = cb_4_7_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_8_io_i_5_ci = cb_4_7_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_8_io_i_6_in1 = cb_4_7_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_8_io_i_6_ci = cb_4_7_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_8_io_i_7_in1 = cb_4_7_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_8_io_i_7_ci = cb_4_7_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_8_io_vi = ccon_4_io_vout[8]; // @[UserProjectWrapper.scala 113:18]
  assign cb_4_8_io_vci = cb_4_7_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_4_8_io_eo = cb_4_9_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_4_8_io_cs_i = ccon_4_io_b_cs_i_8; // @[UserProjectWrapper.scala 107:20]
  assign cb_4_8_io_we_i = ccon_4_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_4_8_io_adr_i = ccon_4_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_4_8_io_dat_i = ccon_4_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_4_9_wb_clk_i = ccon_4_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_4_9_wb_rst_i = ccon_4_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_4_9_io_i_0_in1 = cb_4_8_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_9_io_i_0_ci = cb_4_8_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_9_io_i_1_in1 = cb_4_8_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_9_io_i_1_ci = cb_4_8_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_9_io_i_2_in1 = cb_4_8_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_9_io_i_2_ci = cb_4_8_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_9_io_i_3_in1 = cb_4_8_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_9_io_i_3_ci = cb_4_8_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_9_io_i_4_in1 = cb_4_8_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_9_io_i_4_ci = cb_4_8_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_9_io_i_5_in1 = cb_4_8_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_9_io_i_5_ci = cb_4_8_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_9_io_i_6_in1 = cb_4_8_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_9_io_i_6_ci = cb_4_8_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_9_io_i_7_in1 = cb_4_8_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_9_io_i_7_ci = cb_4_8_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_9_io_vi = ccon_4_io_vout[9]; // @[UserProjectWrapper.scala 113:18]
  assign cb_4_9_io_vci = cb_4_8_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_4_9_io_eo = cb_4_10_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_4_9_io_cs_i = ccon_4_io_b_cs_i_9; // @[UserProjectWrapper.scala 107:20]
  assign cb_4_9_io_we_i = ccon_4_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_4_9_io_adr_i = ccon_4_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_4_9_io_dat_i = ccon_4_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_4_10_wb_clk_i = ccon_4_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_4_10_wb_rst_i = ccon_4_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_4_10_io_i_0_in1 = cb_4_9_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_10_io_i_0_ci = cb_4_9_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_10_io_i_1_in1 = cb_4_9_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_10_io_i_1_ci = cb_4_9_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_10_io_i_2_in1 = cb_4_9_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_10_io_i_2_ci = cb_4_9_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_10_io_i_3_in1 = cb_4_9_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_10_io_i_3_ci = cb_4_9_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_10_io_i_4_in1 = cb_4_9_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_10_io_i_4_ci = cb_4_9_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_10_io_i_5_in1 = cb_4_9_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_10_io_i_5_ci = cb_4_9_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_10_io_i_6_in1 = cb_4_9_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_10_io_i_6_ci = cb_4_9_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_10_io_i_7_in1 = cb_4_9_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_4_10_io_i_7_ci = cb_4_9_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_4_10_io_vi = ccon_4_io_vout[10]; // @[UserProjectWrapper.scala 113:18]
  assign cb_4_10_io_vci = cb_4_9_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_4_10_io_eo = {_T_116,_T_113}; // @[UserProjectWrapper.scala 124:31]
  assign cb_4_10_io_cs_i = ccon_4_io_b_cs_i_10; // @[UserProjectWrapper.scala 107:20]
  assign cb_4_10_io_we_i = ccon_4_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_4_10_io_adr_i = ccon_4_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_4_10_io_dat_i = ccon_4_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign ccon_5_wb_clk_i = icon_m_wb_clk_i; // @[UserProjectWrapper.scala 86:16]
  assign ccon_5_wb_rst_i = icon_m_la_reset[9]; // @[UserProjectWrapper.scala 87:16]
  assign ccon_5_io_cs_i = icon_m_wbs_cs_i[9]; // @[UserProjectWrapper.scala 92:15]
  assign ccon_5_io_we_i = icon_m_wbs_we_i; // @[UserProjectWrapper.scala 91:15]
  assign ccon_5_io_adr_i = icon_m_wbs_adr_i; // @[UserProjectWrapper.scala 89:16]
  assign ccon_5_io_dat_i = icon_m_wbs_dat_i; // @[UserProjectWrapper.scala 90:16]
  assign ccon_5_io_dsi_in = icon_dsi; // @[UserProjectWrapper.scala 95:17]
  assign ccon_5_io_dataLastBlock = cb_5_0_io_wo; // @[UserProjectWrapper.scala 125:24]
  assign ccon_5_io_b_dat_o_0 = cb_5_0_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_5_io_b_dat_o_1 = cb_5_1_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_5_io_b_dat_o_2 = cb_5_2_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_5_io_b_dat_o_3 = cb_5_3_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_5_io_b_dat_o_4 = cb_5_4_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_5_io_b_dat_o_5 = cb_5_5_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_5_io_b_dat_o_6 = cb_5_6_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_5_io_b_dat_o_7 = cb_5_7_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_5_io_b_dat_o_8 = cb_5_8_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_5_io_b_dat_o_9 = cb_5_9_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_5_io_b_dat_o_10 = cb_5_10_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign cb_5_0_wb_clk_i = ccon_5_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_5_0_wb_rst_i = ccon_5_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_5_0_io_i_0_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_5_0_io_i_0_ci = ccon_5_io_dsi_o; // @[UserProjectWrapper.scala 118:14 UserProjectWrapper.scala 121:26]
  assign cb_5_0_io_i_1_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_5_0_io_i_1_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_5_0_io_i_2_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_5_0_io_i_2_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_5_0_io_i_3_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_5_0_io_i_3_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_5_0_io_i_4_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_5_0_io_i_4_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_5_0_io_i_5_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_5_0_io_i_5_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_5_0_io_i_6_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_5_0_io_i_6_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_5_0_io_i_7_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_5_0_io_i_7_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_5_0_io_vi = ccon_5_io_vout[0]; // @[UserProjectWrapper.scala 113:18]
  assign cb_5_0_io_vci = 1'h0; // @[UserProjectWrapper.scala 122:22]
  assign cb_5_0_io_eo = cb_5_1_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_5_0_io_cs_i = ccon_5_io_b_cs_i_0; // @[UserProjectWrapper.scala 107:20]
  assign cb_5_0_io_we_i = ccon_5_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_5_0_io_adr_i = ccon_5_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_5_0_io_dat_i = ccon_5_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_5_1_wb_clk_i = ccon_5_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_5_1_wb_rst_i = ccon_5_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_5_1_io_i_0_in1 = cb_5_0_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_1_io_i_0_ci = cb_5_0_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_1_io_i_1_in1 = cb_5_0_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_1_io_i_1_ci = cb_5_0_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_1_io_i_2_in1 = cb_5_0_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_1_io_i_2_ci = cb_5_0_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_1_io_i_3_in1 = cb_5_0_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_1_io_i_3_ci = cb_5_0_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_1_io_i_4_in1 = cb_5_0_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_1_io_i_4_ci = cb_5_0_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_1_io_i_5_in1 = cb_5_0_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_1_io_i_5_ci = cb_5_0_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_1_io_i_6_in1 = cb_5_0_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_1_io_i_6_ci = cb_5_0_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_1_io_i_7_in1 = cb_5_0_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_1_io_i_7_ci = cb_5_0_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_1_io_vi = ccon_5_io_vout[1]; // @[UserProjectWrapper.scala 113:18]
  assign cb_5_1_io_vci = cb_5_0_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_5_1_io_eo = cb_5_2_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_5_1_io_cs_i = ccon_5_io_b_cs_i_1; // @[UserProjectWrapper.scala 107:20]
  assign cb_5_1_io_we_i = ccon_5_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_5_1_io_adr_i = ccon_5_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_5_1_io_dat_i = ccon_5_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_5_2_wb_clk_i = ccon_5_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_5_2_wb_rst_i = ccon_5_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_5_2_io_i_0_in1 = cb_5_1_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_2_io_i_0_ci = cb_5_1_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_2_io_i_1_in1 = cb_5_1_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_2_io_i_1_ci = cb_5_1_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_2_io_i_2_in1 = cb_5_1_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_2_io_i_2_ci = cb_5_1_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_2_io_i_3_in1 = cb_5_1_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_2_io_i_3_ci = cb_5_1_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_2_io_i_4_in1 = cb_5_1_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_2_io_i_4_ci = cb_5_1_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_2_io_i_5_in1 = cb_5_1_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_2_io_i_5_ci = cb_5_1_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_2_io_i_6_in1 = cb_5_1_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_2_io_i_6_ci = cb_5_1_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_2_io_i_7_in1 = cb_5_1_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_2_io_i_7_ci = cb_5_1_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_2_io_vi = ccon_5_io_vout[2]; // @[UserProjectWrapper.scala 113:18]
  assign cb_5_2_io_vci = cb_5_1_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_5_2_io_eo = cb_5_3_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_5_2_io_cs_i = ccon_5_io_b_cs_i_2; // @[UserProjectWrapper.scala 107:20]
  assign cb_5_2_io_we_i = ccon_5_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_5_2_io_adr_i = ccon_5_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_5_2_io_dat_i = ccon_5_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_5_3_wb_clk_i = ccon_5_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_5_3_wb_rst_i = ccon_5_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_5_3_io_i_0_in1 = cb_5_2_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_3_io_i_0_ci = cb_5_2_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_3_io_i_1_in1 = cb_5_2_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_3_io_i_1_ci = cb_5_2_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_3_io_i_2_in1 = cb_5_2_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_3_io_i_2_ci = cb_5_2_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_3_io_i_3_in1 = cb_5_2_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_3_io_i_3_ci = cb_5_2_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_3_io_i_4_in1 = cb_5_2_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_3_io_i_4_ci = cb_5_2_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_3_io_i_5_in1 = cb_5_2_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_3_io_i_5_ci = cb_5_2_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_3_io_i_6_in1 = cb_5_2_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_3_io_i_6_ci = cb_5_2_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_3_io_i_7_in1 = cb_5_2_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_3_io_i_7_ci = cb_5_2_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_3_io_vi = ccon_5_io_vout[3]; // @[UserProjectWrapper.scala 113:18]
  assign cb_5_3_io_vci = cb_5_2_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_5_3_io_eo = cb_5_4_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_5_3_io_cs_i = ccon_5_io_b_cs_i_3; // @[UserProjectWrapper.scala 107:20]
  assign cb_5_3_io_we_i = ccon_5_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_5_3_io_adr_i = ccon_5_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_5_3_io_dat_i = ccon_5_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_5_4_wb_clk_i = ccon_5_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_5_4_wb_rst_i = ccon_5_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_5_4_io_i_0_in1 = cb_5_3_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_4_io_i_0_ci = cb_5_3_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_4_io_i_1_in1 = cb_5_3_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_4_io_i_1_ci = cb_5_3_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_4_io_i_2_in1 = cb_5_3_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_4_io_i_2_ci = cb_5_3_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_4_io_i_3_in1 = cb_5_3_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_4_io_i_3_ci = cb_5_3_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_4_io_i_4_in1 = cb_5_3_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_4_io_i_4_ci = cb_5_3_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_4_io_i_5_in1 = cb_5_3_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_4_io_i_5_ci = cb_5_3_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_4_io_i_6_in1 = cb_5_3_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_4_io_i_6_ci = cb_5_3_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_4_io_i_7_in1 = cb_5_3_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_4_io_i_7_ci = cb_5_3_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_4_io_vi = ccon_5_io_vout[4]; // @[UserProjectWrapper.scala 113:18]
  assign cb_5_4_io_vci = cb_5_3_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_5_4_io_eo = cb_5_5_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_5_4_io_cs_i = ccon_5_io_b_cs_i_4; // @[UserProjectWrapper.scala 107:20]
  assign cb_5_4_io_we_i = ccon_5_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_5_4_io_adr_i = ccon_5_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_5_4_io_dat_i = ccon_5_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_5_5_wb_clk_i = ccon_5_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_5_5_wb_rst_i = ccon_5_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_5_5_io_i_0_in1 = cb_5_4_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_5_io_i_0_ci = cb_5_4_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_5_io_i_1_in1 = cb_5_4_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_5_io_i_1_ci = cb_5_4_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_5_io_i_2_in1 = cb_5_4_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_5_io_i_2_ci = cb_5_4_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_5_io_i_3_in1 = cb_5_4_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_5_io_i_3_ci = cb_5_4_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_5_io_i_4_in1 = cb_5_4_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_5_io_i_4_ci = cb_5_4_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_5_io_i_5_in1 = cb_5_4_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_5_io_i_5_ci = cb_5_4_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_5_io_i_6_in1 = cb_5_4_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_5_io_i_6_ci = cb_5_4_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_5_io_i_7_in1 = cb_5_4_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_5_io_i_7_ci = cb_5_4_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_5_io_vi = ccon_5_io_vout[5]; // @[UserProjectWrapper.scala 113:18]
  assign cb_5_5_io_vci = cb_5_4_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_5_5_io_eo = cb_5_6_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_5_5_io_cs_i = ccon_5_io_b_cs_i_5; // @[UserProjectWrapper.scala 107:20]
  assign cb_5_5_io_we_i = ccon_5_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_5_5_io_adr_i = ccon_5_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_5_5_io_dat_i = ccon_5_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_5_6_wb_clk_i = ccon_5_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_5_6_wb_rst_i = ccon_5_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_5_6_io_i_0_in1 = cb_5_5_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_6_io_i_0_ci = cb_5_5_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_6_io_i_1_in1 = cb_5_5_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_6_io_i_1_ci = cb_5_5_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_6_io_i_2_in1 = cb_5_5_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_6_io_i_2_ci = cb_5_5_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_6_io_i_3_in1 = cb_5_5_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_6_io_i_3_ci = cb_5_5_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_6_io_i_4_in1 = cb_5_5_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_6_io_i_4_ci = cb_5_5_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_6_io_i_5_in1 = cb_5_5_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_6_io_i_5_ci = cb_5_5_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_6_io_i_6_in1 = cb_5_5_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_6_io_i_6_ci = cb_5_5_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_6_io_i_7_in1 = cb_5_5_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_6_io_i_7_ci = cb_5_5_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_6_io_vi = ccon_5_io_vout[6]; // @[UserProjectWrapper.scala 113:18]
  assign cb_5_6_io_vci = cb_5_5_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_5_6_io_eo = cb_5_7_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_5_6_io_cs_i = ccon_5_io_b_cs_i_6; // @[UserProjectWrapper.scala 107:20]
  assign cb_5_6_io_we_i = ccon_5_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_5_6_io_adr_i = ccon_5_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_5_6_io_dat_i = ccon_5_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_5_7_wb_clk_i = ccon_5_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_5_7_wb_rst_i = ccon_5_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_5_7_io_i_0_in1 = cb_5_6_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_7_io_i_0_ci = cb_5_6_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_7_io_i_1_in1 = cb_5_6_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_7_io_i_1_ci = cb_5_6_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_7_io_i_2_in1 = cb_5_6_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_7_io_i_2_ci = cb_5_6_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_7_io_i_3_in1 = cb_5_6_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_7_io_i_3_ci = cb_5_6_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_7_io_i_4_in1 = cb_5_6_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_7_io_i_4_ci = cb_5_6_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_7_io_i_5_in1 = cb_5_6_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_7_io_i_5_ci = cb_5_6_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_7_io_i_6_in1 = cb_5_6_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_7_io_i_6_ci = cb_5_6_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_7_io_i_7_in1 = cb_5_6_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_7_io_i_7_ci = cb_5_6_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_7_io_vi = ccon_5_io_vout[7]; // @[UserProjectWrapper.scala 113:18]
  assign cb_5_7_io_vci = cb_5_6_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_5_7_io_eo = cb_5_8_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_5_7_io_cs_i = ccon_5_io_b_cs_i_7; // @[UserProjectWrapper.scala 107:20]
  assign cb_5_7_io_we_i = ccon_5_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_5_7_io_adr_i = ccon_5_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_5_7_io_dat_i = ccon_5_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_5_8_wb_clk_i = ccon_5_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_5_8_wb_rst_i = ccon_5_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_5_8_io_i_0_in1 = cb_5_7_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_8_io_i_0_ci = cb_5_7_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_8_io_i_1_in1 = cb_5_7_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_8_io_i_1_ci = cb_5_7_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_8_io_i_2_in1 = cb_5_7_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_8_io_i_2_ci = cb_5_7_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_8_io_i_3_in1 = cb_5_7_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_8_io_i_3_ci = cb_5_7_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_8_io_i_4_in1 = cb_5_7_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_8_io_i_4_ci = cb_5_7_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_8_io_i_5_in1 = cb_5_7_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_8_io_i_5_ci = cb_5_7_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_8_io_i_6_in1 = cb_5_7_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_8_io_i_6_ci = cb_5_7_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_8_io_i_7_in1 = cb_5_7_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_8_io_i_7_ci = cb_5_7_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_8_io_vi = ccon_5_io_vout[8]; // @[UserProjectWrapper.scala 113:18]
  assign cb_5_8_io_vci = cb_5_7_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_5_8_io_eo = cb_5_9_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_5_8_io_cs_i = ccon_5_io_b_cs_i_8; // @[UserProjectWrapper.scala 107:20]
  assign cb_5_8_io_we_i = ccon_5_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_5_8_io_adr_i = ccon_5_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_5_8_io_dat_i = ccon_5_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_5_9_wb_clk_i = ccon_5_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_5_9_wb_rst_i = ccon_5_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_5_9_io_i_0_in1 = cb_5_8_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_9_io_i_0_ci = cb_5_8_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_9_io_i_1_in1 = cb_5_8_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_9_io_i_1_ci = cb_5_8_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_9_io_i_2_in1 = cb_5_8_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_9_io_i_2_ci = cb_5_8_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_9_io_i_3_in1 = cb_5_8_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_9_io_i_3_ci = cb_5_8_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_9_io_i_4_in1 = cb_5_8_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_9_io_i_4_ci = cb_5_8_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_9_io_i_5_in1 = cb_5_8_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_9_io_i_5_ci = cb_5_8_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_9_io_i_6_in1 = cb_5_8_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_9_io_i_6_ci = cb_5_8_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_9_io_i_7_in1 = cb_5_8_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_9_io_i_7_ci = cb_5_8_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_9_io_vi = ccon_5_io_vout[9]; // @[UserProjectWrapper.scala 113:18]
  assign cb_5_9_io_vci = cb_5_8_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_5_9_io_eo = cb_5_10_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_5_9_io_cs_i = ccon_5_io_b_cs_i_9; // @[UserProjectWrapper.scala 107:20]
  assign cb_5_9_io_we_i = ccon_5_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_5_9_io_adr_i = ccon_5_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_5_9_io_dat_i = ccon_5_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_5_10_wb_clk_i = ccon_5_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_5_10_wb_rst_i = ccon_5_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_5_10_io_i_0_in1 = cb_5_9_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_10_io_i_0_ci = cb_5_9_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_10_io_i_1_in1 = cb_5_9_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_10_io_i_1_ci = cb_5_9_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_10_io_i_2_in1 = cb_5_9_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_10_io_i_2_ci = cb_5_9_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_10_io_i_3_in1 = cb_5_9_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_10_io_i_3_ci = cb_5_9_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_10_io_i_4_in1 = cb_5_9_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_10_io_i_4_ci = cb_5_9_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_10_io_i_5_in1 = cb_5_9_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_10_io_i_5_ci = cb_5_9_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_10_io_i_6_in1 = cb_5_9_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_10_io_i_6_ci = cb_5_9_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_10_io_i_7_in1 = cb_5_9_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_5_10_io_i_7_ci = cb_5_9_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_5_10_io_vi = ccon_5_io_vout[10]; // @[UserProjectWrapper.scala 113:18]
  assign cb_5_10_io_vci = cb_5_9_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_5_10_io_eo = {_T_136,_T_133}; // @[UserProjectWrapper.scala 124:31]
  assign cb_5_10_io_cs_i = ccon_5_io_b_cs_i_10; // @[UserProjectWrapper.scala 107:20]
  assign cb_5_10_io_we_i = ccon_5_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_5_10_io_adr_i = ccon_5_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_5_10_io_dat_i = ccon_5_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign ccon_6_wb_clk_i = icon_m_wb_clk_i; // @[UserProjectWrapper.scala 86:16]
  assign ccon_6_wb_rst_i = icon_m_la_reset[10]; // @[UserProjectWrapper.scala 87:16]
  assign ccon_6_io_cs_i = icon_m_wbs_cs_i[10]; // @[UserProjectWrapper.scala 92:15]
  assign ccon_6_io_we_i = icon_m_wbs_we_i; // @[UserProjectWrapper.scala 91:15]
  assign ccon_6_io_adr_i = icon_m_wbs_adr_i; // @[UserProjectWrapper.scala 89:16]
  assign ccon_6_io_dat_i = icon_m_wbs_dat_i; // @[UserProjectWrapper.scala 90:16]
  assign ccon_6_io_dsi_in = icon_dsi; // @[UserProjectWrapper.scala 95:17]
  assign ccon_6_io_dataLastBlock = cb_6_0_io_wo; // @[UserProjectWrapper.scala 125:24]
  assign ccon_6_io_b_dat_o_0 = cb_6_0_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_6_io_b_dat_o_1 = cb_6_1_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_6_io_b_dat_o_2 = cb_6_2_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_6_io_b_dat_o_3 = cb_6_3_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_6_io_b_dat_o_4 = cb_6_4_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_6_io_b_dat_o_5 = cb_6_5_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_6_io_b_dat_o_6 = cb_6_6_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_6_io_b_dat_o_7 = cb_6_7_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_6_io_b_dat_o_8 = cb_6_8_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_6_io_b_dat_o_9 = cb_6_9_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_6_io_b_dat_o_10 = cb_6_10_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign cb_6_0_wb_clk_i = ccon_6_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_6_0_wb_rst_i = ccon_6_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_6_0_io_i_0_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_6_0_io_i_0_ci = ccon_6_io_dsi_o; // @[UserProjectWrapper.scala 118:14 UserProjectWrapper.scala 121:26]
  assign cb_6_0_io_i_1_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_6_0_io_i_1_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_6_0_io_i_2_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_6_0_io_i_2_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_6_0_io_i_3_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_6_0_io_i_3_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_6_0_io_i_4_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_6_0_io_i_4_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_6_0_io_i_5_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_6_0_io_i_5_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_6_0_io_i_6_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_6_0_io_i_6_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_6_0_io_i_7_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_6_0_io_i_7_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_6_0_io_vi = ccon_6_io_vout[0]; // @[UserProjectWrapper.scala 113:18]
  assign cb_6_0_io_vci = 1'h0; // @[UserProjectWrapper.scala 122:22]
  assign cb_6_0_io_eo = cb_6_1_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_6_0_io_cs_i = ccon_6_io_b_cs_i_0; // @[UserProjectWrapper.scala 107:20]
  assign cb_6_0_io_we_i = ccon_6_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_6_0_io_adr_i = ccon_6_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_6_0_io_dat_i = ccon_6_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_6_1_wb_clk_i = ccon_6_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_6_1_wb_rst_i = ccon_6_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_6_1_io_i_0_in1 = cb_6_0_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_1_io_i_0_ci = cb_6_0_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_1_io_i_1_in1 = cb_6_0_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_1_io_i_1_ci = cb_6_0_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_1_io_i_2_in1 = cb_6_0_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_1_io_i_2_ci = cb_6_0_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_1_io_i_3_in1 = cb_6_0_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_1_io_i_3_ci = cb_6_0_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_1_io_i_4_in1 = cb_6_0_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_1_io_i_4_ci = cb_6_0_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_1_io_i_5_in1 = cb_6_0_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_1_io_i_5_ci = cb_6_0_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_1_io_i_6_in1 = cb_6_0_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_1_io_i_6_ci = cb_6_0_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_1_io_i_7_in1 = cb_6_0_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_1_io_i_7_ci = cb_6_0_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_1_io_vi = ccon_6_io_vout[1]; // @[UserProjectWrapper.scala 113:18]
  assign cb_6_1_io_vci = cb_6_0_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_6_1_io_eo = cb_6_2_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_6_1_io_cs_i = ccon_6_io_b_cs_i_1; // @[UserProjectWrapper.scala 107:20]
  assign cb_6_1_io_we_i = ccon_6_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_6_1_io_adr_i = ccon_6_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_6_1_io_dat_i = ccon_6_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_6_2_wb_clk_i = ccon_6_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_6_2_wb_rst_i = ccon_6_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_6_2_io_i_0_in1 = cb_6_1_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_2_io_i_0_ci = cb_6_1_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_2_io_i_1_in1 = cb_6_1_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_2_io_i_1_ci = cb_6_1_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_2_io_i_2_in1 = cb_6_1_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_2_io_i_2_ci = cb_6_1_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_2_io_i_3_in1 = cb_6_1_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_2_io_i_3_ci = cb_6_1_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_2_io_i_4_in1 = cb_6_1_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_2_io_i_4_ci = cb_6_1_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_2_io_i_5_in1 = cb_6_1_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_2_io_i_5_ci = cb_6_1_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_2_io_i_6_in1 = cb_6_1_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_2_io_i_6_ci = cb_6_1_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_2_io_i_7_in1 = cb_6_1_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_2_io_i_7_ci = cb_6_1_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_2_io_vi = ccon_6_io_vout[2]; // @[UserProjectWrapper.scala 113:18]
  assign cb_6_2_io_vci = cb_6_1_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_6_2_io_eo = cb_6_3_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_6_2_io_cs_i = ccon_6_io_b_cs_i_2; // @[UserProjectWrapper.scala 107:20]
  assign cb_6_2_io_we_i = ccon_6_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_6_2_io_adr_i = ccon_6_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_6_2_io_dat_i = ccon_6_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_6_3_wb_clk_i = ccon_6_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_6_3_wb_rst_i = ccon_6_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_6_3_io_i_0_in1 = cb_6_2_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_3_io_i_0_ci = cb_6_2_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_3_io_i_1_in1 = cb_6_2_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_3_io_i_1_ci = cb_6_2_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_3_io_i_2_in1 = cb_6_2_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_3_io_i_2_ci = cb_6_2_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_3_io_i_3_in1 = cb_6_2_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_3_io_i_3_ci = cb_6_2_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_3_io_i_4_in1 = cb_6_2_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_3_io_i_4_ci = cb_6_2_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_3_io_i_5_in1 = cb_6_2_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_3_io_i_5_ci = cb_6_2_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_3_io_i_6_in1 = cb_6_2_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_3_io_i_6_ci = cb_6_2_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_3_io_i_7_in1 = cb_6_2_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_3_io_i_7_ci = cb_6_2_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_3_io_vi = ccon_6_io_vout[3]; // @[UserProjectWrapper.scala 113:18]
  assign cb_6_3_io_vci = cb_6_2_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_6_3_io_eo = cb_6_4_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_6_3_io_cs_i = ccon_6_io_b_cs_i_3; // @[UserProjectWrapper.scala 107:20]
  assign cb_6_3_io_we_i = ccon_6_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_6_3_io_adr_i = ccon_6_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_6_3_io_dat_i = ccon_6_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_6_4_wb_clk_i = ccon_6_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_6_4_wb_rst_i = ccon_6_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_6_4_io_i_0_in1 = cb_6_3_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_4_io_i_0_ci = cb_6_3_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_4_io_i_1_in1 = cb_6_3_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_4_io_i_1_ci = cb_6_3_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_4_io_i_2_in1 = cb_6_3_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_4_io_i_2_ci = cb_6_3_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_4_io_i_3_in1 = cb_6_3_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_4_io_i_3_ci = cb_6_3_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_4_io_i_4_in1 = cb_6_3_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_4_io_i_4_ci = cb_6_3_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_4_io_i_5_in1 = cb_6_3_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_4_io_i_5_ci = cb_6_3_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_4_io_i_6_in1 = cb_6_3_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_4_io_i_6_ci = cb_6_3_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_4_io_i_7_in1 = cb_6_3_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_4_io_i_7_ci = cb_6_3_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_4_io_vi = ccon_6_io_vout[4]; // @[UserProjectWrapper.scala 113:18]
  assign cb_6_4_io_vci = cb_6_3_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_6_4_io_eo = cb_6_5_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_6_4_io_cs_i = ccon_6_io_b_cs_i_4; // @[UserProjectWrapper.scala 107:20]
  assign cb_6_4_io_we_i = ccon_6_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_6_4_io_adr_i = ccon_6_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_6_4_io_dat_i = ccon_6_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_6_5_wb_clk_i = ccon_6_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_6_5_wb_rst_i = ccon_6_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_6_5_io_i_0_in1 = cb_6_4_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_5_io_i_0_ci = cb_6_4_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_5_io_i_1_in1 = cb_6_4_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_5_io_i_1_ci = cb_6_4_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_5_io_i_2_in1 = cb_6_4_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_5_io_i_2_ci = cb_6_4_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_5_io_i_3_in1 = cb_6_4_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_5_io_i_3_ci = cb_6_4_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_5_io_i_4_in1 = cb_6_4_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_5_io_i_4_ci = cb_6_4_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_5_io_i_5_in1 = cb_6_4_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_5_io_i_5_ci = cb_6_4_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_5_io_i_6_in1 = cb_6_4_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_5_io_i_6_ci = cb_6_4_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_5_io_i_7_in1 = cb_6_4_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_5_io_i_7_ci = cb_6_4_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_5_io_vi = ccon_6_io_vout[5]; // @[UserProjectWrapper.scala 113:18]
  assign cb_6_5_io_vci = cb_6_4_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_6_5_io_eo = cb_6_6_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_6_5_io_cs_i = ccon_6_io_b_cs_i_5; // @[UserProjectWrapper.scala 107:20]
  assign cb_6_5_io_we_i = ccon_6_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_6_5_io_adr_i = ccon_6_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_6_5_io_dat_i = ccon_6_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_6_6_wb_clk_i = ccon_6_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_6_6_wb_rst_i = ccon_6_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_6_6_io_i_0_in1 = cb_6_5_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_6_io_i_0_ci = cb_6_5_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_6_io_i_1_in1 = cb_6_5_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_6_io_i_1_ci = cb_6_5_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_6_io_i_2_in1 = cb_6_5_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_6_io_i_2_ci = cb_6_5_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_6_io_i_3_in1 = cb_6_5_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_6_io_i_3_ci = cb_6_5_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_6_io_i_4_in1 = cb_6_5_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_6_io_i_4_ci = cb_6_5_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_6_io_i_5_in1 = cb_6_5_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_6_io_i_5_ci = cb_6_5_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_6_io_i_6_in1 = cb_6_5_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_6_io_i_6_ci = cb_6_5_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_6_io_i_7_in1 = cb_6_5_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_6_io_i_7_ci = cb_6_5_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_6_io_vi = ccon_6_io_vout[6]; // @[UserProjectWrapper.scala 113:18]
  assign cb_6_6_io_vci = cb_6_5_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_6_6_io_eo = cb_6_7_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_6_6_io_cs_i = ccon_6_io_b_cs_i_6; // @[UserProjectWrapper.scala 107:20]
  assign cb_6_6_io_we_i = ccon_6_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_6_6_io_adr_i = ccon_6_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_6_6_io_dat_i = ccon_6_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_6_7_wb_clk_i = ccon_6_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_6_7_wb_rst_i = ccon_6_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_6_7_io_i_0_in1 = cb_6_6_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_7_io_i_0_ci = cb_6_6_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_7_io_i_1_in1 = cb_6_6_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_7_io_i_1_ci = cb_6_6_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_7_io_i_2_in1 = cb_6_6_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_7_io_i_2_ci = cb_6_6_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_7_io_i_3_in1 = cb_6_6_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_7_io_i_3_ci = cb_6_6_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_7_io_i_4_in1 = cb_6_6_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_7_io_i_4_ci = cb_6_6_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_7_io_i_5_in1 = cb_6_6_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_7_io_i_5_ci = cb_6_6_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_7_io_i_6_in1 = cb_6_6_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_7_io_i_6_ci = cb_6_6_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_7_io_i_7_in1 = cb_6_6_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_7_io_i_7_ci = cb_6_6_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_7_io_vi = ccon_6_io_vout[7]; // @[UserProjectWrapper.scala 113:18]
  assign cb_6_7_io_vci = cb_6_6_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_6_7_io_eo = cb_6_8_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_6_7_io_cs_i = ccon_6_io_b_cs_i_7; // @[UserProjectWrapper.scala 107:20]
  assign cb_6_7_io_we_i = ccon_6_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_6_7_io_adr_i = ccon_6_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_6_7_io_dat_i = ccon_6_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_6_8_wb_clk_i = ccon_6_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_6_8_wb_rst_i = ccon_6_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_6_8_io_i_0_in1 = cb_6_7_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_8_io_i_0_ci = cb_6_7_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_8_io_i_1_in1 = cb_6_7_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_8_io_i_1_ci = cb_6_7_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_8_io_i_2_in1 = cb_6_7_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_8_io_i_2_ci = cb_6_7_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_8_io_i_3_in1 = cb_6_7_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_8_io_i_3_ci = cb_6_7_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_8_io_i_4_in1 = cb_6_7_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_8_io_i_4_ci = cb_6_7_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_8_io_i_5_in1 = cb_6_7_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_8_io_i_5_ci = cb_6_7_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_8_io_i_6_in1 = cb_6_7_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_8_io_i_6_ci = cb_6_7_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_8_io_i_7_in1 = cb_6_7_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_8_io_i_7_ci = cb_6_7_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_8_io_vi = ccon_6_io_vout[8]; // @[UserProjectWrapper.scala 113:18]
  assign cb_6_8_io_vci = cb_6_7_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_6_8_io_eo = cb_6_9_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_6_8_io_cs_i = ccon_6_io_b_cs_i_8; // @[UserProjectWrapper.scala 107:20]
  assign cb_6_8_io_we_i = ccon_6_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_6_8_io_adr_i = ccon_6_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_6_8_io_dat_i = ccon_6_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_6_9_wb_clk_i = ccon_6_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_6_9_wb_rst_i = ccon_6_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_6_9_io_i_0_in1 = cb_6_8_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_9_io_i_0_ci = cb_6_8_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_9_io_i_1_in1 = cb_6_8_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_9_io_i_1_ci = cb_6_8_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_9_io_i_2_in1 = cb_6_8_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_9_io_i_2_ci = cb_6_8_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_9_io_i_3_in1 = cb_6_8_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_9_io_i_3_ci = cb_6_8_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_9_io_i_4_in1 = cb_6_8_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_9_io_i_4_ci = cb_6_8_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_9_io_i_5_in1 = cb_6_8_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_9_io_i_5_ci = cb_6_8_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_9_io_i_6_in1 = cb_6_8_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_9_io_i_6_ci = cb_6_8_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_9_io_i_7_in1 = cb_6_8_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_9_io_i_7_ci = cb_6_8_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_9_io_vi = ccon_6_io_vout[9]; // @[UserProjectWrapper.scala 113:18]
  assign cb_6_9_io_vci = cb_6_8_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_6_9_io_eo = cb_6_10_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_6_9_io_cs_i = ccon_6_io_b_cs_i_9; // @[UserProjectWrapper.scala 107:20]
  assign cb_6_9_io_we_i = ccon_6_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_6_9_io_adr_i = ccon_6_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_6_9_io_dat_i = ccon_6_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_6_10_wb_clk_i = ccon_6_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_6_10_wb_rst_i = ccon_6_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_6_10_io_i_0_in1 = cb_6_9_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_10_io_i_0_ci = cb_6_9_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_10_io_i_1_in1 = cb_6_9_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_10_io_i_1_ci = cb_6_9_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_10_io_i_2_in1 = cb_6_9_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_10_io_i_2_ci = cb_6_9_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_10_io_i_3_in1 = cb_6_9_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_10_io_i_3_ci = cb_6_9_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_10_io_i_4_in1 = cb_6_9_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_10_io_i_4_ci = cb_6_9_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_10_io_i_5_in1 = cb_6_9_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_10_io_i_5_ci = cb_6_9_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_10_io_i_6_in1 = cb_6_9_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_10_io_i_6_ci = cb_6_9_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_10_io_i_7_in1 = cb_6_9_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_6_10_io_i_7_ci = cb_6_9_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_6_10_io_vi = ccon_6_io_vout[10]; // @[UserProjectWrapper.scala 113:18]
  assign cb_6_10_io_vci = cb_6_9_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_6_10_io_eo = {_T_156,_T_153}; // @[UserProjectWrapper.scala 124:31]
  assign cb_6_10_io_cs_i = ccon_6_io_b_cs_i_10; // @[UserProjectWrapper.scala 107:20]
  assign cb_6_10_io_we_i = ccon_6_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_6_10_io_adr_i = ccon_6_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_6_10_io_dat_i = ccon_6_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign ccon_7_wb_clk_i = icon_m_wb_clk_i; // @[UserProjectWrapper.scala 86:16]
  assign ccon_7_wb_rst_i = icon_m_la_reset[11]; // @[UserProjectWrapper.scala 87:16]
  assign ccon_7_io_cs_i = icon_m_wbs_cs_i[11]; // @[UserProjectWrapper.scala 92:15]
  assign ccon_7_io_we_i = icon_m_wbs_we_i; // @[UserProjectWrapper.scala 91:15]
  assign ccon_7_io_adr_i = icon_m_wbs_adr_i; // @[UserProjectWrapper.scala 89:16]
  assign ccon_7_io_dat_i = icon_m_wbs_dat_i; // @[UserProjectWrapper.scala 90:16]
  assign ccon_7_io_dsi_in = icon_dsi; // @[UserProjectWrapper.scala 95:17]
  assign ccon_7_io_dataLastBlock = cb_7_0_io_wo; // @[UserProjectWrapper.scala 125:24]
  assign ccon_7_io_b_dat_o_0 = cb_7_0_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_7_io_b_dat_o_1 = cb_7_1_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_7_io_b_dat_o_2 = cb_7_2_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_7_io_b_dat_o_3 = cb_7_3_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_7_io_b_dat_o_4 = cb_7_4_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_7_io_b_dat_o_5 = cb_7_5_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_7_io_b_dat_o_6 = cb_7_6_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_7_io_b_dat_o_7 = cb_7_7_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_7_io_b_dat_o_8 = cb_7_8_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_7_io_b_dat_o_9 = cb_7_9_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign ccon_7_io_b_dat_o_10 = cb_7_10_io_dat_o; // @[UserProjectWrapper.scala 111:24]
  assign cb_7_0_wb_clk_i = ccon_7_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_7_0_wb_rst_i = ccon_7_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_7_0_io_i_0_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_7_0_io_i_0_ci = ccon_7_io_dsi_o; // @[UserProjectWrapper.scala 118:14 UserProjectWrapper.scala 121:26]
  assign cb_7_0_io_i_1_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_7_0_io_i_1_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_7_0_io_i_2_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_7_0_io_i_2_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_7_0_io_i_3_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_7_0_io_i_3_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_7_0_io_i_4_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_7_0_io_i_4_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_7_0_io_i_5_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_7_0_io_i_5_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_7_0_io_i_6_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_7_0_io_i_6_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_7_0_io_i_7_in1 = 8'h0; // @[UserProjectWrapper.scala 119:15]
  assign cb_7_0_io_i_7_ci = 1'h0; // @[UserProjectWrapper.scala 118:14]
  assign cb_7_0_io_vi = ccon_7_io_vout[0]; // @[UserProjectWrapper.scala 113:18]
  assign cb_7_0_io_vci = 1'h0; // @[UserProjectWrapper.scala 122:22]
  assign cb_7_0_io_eo = cb_7_1_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_7_0_io_cs_i = ccon_7_io_b_cs_i_0; // @[UserProjectWrapper.scala 107:20]
  assign cb_7_0_io_we_i = ccon_7_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_7_0_io_adr_i = ccon_7_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_7_0_io_dat_i = ccon_7_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_7_1_wb_clk_i = ccon_7_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_7_1_wb_rst_i = ccon_7_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_7_1_io_i_0_in1 = cb_7_0_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_1_io_i_0_ci = cb_7_0_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_1_io_i_1_in1 = cb_7_0_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_1_io_i_1_ci = cb_7_0_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_1_io_i_2_in1 = cb_7_0_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_1_io_i_2_ci = cb_7_0_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_1_io_i_3_in1 = cb_7_0_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_1_io_i_3_ci = cb_7_0_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_1_io_i_4_in1 = cb_7_0_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_1_io_i_4_ci = cb_7_0_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_1_io_i_5_in1 = cb_7_0_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_1_io_i_5_ci = cb_7_0_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_1_io_i_6_in1 = cb_7_0_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_1_io_i_6_ci = cb_7_0_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_1_io_i_7_in1 = cb_7_0_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_1_io_i_7_ci = cb_7_0_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_1_io_vi = ccon_7_io_vout[1]; // @[UserProjectWrapper.scala 113:18]
  assign cb_7_1_io_vci = cb_7_0_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_7_1_io_eo = cb_7_2_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_7_1_io_cs_i = ccon_7_io_b_cs_i_1; // @[UserProjectWrapper.scala 107:20]
  assign cb_7_1_io_we_i = ccon_7_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_7_1_io_adr_i = ccon_7_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_7_1_io_dat_i = ccon_7_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_7_2_wb_clk_i = ccon_7_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_7_2_wb_rst_i = ccon_7_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_7_2_io_i_0_in1 = cb_7_1_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_2_io_i_0_ci = cb_7_1_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_2_io_i_1_in1 = cb_7_1_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_2_io_i_1_ci = cb_7_1_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_2_io_i_2_in1 = cb_7_1_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_2_io_i_2_ci = cb_7_1_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_2_io_i_3_in1 = cb_7_1_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_2_io_i_3_ci = cb_7_1_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_2_io_i_4_in1 = cb_7_1_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_2_io_i_4_ci = cb_7_1_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_2_io_i_5_in1 = cb_7_1_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_2_io_i_5_ci = cb_7_1_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_2_io_i_6_in1 = cb_7_1_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_2_io_i_6_ci = cb_7_1_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_2_io_i_7_in1 = cb_7_1_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_2_io_i_7_ci = cb_7_1_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_2_io_vi = ccon_7_io_vout[2]; // @[UserProjectWrapper.scala 113:18]
  assign cb_7_2_io_vci = cb_7_1_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_7_2_io_eo = cb_7_3_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_7_2_io_cs_i = ccon_7_io_b_cs_i_2; // @[UserProjectWrapper.scala 107:20]
  assign cb_7_2_io_we_i = ccon_7_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_7_2_io_adr_i = ccon_7_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_7_2_io_dat_i = ccon_7_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_7_3_wb_clk_i = ccon_7_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_7_3_wb_rst_i = ccon_7_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_7_3_io_i_0_in1 = cb_7_2_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_3_io_i_0_ci = cb_7_2_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_3_io_i_1_in1 = cb_7_2_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_3_io_i_1_ci = cb_7_2_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_3_io_i_2_in1 = cb_7_2_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_3_io_i_2_ci = cb_7_2_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_3_io_i_3_in1 = cb_7_2_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_3_io_i_3_ci = cb_7_2_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_3_io_i_4_in1 = cb_7_2_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_3_io_i_4_ci = cb_7_2_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_3_io_i_5_in1 = cb_7_2_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_3_io_i_5_ci = cb_7_2_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_3_io_i_6_in1 = cb_7_2_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_3_io_i_6_ci = cb_7_2_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_3_io_i_7_in1 = cb_7_2_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_3_io_i_7_ci = cb_7_2_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_3_io_vi = ccon_7_io_vout[3]; // @[UserProjectWrapper.scala 113:18]
  assign cb_7_3_io_vci = cb_7_2_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_7_3_io_eo = cb_7_4_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_7_3_io_cs_i = ccon_7_io_b_cs_i_3; // @[UserProjectWrapper.scala 107:20]
  assign cb_7_3_io_we_i = ccon_7_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_7_3_io_adr_i = ccon_7_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_7_3_io_dat_i = ccon_7_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_7_4_wb_clk_i = ccon_7_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_7_4_wb_rst_i = ccon_7_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_7_4_io_i_0_in1 = cb_7_3_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_4_io_i_0_ci = cb_7_3_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_4_io_i_1_in1 = cb_7_3_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_4_io_i_1_ci = cb_7_3_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_4_io_i_2_in1 = cb_7_3_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_4_io_i_2_ci = cb_7_3_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_4_io_i_3_in1 = cb_7_3_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_4_io_i_3_ci = cb_7_3_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_4_io_i_4_in1 = cb_7_3_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_4_io_i_4_ci = cb_7_3_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_4_io_i_5_in1 = cb_7_3_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_4_io_i_5_ci = cb_7_3_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_4_io_i_6_in1 = cb_7_3_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_4_io_i_6_ci = cb_7_3_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_4_io_i_7_in1 = cb_7_3_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_4_io_i_7_ci = cb_7_3_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_4_io_vi = ccon_7_io_vout[4]; // @[UserProjectWrapper.scala 113:18]
  assign cb_7_4_io_vci = cb_7_3_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_7_4_io_eo = cb_7_5_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_7_4_io_cs_i = ccon_7_io_b_cs_i_4; // @[UserProjectWrapper.scala 107:20]
  assign cb_7_4_io_we_i = ccon_7_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_7_4_io_adr_i = ccon_7_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_7_4_io_dat_i = ccon_7_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_7_5_wb_clk_i = ccon_7_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_7_5_wb_rst_i = ccon_7_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_7_5_io_i_0_in1 = cb_7_4_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_5_io_i_0_ci = cb_7_4_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_5_io_i_1_in1 = cb_7_4_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_5_io_i_1_ci = cb_7_4_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_5_io_i_2_in1 = cb_7_4_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_5_io_i_2_ci = cb_7_4_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_5_io_i_3_in1 = cb_7_4_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_5_io_i_3_ci = cb_7_4_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_5_io_i_4_in1 = cb_7_4_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_5_io_i_4_ci = cb_7_4_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_5_io_i_5_in1 = cb_7_4_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_5_io_i_5_ci = cb_7_4_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_5_io_i_6_in1 = cb_7_4_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_5_io_i_6_ci = cb_7_4_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_5_io_i_7_in1 = cb_7_4_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_5_io_i_7_ci = cb_7_4_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_5_io_vi = ccon_7_io_vout[5]; // @[UserProjectWrapper.scala 113:18]
  assign cb_7_5_io_vci = cb_7_4_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_7_5_io_eo = cb_7_6_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_7_5_io_cs_i = ccon_7_io_b_cs_i_5; // @[UserProjectWrapper.scala 107:20]
  assign cb_7_5_io_we_i = ccon_7_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_7_5_io_adr_i = ccon_7_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_7_5_io_dat_i = ccon_7_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_7_6_wb_clk_i = ccon_7_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_7_6_wb_rst_i = ccon_7_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_7_6_io_i_0_in1 = cb_7_5_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_6_io_i_0_ci = cb_7_5_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_6_io_i_1_in1 = cb_7_5_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_6_io_i_1_ci = cb_7_5_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_6_io_i_2_in1 = cb_7_5_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_6_io_i_2_ci = cb_7_5_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_6_io_i_3_in1 = cb_7_5_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_6_io_i_3_ci = cb_7_5_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_6_io_i_4_in1 = cb_7_5_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_6_io_i_4_ci = cb_7_5_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_6_io_i_5_in1 = cb_7_5_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_6_io_i_5_ci = cb_7_5_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_6_io_i_6_in1 = cb_7_5_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_6_io_i_6_ci = cb_7_5_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_6_io_i_7_in1 = cb_7_5_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_6_io_i_7_ci = cb_7_5_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_6_io_vi = ccon_7_io_vout[6]; // @[UserProjectWrapper.scala 113:18]
  assign cb_7_6_io_vci = cb_7_5_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_7_6_io_eo = cb_7_7_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_7_6_io_cs_i = ccon_7_io_b_cs_i_6; // @[UserProjectWrapper.scala 107:20]
  assign cb_7_6_io_we_i = ccon_7_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_7_6_io_adr_i = ccon_7_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_7_6_io_dat_i = ccon_7_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_7_7_wb_clk_i = ccon_7_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_7_7_wb_rst_i = ccon_7_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_7_7_io_i_0_in1 = cb_7_6_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_7_io_i_0_ci = cb_7_6_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_7_io_i_1_in1 = cb_7_6_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_7_io_i_1_ci = cb_7_6_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_7_io_i_2_in1 = cb_7_6_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_7_io_i_2_ci = cb_7_6_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_7_io_i_3_in1 = cb_7_6_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_7_io_i_3_ci = cb_7_6_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_7_io_i_4_in1 = cb_7_6_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_7_io_i_4_ci = cb_7_6_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_7_io_i_5_in1 = cb_7_6_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_7_io_i_5_ci = cb_7_6_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_7_io_i_6_in1 = cb_7_6_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_7_io_i_6_ci = cb_7_6_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_7_io_i_7_in1 = cb_7_6_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_7_io_i_7_ci = cb_7_6_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_7_io_vi = ccon_7_io_vout[7]; // @[UserProjectWrapper.scala 113:18]
  assign cb_7_7_io_vci = cb_7_6_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_7_7_io_eo = cb_7_8_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_7_7_io_cs_i = ccon_7_io_b_cs_i_7; // @[UserProjectWrapper.scala 107:20]
  assign cb_7_7_io_we_i = ccon_7_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_7_7_io_adr_i = ccon_7_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_7_7_io_dat_i = ccon_7_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_7_8_wb_clk_i = ccon_7_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_7_8_wb_rst_i = ccon_7_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_7_8_io_i_0_in1 = cb_7_7_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_8_io_i_0_ci = cb_7_7_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_8_io_i_1_in1 = cb_7_7_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_8_io_i_1_ci = cb_7_7_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_8_io_i_2_in1 = cb_7_7_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_8_io_i_2_ci = cb_7_7_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_8_io_i_3_in1 = cb_7_7_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_8_io_i_3_ci = cb_7_7_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_8_io_i_4_in1 = cb_7_7_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_8_io_i_4_ci = cb_7_7_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_8_io_i_5_in1 = cb_7_7_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_8_io_i_5_ci = cb_7_7_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_8_io_i_6_in1 = cb_7_7_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_8_io_i_6_ci = cb_7_7_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_8_io_i_7_in1 = cb_7_7_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_8_io_i_7_ci = cb_7_7_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_8_io_vi = ccon_7_io_vout[8]; // @[UserProjectWrapper.scala 113:18]
  assign cb_7_8_io_vci = cb_7_7_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_7_8_io_eo = cb_7_9_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_7_8_io_cs_i = ccon_7_io_b_cs_i_8; // @[UserProjectWrapper.scala 107:20]
  assign cb_7_8_io_we_i = ccon_7_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_7_8_io_adr_i = ccon_7_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_7_8_io_dat_i = ccon_7_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_7_9_wb_clk_i = ccon_7_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_7_9_wb_rst_i = ccon_7_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_7_9_io_i_0_in1 = cb_7_8_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_9_io_i_0_ci = cb_7_8_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_9_io_i_1_in1 = cb_7_8_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_9_io_i_1_ci = cb_7_8_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_9_io_i_2_in1 = cb_7_8_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_9_io_i_2_ci = cb_7_8_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_9_io_i_3_in1 = cb_7_8_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_9_io_i_3_ci = cb_7_8_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_9_io_i_4_in1 = cb_7_8_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_9_io_i_4_ci = cb_7_8_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_9_io_i_5_in1 = cb_7_8_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_9_io_i_5_ci = cb_7_8_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_9_io_i_6_in1 = cb_7_8_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_9_io_i_6_ci = cb_7_8_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_9_io_i_7_in1 = cb_7_8_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_9_io_i_7_ci = cb_7_8_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_9_io_vi = ccon_7_io_vout[9]; // @[UserProjectWrapper.scala 113:18]
  assign cb_7_9_io_vci = cb_7_8_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_7_9_io_eo = cb_7_10_io_wo; // @[UserProjectWrapper.scala 133:27]
  assign cb_7_9_io_cs_i = ccon_7_io_b_cs_i_9; // @[UserProjectWrapper.scala 107:20]
  assign cb_7_9_io_we_i = ccon_7_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_7_9_io_adr_i = ccon_7_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_7_9_io_dat_i = ccon_7_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
  assign cb_7_10_wb_clk_i = ccon_7_wb_clk_i; // @[UserProjectWrapper.scala 104:18]
  assign cb_7_10_wb_rst_i = ccon_7_wb_rst_i; // @[UserProjectWrapper.scala 105:18]
  assign cb_7_10_io_i_0_in1 = cb_7_9_io_o_0_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_10_io_i_0_ci = cb_7_9_io_o_0_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_10_io_i_1_in1 = cb_7_9_io_o_1_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_10_io_i_1_ci = cb_7_9_io_o_1_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_10_io_i_2_in1 = cb_7_9_io_o_2_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_10_io_i_2_ci = cb_7_9_io_o_2_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_10_io_i_3_in1 = cb_7_9_io_o_3_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_10_io_i_3_ci = cb_7_9_io_o_3_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_10_io_i_4_in1 = cb_7_9_io_o_4_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_10_io_i_4_ci = cb_7_9_io_o_4_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_10_io_i_5_in1 = cb_7_9_io_o_5_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_10_io_i_5_ci = cb_7_9_io_o_5_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_10_io_i_6_in1 = cb_7_9_io_o_6_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_10_io_i_6_ci = cb_7_9_io_o_6_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_10_io_i_7_in1 = cb_7_9_io_o_7_out; // @[UserProjectWrapper.scala 130:18]
  assign cb_7_10_io_i_7_ci = cb_7_9_io_o_7_co; // @[UserProjectWrapper.scala 129:17]
  assign cb_7_10_io_vi = ccon_7_io_vout[10]; // @[UserProjectWrapper.scala 113:18]
  assign cb_7_10_io_vci = cb_7_9_io_vco; // @[UserProjectWrapper.scala 132:24]
  assign cb_7_10_io_eo = {_T_176,_T_173}; // @[UserProjectWrapper.scala 124:31]
  assign cb_7_10_io_cs_i = ccon_7_io_b_cs_i_10; // @[UserProjectWrapper.scala 107:20]
  assign cb_7_10_io_we_i = ccon_7_io_b_we_i; // @[UserProjectWrapper.scala 108:20]
  assign cb_7_10_io_adr_i = ccon_7_io_b_adr_i; // @[UserProjectWrapper.scala 109:21]
  assign cb_7_10_io_dat_i = ccon_7_io_b_dat_i; // @[UserProjectWrapper.scala 110:21]
endmodule
