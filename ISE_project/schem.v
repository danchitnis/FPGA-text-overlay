////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2005 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 8.1.03i
//  \   \         Application : sch2verilog
//  /   /         Filename : schem.vf
// /___/   /\     Timestamp : 03/30/2007 20:59:49
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: E:\Xilinx\bin\nt\sch2verilog.exe -intstyle ise -family spartan3e -w J:/ISE/TV_keyboard/Sources/schem.sch schem.vf
//Design Name: schem
//Device: spartan3e
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module schem(clk, 
             horizantal, 
             ps2_clk, 
             ps2_data, 
             vertical, 
             com);

    input clk;
    input horizantal;
    input ps2_clk;
    input ps2_data;
    input vertical;
   output com;
   
   wire XLXN_41;
   wire XLXN_82;
   wire XLXN_83;
   wire XLXN_84;
   wire XLXN_97;
   wire [8:0] XLXN_155;
   wire [8:0] XLXN_156;
   wire [5:0] XLXN_185;
   wire [5:0] XLXN_186;
   wire [2:0] XLXN_187;
   wire [2:0] XLXN_188;
   wire [7:0] XLXN_189;
   wire [10:0] XLXN_190;
   wire XLXN_196;
   wire XLXN_201;
   wire [7:0] XLXN_205;
   wire [10:0] XLXN_206;
   wire XLXN_207;
   
   command XLXI_3 (.clk(clk), 
                   .dot(XLXN_97), 
                   .pixel_en(XLXN_196), 
                   .com(com));
   inversion XLXI_4 (.a(horizantal), 
                     .b(vertical), 
                     .clk(clk), 
                     .a_inv(XLXN_41), 
                     .b_inv(XLXN_84));
   noise_cancel XLXI_6 (.a_noise(XLXN_41), 
                        .clk(clk), 
                        .a(XLXN_83));
   noise_cancel XLXI_7 (.a_noise(XLXN_84), 
                        .clk(clk), 
                        .a(XLXN_82));
   sync XLXI_8 (.clk(clk), 
                .horizantal(XLXN_83), 
                .vertical(XLXN_82), 
                .pixel_en(XLXN_196), 
                .pixel_h(XLXN_155[8:0]), 
                .pixel_v(XLXN_156[8:0]));
   divider XLXI_9 (.clk(clk), 
                   .pixel_h(XLXN_155[8:0]), 
                   .pixel_v(XLXN_156[8:0]), 
                   .char_h(XLXN_188[2:0]), 
                   .char_v(XLXN_187[2:0]), 
                   .T_h(XLXN_186[5:0]), 
                   .T_v(XLXN_185[5:0]));
   tile_ram XLXI_11 (.addra(XLXN_206[10:0]), 
                     .addrb(XLXN_190[10:0]), 
                     .clka(clk), 
                     .clkb(clk), 
                     .dina(XLXN_205[7:0]), 
                     .wea(XLXN_207), 
                     .doutb(XLXN_189[7:0]));
   tile_convertor XLXI_12 (.clk(clk), 
                           .T_h(XLXN_186[5:0]), 
                           .T_v(XLXN_185[5:0]), 
                           .addr(XLXN_190[10:0]));
   char_map XLXI_13 (.char_h(XLXN_188[2:0]), 
                     .char_number(XLXN_189[7:0]), 
                     .char_v(XLXN_187[2:0]), 
                     .clk(clk), 
                     .dot(XLXN_97));
   ps2_kbd_interface XLXI_14 (.clk(clk), 
                              .ps2_clk(ps2_clk), 
                              .ps2_data(ps2_data), 
                              .data(XLXN_205[7:0]), 
                              .data_valid(XLXN_207), 
                              .extended(), 
                              .released(XLXN_201));
   kbd_to_ram XLXI_15 (.clk(clk), 
                       .released(XLXN_201), 
                       .valid(XLXN_207), 
                       .addr(XLXN_206[10:0]));
endmodule
