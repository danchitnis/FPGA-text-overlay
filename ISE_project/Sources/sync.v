`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:46:54 03/25/2007 
// Design Name: 
// Module Name:    sync 
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
module sync(clk, horizantal, vertical, pixel_h, pixel_v);
    
	 input clk;
	 input horizantal;
    input vertical;
    output [8:0] pixel_h;
    output [8:0] pixel_v;
	 //output pixel_en;
	 
	 reg [11:0] count_h=0;
	 reg [8:0]  count_v=0;
	 reg [8:0] pixel_h=0;
	 reg [8:0] pixel_v=0;
	 //reg pixel_en=0;

	always @(posedge clk)
		if (horizantal == 1)
			count_h = count_h + 1;
		else
			count_h = 0;
				
		
	always @(posedge horizantal)
		begin
			count_v <= count_v + 1;
			if (vertical == 0) count_v <= 0;
		end
		
	
	always @(posedge clk)
		begin
			pixel_v <= count_v;
			pixel_h <= count_h >> 3;
		end
		
	
	/*always @(posedge clk)
		if ( (count_v>20) & (count_v<305) & (count_h>32) & (count_h<2595) & (horizantal==1) & (vertical==1) ) pixel_en<=1;
			else pixel_en<=0;*/
			
			
endmodule
