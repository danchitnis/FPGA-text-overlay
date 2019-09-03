////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2005 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 8.1.03i
//  \   \         Application : sch2verilog
//  /   /         Filename : ps2_kbd_interface.vf
// /___/   /\     Timestamp : 03/30/2007 20:27:19
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: E:\Xilinx\bin\nt\sch2verilog.exe -intstyle ise -family spartan3e -w J:/ISE/keyboard_v2/ps2_kbd_interface.sch ps2_kbd_interface.vf
//Design Name: ps2_kbd_interface
//Device: spartan3e
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module ps2_kbd_interface(clk, 
                         ps2_clk, 
                         ps2_data, 
                         data, 
                         data_valid, 
                         extended, 
                         released);

    input clk;
    input ps2_clk;
    input ps2_data;
   output [7:0] data;
   output data_valid;
   output extended;
   output released;
   
   wire XLXN_8;
   wire XLXN_9;
   wire XLXN_11;
   wire [7:0] XLXN_12;
   
   noise_cancel_neg XLXI_1 (.a_noise(ps2_clk), 
                        .clk(clk), 
                        .a(XLXN_8));
   ps2_keyboard XLXI_2 (.clk(clk), 
                        .ps2_clk(XLXN_8), 
                        .ps2_data(XLXN_9), 
                        .scan_data(XLXN_12[7:0]), 
                        .scan_data_valid(XLXN_11));
   noise_cancel_neg XLXI_3 (.a_noise(ps2_data), 
                        .clk(clk), 
                        .a(XLXN_9));
   scan_code_proc XLXI_5 (.clk(clk), 
                          .scan_data(XLXN_12[7:0]), 
                          .valid_in(XLXN_11), 
                          .data(data[7:0]), 
                          .data_valid(data_valid), 
                          .extended(extended), 
                          .released(released));
endmodule
