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
// Genereted with Chisel HDL
module Interlink_Module(
  input  [11:0] io_bus_adr_i,
  input         io_bus_we_i,
  input         io_bus_cs_i,
  output        io_bus_ack_o,
  output [31:0] io_bus_dat_o,
  output        io_tmr_val_we,
  input  [31:0] io_tmr_val_do,
  output        io_tmr_dat_we,
  input  [31:0] io_tmr_dat_do,
  output        io_tmr_duty_we,
  input  [31:0] io_tmr_duty_do,
  output        io_tmr_cfg_we,
  input  [31:0] io_tmr_cfg_do,
  output        io_qei_count_we,
  input  [31:0] io_qei_count_do,
  output        io_qei_cfg_we,
  input  [31:0] io_qei_cfg_do,
  input  [15:0] io_qei_speed_do,
  output        io_pid_kp_we,
  input  [15:0] io_pid_kp_do,
  output        io_pid_ki_we,
  input  [15:0] io_pid_ki_do,
  output        io_pid_kd_we,
  input  [15:0] io_pid_kd_do,
  output        io_pid_ref_we,
  input  [15:0] io_pid_ref_do,
  output        io_pid_fb_we,
  input  [15:0] io_pid_fb_do,
  output        io_pid_cfg_we,
  input  [15:0] io_pid_cfg_do
);
  wire  _T; // @[Interlink.scala 83:63]
  wire  tmr_cfg_sel; // @[Interlink.scala 83:48]
  wire  _T_2; // @[Interlink.scala 84:63]
  wire  tmr_val_sel; // @[Interlink.scala 84:48]
  wire  _T_4; // @[Interlink.scala 85:63]
  wire  tmr_dat_sel; // @[Interlink.scala 85:48]
  wire  _T_6; // @[Interlink.scala 86:64]
  wire  tmr_duty_sel; // @[Interlink.scala 86:49]
  wire  _T_14; // @[Interlink.scala 95:29]
  wire  _T_15; // @[Interlink.scala 95:44]
  wire  tmr_sel; // @[Interlink.scala 95:59]
  wire [31:0] _T_16; // @[Interlink.scala 97:25]
  wire [31:0] _T_17; // @[Interlink.scala 96:50]
  wire [31:0] tmr_do; // @[Interlink.scala 96:19]
  wire  _T_18; // @[Interlink.scala 101:65]
  wire  qei_count_sel; // @[Interlink.scala 101:50]
  wire  _T_21; // @[Interlink.scala 105:63]
  wire  qei_cfg_sel; // @[Interlink.scala 105:48]
  wire  _T_24; // @[Interlink.scala 109:65]
  wire  qei_speed_sel; // @[Interlink.scala 109:50]
  wire  _T_27; // @[Interlink.scala 113:31]
  wire  qei_sel; // @[Interlink.scala 113:46]
  wire [31:0] _T_28; // @[Interlink.scala 114:52]
  wire [15:0] _T_61; // @[Interlink.scala 166:41]
  wire [31:0] qei_speed_do; // @[Interlink.scala 108:26 Interlink.scala 166:16]
  wire [31:0] qei_do; // @[Interlink.scala 114:19]
  wire  _T_29; // @[Interlink.scala 119:62]
  wire  pid_kp_sel; // @[Interlink.scala 119:47]
  wire  _T_32; // @[Interlink.scala 123:62]
  wire  pid_ki_sel; // @[Interlink.scala 123:47]
  wire  _T_35; // @[Interlink.scala 127:62]
  wire  pid_kd_sel; // @[Interlink.scala 127:47]
  wire  _T_38; // @[Interlink.scala 131:63]
  wire  pid_ref_sel; // @[Interlink.scala 131:48]
  wire  _T_41; // @[Interlink.scala 135:62]
  wire  pid_fb_sel; // @[Interlink.scala 135:47]
  wire  _T_44; // @[Interlink.scala 139:63]
  wire  pid_cfg_sel; // @[Interlink.scala 139:48]
  wire  _T_47; // @[Interlink.scala 142:28]
  wire  _T_48; // @[Interlink.scala 142:42]
  wire  _T_49; // @[Interlink.scala 142:56]
  wire  _T_50; // @[Interlink.scala 142:71]
  wire  pid_sel; // @[Interlink.scala 142:85]
  wire [15:0] _T_51; // @[Interlink.scala 146:46]
  wire [15:0] _T_52; // @[Interlink.scala 145:46]
  wire [15:0] _T_53; // @[Interlink.scala 144:46]
  wire [15:0] _T_54; // @[Interlink.scala 143:46]
  wire [15:0] _T_55; // @[Interlink.scala 149:87]
  wire [15:0] _T_56; // @[Interlink.scala 149:64]
  wire [31:0] _T_57; // @[Interlink.scala 149:43]
  wire  _T_59; // @[Interlink.scala 150:27]
  assign _T = io_bus_adr_i == 12'h0; // @[Interlink.scala 83:63]
  assign tmr_cfg_sel = io_bus_cs_i & _T; // @[Interlink.scala 83:48]
  assign _T_2 = io_bus_adr_i == 12'h4; // @[Interlink.scala 84:63]
  assign tmr_val_sel = io_bus_cs_i & _T_2; // @[Interlink.scala 84:48]
  assign _T_4 = io_bus_adr_i == 12'h8; // @[Interlink.scala 85:63]
  assign tmr_dat_sel = io_bus_cs_i & _T_4; // @[Interlink.scala 85:48]
  assign _T_6 = io_bus_adr_i == 12'hc; // @[Interlink.scala 86:64]
  assign tmr_duty_sel = io_bus_cs_i & _T_6; // @[Interlink.scala 86:49]
  assign _T_14 = tmr_cfg_sel | tmr_val_sel; // @[Interlink.scala 95:29]
  assign _T_15 = _T_14 | tmr_dat_sel; // @[Interlink.scala 95:44]
  assign tmr_sel = _T_15 | tmr_duty_sel; // @[Interlink.scala 95:59]
  assign _T_16 = tmr_duty_sel ? io_tmr_duty_do : io_tmr_dat_do; // @[Interlink.scala 97:25]
  assign _T_17 = tmr_val_sel ? io_tmr_val_do : _T_16; // @[Interlink.scala 96:50]
  assign tmr_do = tmr_cfg_sel ? io_tmr_cfg_do : _T_17; // @[Interlink.scala 96:19]
  assign _T_18 = io_bus_adr_i == 12'h100; // @[Interlink.scala 101:65]
  assign qei_count_sel = io_bus_cs_i & _T_18; // @[Interlink.scala 101:50]
  assign _T_21 = io_bus_adr_i == 12'h108; // @[Interlink.scala 105:63]
  assign qei_cfg_sel = io_bus_cs_i & _T_21; // @[Interlink.scala 105:48]
  assign _T_24 = io_bus_adr_i == 12'h104; // @[Interlink.scala 109:65]
  assign qei_speed_sel = io_bus_cs_i & _T_24; // @[Interlink.scala 109:50]
  assign _T_27 = qei_count_sel | qei_cfg_sel; // @[Interlink.scala 113:31]
  assign qei_sel = _T_27 | qei_speed_sel; // @[Interlink.scala 113:46]
  assign _T_28 = qei_cfg_sel ? io_qei_cfg_do : io_qei_count_do; // @[Interlink.scala 114:52]
  assign _T_61 = io_qei_speed_do; // @[Interlink.scala 166:41]
  assign qei_speed_do = {{16'd0}, _T_61}; // @[Interlink.scala 108:26 Interlink.scala 166:16]
  assign qei_do = qei_speed_sel ? qei_speed_do : _T_28; // @[Interlink.scala 114:19]
  assign _T_29 = io_bus_adr_i == 12'h200; // @[Interlink.scala 119:62]
  assign pid_kp_sel = io_bus_cs_i & _T_29; // @[Interlink.scala 119:47]
  assign _T_32 = io_bus_adr_i == 12'h204; // @[Interlink.scala 123:62]
  assign pid_ki_sel = io_bus_cs_i & _T_32; // @[Interlink.scala 123:47]
  assign _T_35 = io_bus_adr_i == 12'h208; // @[Interlink.scala 127:62]
  assign pid_kd_sel = io_bus_cs_i & _T_35; // @[Interlink.scala 127:47]
  assign _T_38 = io_bus_adr_i == 12'h20c; // @[Interlink.scala 131:63]
  assign pid_ref_sel = io_bus_cs_i & _T_38; // @[Interlink.scala 131:48]
  assign _T_41 = io_bus_adr_i == 12'h210; // @[Interlink.scala 135:62]
  assign pid_fb_sel = io_bus_cs_i & _T_41; // @[Interlink.scala 135:47]
  assign _T_44 = io_bus_adr_i == 12'h214; // @[Interlink.scala 139:63]
  assign pid_cfg_sel = io_bus_cs_i & _T_44; // @[Interlink.scala 139:48]
  assign _T_47 = pid_kp_sel | pid_ki_sel; // @[Interlink.scala 142:28]
  assign _T_48 = _T_47 | pid_kd_sel; // @[Interlink.scala 142:42]
  assign _T_49 = _T_48 | pid_ref_sel; // @[Interlink.scala 142:56]
  assign _T_50 = _T_49 | pid_fb_sel; // @[Interlink.scala 142:71]
  assign pid_sel = _T_50 | pid_cfg_sel; // @[Interlink.scala 142:85]
  assign _T_51 = pid_fb_sel ? $signed(io_pid_fb_do) : $signed(io_pid_cfg_do); // @[Interlink.scala 146:46]
  assign _T_52 = pid_ref_sel ? $signed(io_pid_ref_do) : $signed(_T_51); // @[Interlink.scala 145:46]
  assign _T_53 = pid_kd_sel ? $signed(io_pid_kd_do) : $signed(_T_52); // @[Interlink.scala 144:46]
  assign _T_54 = pid_ki_sel ? $signed(io_pid_ki_do) : $signed(_T_53); // @[Interlink.scala 143:46]
  assign _T_55 = pid_kp_sel ? $signed(io_pid_kp_do) : $signed(_T_54); // @[Interlink.scala 149:87]
  assign _T_56 = pid_sel ? _T_55 : 16'h0; // @[Interlink.scala 149:64]
  assign _T_57 = qei_sel ? qei_do : {{16'd0}, _T_56}; // @[Interlink.scala 149:43]
  assign _T_59 = tmr_sel | qei_sel; // @[Interlink.scala 150:27]
  assign io_bus_ack_o = _T_59 | pid_sel; // @[Interlink.scala 150:16]
  assign io_bus_dat_o = tmr_sel ? tmr_do : _T_57; // @[Interlink.scala 149:16]
  assign io_tmr_val_we = tmr_val_sel & io_bus_we_i; // @[Interlink.scala 153:17]
  assign io_tmr_dat_we = tmr_dat_sel & io_bus_we_i; // @[Interlink.scala 155:17]
  assign io_tmr_duty_we = tmr_duty_sel & io_bus_we_i; // @[Interlink.scala 157:18]
  assign io_tmr_cfg_we = tmr_cfg_sel & io_bus_we_i; // @[Interlink.scala 159:17]
  assign io_qei_count_we = qei_count_sel & io_bus_we_i; // @[Interlink.scala 162:19]
  assign io_qei_cfg_we = qei_cfg_sel & io_bus_we_i; // @[Interlink.scala 164:17]
  assign io_pid_kp_we = pid_kp_sel & io_bus_we_i; // @[Interlink.scala 168:16]
  assign io_pid_ki_we = pid_ki_sel & io_bus_we_i; // @[Interlink.scala 170:16]
  assign io_pid_kd_we = pid_kd_sel & io_bus_we_i; // @[Interlink.scala 172:16]
  assign io_pid_ref_we = pid_ref_sel & io_bus_we_i; // @[Interlink.scala 174:17]
  assign io_pid_fb_we = pid_fb_sel & io_bus_we_i; // @[Interlink.scala 176:16]
  assign io_pid_cfg_we = pid_cfg_sel & io_bus_we_i; // @[Interlink.scala 178:17]
endmodule
