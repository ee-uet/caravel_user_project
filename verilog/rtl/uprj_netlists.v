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
// SPDX-FileContributor: Modified by Tayyeb Mahmood <tayyeb@uet.edu.pk>

// Include caravel global defines for the number of the user project IO pads 
`include "defines.v"
`define USE_POWER_PINS

`ifdef GL
    // Assume default net type to be wire because GL netlists don't have the wire definitions
    `default_nettype wire
    `include "gl/user_project_wrapper.v"
    `include "gl/user_proj_example.v"
`else
    `include "ACC8.v"
    `include "CICBlock.v"
    `include "Interlink_Module.v"
    `include "PID_Controller.v"
    `include "vedic_16x16.v"
    `include "vedic_8x8.v"
    `include "CICBlock_Anon.v"
    `include "CICControl.v"
    `include "MotorControl.v"
    `include "PWM.v"
    `include "sin3.v"
    `include "vedic_2x2.v"
    `include "wb_local.v"
    `include "cic_block.v"
    `include "cic_con.v"
    `include "motor_top.v"
    `include "Quad_Encoder.v"
    `include "vedic_4x4.v"
    `include "user_project_wrapper.v"
`endif
