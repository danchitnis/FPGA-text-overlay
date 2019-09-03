`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:06:34 03/29/2007 
// Design Name: 
// Module Name:    ram_test 
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
module ram_test(clk, addr, ram_en, din);
    input clk;
    output [10:0] addr;
    output ram_en;
    output [7:0] din;

	reg [7:0] din;
	reg [10:0] addr;
	reg ram_en;
	
	always @(posedge clk)
		begin
			addr<=800;
			din<=8'h61;
			ram_en<=clk;
		end

endmodule
