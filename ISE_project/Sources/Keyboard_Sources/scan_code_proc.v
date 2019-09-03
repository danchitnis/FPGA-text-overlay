`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:05:36 03/30/2007 
// Design Name: 
// Module Name:    scan_code_proc 
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
module scan_code_proc(clk, scan_data, valid_in, data_valid, data, released, extended);
    input clk;
    input [7:0] scan_data;
    input valid_in;
	 output [7:0] data;
    output data_valid;
	 output released;
    output extended;
   

	reg [3:0] state=0;
	reg [7:0] data=0;
	
	reg released=0;
	reg extended=0;
	reg data_valid=0;
	
	always @(posedge clk)
		case (state)
			
			0 : if (valid_in==1)
					state<=1;
					
					
			1 : if (data==8'hE0) 
					begin 
					extended	<= 1;
					state <= 0;
					end
				 else 
					state	<=	2;
			
			2 : 	if (data==8'hF0)
						begin
						released	<=	1;
						state <=	0;
						end
					else
						state <= 3;
						
		3 : begin
				state	<=	4;
				data_valid <= 1;
				end
				
		4 : begin
				extended <= 0;
				released <= 0;
				data_valid <= 0;
				state <= 0;
			end
		
		endcase
		
	
	always @(posedge clk)
		if (valid_in==1)
			data<=scan_data;
			
					
					
					

endmodule
