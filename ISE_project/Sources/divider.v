`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:36:19 03/27/2007 
// Design Name: 
// Module Name:    divider 
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
module divider(clk, pixel_h, pixel_v, T_h, T_v, char_h, char_v, pixel_en);
    
	 input clk;
	 
	 input [8:0] pixel_h;
    input [8:0] pixel_v;
    output [5:0] T_h;
    output [5:0] T_v;
    output [2:0] char_h;
    output [2:0] char_v;	 
	 output pixel_en;

	reg [5:0] T_h,T_v;
	reg [2:0] char_h,char_v;
	reg pixel_en;
	
	always @(posedge clk)
		begin
			T_h <= pixel_h / 8 ; // x/8
			T_v <= pixel_v / 8 ; // y/8
			
			char_h <= pixel_h % 8; // x mod 8
			char_v <= pixel_v % 8; // y mod 8
			
			if ( (T_h>0) & (T_h<40) & (T_v>2) & (T_v<38) )
				pixel_en <= 1;
			else
				pixel_en <= 0;
		
		end
			
	
endmodule
