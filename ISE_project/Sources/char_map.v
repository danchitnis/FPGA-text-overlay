`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:36:38 03/27/2007 
// Design Name: 
// Module Name:    char_ROM 
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
module char_map(clk, char_h, char_v, char, dot);
    input clk;
    input [2:0] char_h;
    input [2:0] char_v;
	 input [63:0] char;
    output dot;

	reg dot;
	reg [5:0] char_bit;
	
	always @(posedge clk)
		begin
			char_bit <= 63 - ( (char_v * 8) + char_h );
			dot <= char[char_bit];
		end

endmodule
