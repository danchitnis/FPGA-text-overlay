`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:19:18 03/29/2007 
// Design Name: 
// Module Name:    keyboard_clock 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module keyboard_clock(clk, clk_kbd);
    input clk;
    output clk_kbd;

	reg [23:0] counter;
	
	always @(posedge clk)
		counter<=counter+1;
		
	assign clk_kbd = counter[23];
	
	
endmodule
