`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:37:18 03/26/2007 
// Design Name: 
// Module Name:    noise_cancel 
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
module noise_cancel_neg(clk, a_noise, a);
    input clk;
    input a_noise;
    output a;

	reg a;
	reg [5:0] count;
	
	always @(posedge clk)
		if (a_noise == 0) 
			begin
				count <= count + 1;
				if (count > 50) a <= 0;
			end
			
		else
			begin
				count <= 0;
				a <= 1;
			end
	
endmodule
