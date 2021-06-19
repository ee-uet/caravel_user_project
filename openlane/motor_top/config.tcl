# SPDX-FileCopyrightText:  2021 EE, UET Lahore
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# SPDX-License-Identifier: Apache-2.0
# SPDX-FileContributor: Modified by Tayyeb Mahmood <tayyeb@uet.edu.pk>

set script_dir [file dirname [file normalize [info script]]]

set ::env(DESIGN_NAME) motor_top

set ::env(VERILOG_FILES) "\
	$script_dir/../../caravel/verilog/rtl/defines.v \
	$script_dir/../../verilog/rtl/Interlink_Module.v \
	$script_dir/../../verilog/rtl/PID_Controller.v \
	$script_dir/../../verilog/rtl/PWM.v \
	$script_dir/../../verilog/rtl/Quad_Encoder.v \
	$script_dir/../../verilog/rtl/MotorControl.v \
	$script_dir/../../verilog/rtl/motor_top.v \
	$script_dir/../../verilog/rtl/vedic_16x16.v \
	$script_dir/../../verilog/rtl/vedic_8x8.v \
	$script_dir/../../verilog/rtl/vedic_4x4.v \
	$script_dir/../../verilog/rtl/vedic_2x2.v"

set ::env(CLOCK_PORT) "clock"
set ::env(CLOCK_NET) ""
set ::env(CLOCK_PERIOD) "80"

set ::env(FP_SIZING) absolute
set ::env(DIE_AREA) "0 0 300 600"
set ::env(DESIGN_IS_CORE) 0

set ::env(VDD_NETS) [list {vccd1}]
set ::env(GND_NETS) [list {vssd1}]

set ::env(FP_PIN_ORDER_CFG) $script_dir/pin_order.cfg


set ::env(PL_TARGET_DENSITY) 0.5

# If you're going to use multiple power domains, then keep this disabled.
set ::env(RUN_CVC) 0

set ::env(PL_ROUTABILITY_DRIVEN) 1

set ::env(FP_IO_VEXTEND) 4
set ::env(FP_IO_HEXTEND) 4


set ::env(GLB_RT_MAXLAYER) 4
set ::env(GLB_RT_MAX_DIODE_INS_ITERS) 10

