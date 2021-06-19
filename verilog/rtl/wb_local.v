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

`default_nettype none
/*
 *-------------------------------------------------------------
 *
 * wb_local
 *
 * wb_local sits between caravel master and user macros, it 
 * mainly slow downs the clock, by 1/8, and handles io.
 *
 *-------------------------------------------------------------
 */

module wb_local(
`ifdef USE_POWER_PINS
    inout vccd1,	// User area 1 1.8V supply
    inout vssd1,	// User area 1 digital ground
`endif

    // Wishbone Slave ports (WB MI A)
    input wb_clk_i,
    input wb_rst_i,
    input wbs_stb_i,
    input wbs_cyc_i,
    input wbs_we_i,
    input [3:0] wbs_sel_i,
    input [31:0] wbs_dat_i,
    input [31:0] wbs_adr_i,
    output reg wbs_ack_o,
    output reg [31:0] wbs_dat_o,

    // IOs
    input  [`MPRJ_IO_PADS-1:0] io_in,
    output [`MPRJ_IO_PADS-1:0] io_out,
    output [`MPRJ_IO_PADS-1:0] io_oeb,

    // IRQ
    output reg [2:0] irq,
    
    // Wishbone macro ports
    output reg m_wb_clk_i,
    output reg m_wb_rst_i,
    output reg m_wbs_we_i,
    output reg [31:0] m_wbs_dat_i,
    output reg [11:0] m_wbs_adr_i,
    output reg [11:0] m_wbs_cs_i,
    input [11:0] la_reset,
    output [11:0] m_la_reset,
    input [11:0] m_wbs_ack_o,
    input [31:0] m_wbs_dat_o_0,
    input [31:0] m_wbs_dat_o_1,
    input [31:0] m_wbs_dat_o_2,
    input [31:0] m_wbs_dat_o_3,
    input [31:0] m_wbs_dat_o_4,
    input [31:0] m_wbs_dat_o_5,
    input [31:0] m_wbs_dat_o_6,
    input [31:0] m_wbs_dat_o_7,
    input [31:0] m_wbs_dat_o_8,
    input [31:0] m_wbs_dat_o_9,
    input [31:0] m_wbs_dat_o_10,
    input [31:0] m_wbs_dat_o_11,
    
    input [11:0] m_irqs,
    
    //pinmux
    output	mt_QEI_ChA_0,
    output	mt_QEI_ChB_0,
    input	mt_pwm_h_0,
    input	mt_pwm_l_0,
    
    output	mt_QEI_ChA_1,
    output	mt_QEI_ChB_1,
    input	mt_pwm_h_1,
    input	mt_pwm_l_1,
    
    output	mt_QEI_ChA_2,
    output	mt_QEI_ChB_2,
    input	mt_pwm_h_2,
    input	mt_pwm_l_2,
    
    output	mt_QEI_ChA_3,
    output	mt_QEI_ChB_3,
    input	mt_pwm_h_3,
    input	mt_pwm_l_3,
    
    output	mt_pwm_test,
    output	mt_clo_test,
    input	[7:0] mt_sync_in,
    output	mt_sync_out,
    
    output	[7:0] dsi
);

    reg [2:0] clkdiv;
    reg [8:0] rstdel;
    reg this_adr;
    reg [1:0] ackdel;
    reg cs;
    reg [15:0] cs_dec;
    
    
    always @(posedge wb_clk_i) begin
		rstdel <= {rstdel[7:0], wb_rst_i};
        if(wb_rst_i) begin
            clkdiv <= 0;
            ackdel <= 0;
            cs <= 0;
        end
        else begin
            clkdiv <= clkdiv + 1;
            m_wb_rst_i = |rstdel;
            
            ackdel <= {ackdel[0],|m_wbs_ack_o};
            wbs_dat_o <= ({32{m_wbs_ack_o[0]}} & m_wbs_dat_o_0) | ({32{m_wbs_ack_o[1]}} & m_wbs_dat_o_1) | ({32{m_wbs_ack_o[2]}} & m_wbs_dat_o_2) | ({32{m_wbs_ack_o[3]}} & m_wbs_dat_o_3) | ({32{m_wbs_ack_o[4]}} & m_wbs_dat_o_4) | ({32{m_wbs_ack_o[5]}} & m_wbs_dat_o_5) | ({32{m_wbs_ack_o[6]}} & m_wbs_dat_o_6) | ({32{m_wbs_ack_o[7]}} & m_wbs_dat_o_7) | ({32{m_wbs_ack_o[8]}} & m_wbs_dat_o_8) | ({32{m_wbs_ack_o[9]}} & m_wbs_dat_o_9) | ({32{m_wbs_ack_o[10]}} & m_wbs_dat_o_10) | ({32{m_wbs_ack_o[11]}} & m_wbs_dat_o_11) ;
			if(clkdiv == 3'b01) begin
				cs <= wbs_cyc_i & wbs_stb_i & this_adr & !m_wb_rst_i;
			end
        end
    end
    
    always @(*) begin
        //devide clock by 8
        m_wb_clk_i = clkdiv[2];
        m_wbs_we_i = wbs_we_i;
        m_wbs_adr_i = wbs_adr_i[11:0];
        m_wbs_dat_i = wbs_dat_i;
        this_adr = wbs_adr_i[31:16] == 16'h3000;
        //wbs_ack_o = ~ackdel[1] & ackdel[0];
        wbs_ack_o = (clkdiv == 3'b111) & |m_wbs_ack_o;
        irq = |m_irqs;
        cs_dec = (12'b01 << wbs_adr_i[15:12]) & {12{cs}};    
        m_wbs_cs_i = cs_dec;
    end 
    
    //pinmux
    assign {mt_QEI_ChB_3, mt_QEI_ChA_3, mt_QEI_ChB_2, mt_QEI_ChA_2, mt_QEI_ChB_1, mt_QEI_ChA_1, mt_QEI_ChB_0, mt_QEI_ChA_0, dsi} = io_in[27:12];
    assign io_out[35:28] = {mt_pwm_h_3, mt_pwm_l_3, mt_pwm_h_2, mt_pwm_l_2, mt_pwm_h_1, mt_pwm_l_1, mt_pwm_h_0, mt_pwm_l_0};
    assign io_oeb[35:8] = ~(28'h0FF00003);
    assign io_out[8] = |mt_sync_in;
    assign mt_sync_out = |mt_sync_in;
    assign io_out[9] = clkdiv[2];
    assign mt_pwm_test = io_in[10];
    assign mt_clo_test = io_in[11];
    assign m_la_reset = la_reset | {12{m_wb_rst_i}};
    
endmodule
`default_nettype wire
