`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:03:57 03/25/2007 
// Design Name: 
// Module Name:    command 
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
module command(clk, com, pixel_en, dot);
    input clk;
    output com;
    input pixel_en;
	 input dot;

	reg com;
	
	//note inversion for output!!!!!!!
	always @(posedge clk)
		if ( (dot==1) & (pixel_en==1) ) com<=0;
		else com<=1;

endmodule
