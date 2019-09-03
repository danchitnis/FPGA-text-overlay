`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:48:12 04/03/2007 
// Design Name: 
// Module Name:    cursor 
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
module cursor(clk, addr_cursor, addr_display, char_in, char_n_cursor);
    input clk;
    input [10:0] addr_cursor;
    input [10:0] addr_display;
    input [7:0]  char_in;
    output [7:0] char_n_cursor;

	reg [7:0] char_n_cursor;
	
	always @(posedge clk)
		if (addr_display==addr_cursor)
			char_n_cursor<=8'hFF;
		else
			char_n_cursor<=char_in;

endmodule
