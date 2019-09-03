`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:36:35 03/25/2007 
// Design Name: 
// Module Name:    inversion 
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
module inversion(clk, a, b, a_inv, b_inv);
    
	 input clk;
	 input a;
    input b;
    output a_inv;
    output b_inv;
    
	reg a_inv, b_inv;
	
	always @(posedge clk)
		begin
			a_inv = !a;
			b_inv = !b;
		end
	

endmodule
