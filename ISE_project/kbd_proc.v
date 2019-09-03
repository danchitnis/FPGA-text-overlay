`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:33:40 04/03/2007 
// Design Name: 
// Module Name:    kbd_proc 
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
module kbd_proc(clk, data, valid, extended, released, addr_ram, din, wea);
    input clk;
    input [7:0] data;
    input extended;
	 input valid;
    input released;
    output [10:0] addr_ram;
    output [7:0] din;
    output wea;

	reg [10:0] addr =0;
	reg [10:0] addr_ram=0;
	reg [7:0] din;
	reg wea;
	reg [2:0] m1_state=0;
	reg [2:0] m2_state=0;
	
	
	
	always @(posedge clk)
		if (  (released==0) )
			if ( (extended==1) && (valid==1) )
				case (data)
					8'h72 : begin wea<=0; addr<=addr+39;  	end //up
					8'h75 : begin wea<=0; addr<=addr-39; 	end //down
					8'h6B : begin wea<=0; addr<=addr-1;  	end //left
					8'h74 : begin wea<=0; addr<=addr+1;  	end //right				
					8'h71 : begin wea<=1; din<=0; 			end //del
				endcase
			
			else
				case (data)
					8'h66 : if (valid==1) begin wea<=1; addr<=addr-1; din<=8'h00; end //backspace
					
					8'h03 : case (m2_state) //F5 clear
								0 : if (valid==1) m2_state<=1;
								1 : begin addr<=0; din<=0; wea<=1; m2_state<=2; end
								2 : if (addr<1482) addr<=addr+1;
										else begin
											wea<=0 ;
											m2_state<=0;
											addr<=1;
											end
								endcase
					
					
					default //normal char
						case (m1_state)
							0 : if (valid==1) begin wea<=1; din<=data; m1_state<=1; end 
							1 : begin wea<=0; addr<=addr+1; m1_state<=0; end
						endcase
						
				endcase
			
	
			
	always @(posedge clk)	
		addr_ram<=addr+117;
	
		
		
endmodule
