`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:03:02 03/27/2007 
// Design Name: 
// Module Name:    tile_convertor 
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
module tile_convertor(clk, T_h, T_v, addr);
    input clk;
    input [5:0] T_h;
    input [5:0] T_v;
    output [10:0] addr;

	reg [10:0] addr;
	
	always @(posedge clk)
		addr <= T_v * 39 + T_h;

endmodule
