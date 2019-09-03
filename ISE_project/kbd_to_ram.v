`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:54:37 03/30/2007 
// Design Name: 
// Module Name:    kbd_to_ram 
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
module kbd_to_ram(clk, data, valid, released, din ,addr ,wen);
    input clk;
	 input [7:0] data;
    input valid;
    input released;
    output [10:0] addr;
	 output [7:0] din;
	 output wen;

	reg [10:0] addr=0;
	reg [2:0] state;
	reg [7:0] din;
	reg wen;
	
	always @(posedge clk)
		begin
		din<=data;
		wen<=valid;
		
		if(addr<118) addr<=118;
		else
		if (valid==1) 
			if (released==0)
					begin
					din<=data;
					//addr<=addr+1;
					end
			else
				begin
				din<=8'hFF;
				addr<=addr+1;
				end
				
		end	
		
	/*always @(posedge clk)
		
		case (state)
			0 : begin
					wen<=0;
					if (addr<118) addr<=118;
					else
					if ((valid==1) && (released==0) )
							begin
							addr<=addr+1;
							din<=data;
							state<=1;
							wen<=1;
							end		
				end
				
			1 : begin
					wen<=1;
					state<=2;
				end
			
			2 : begin
					addr<=addr+1;
					din<=8'hFF;
					wen<=1;
					state<=3;
					end
				
			3 : begin
				wen<=1;
				state<=4;
				end
				
			4 : begin
				wen<=0;
				state<=0;
				addr<=addr-1;
				end
				
			default state<=0;
			
		endcase*/
				
			
	
endmodule
