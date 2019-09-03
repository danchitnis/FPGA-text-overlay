`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:45:02 03/29/2007 
// Design Name: 
// Module Name:    keyboard_to_ram 
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
module keyboard_to_ram(clk, rx_data_ready, rx_ascii, addr, ram_en, dina ,led, rx_read);
    input clk;
    input [7:0] rx_ascii;
    input rx_data_ready;
    output [10:0] addr;
	 output ram_en;
	 output rx_read;
	 output [3:0] led;
	 output [7:0] dina;

	reg [10:0] addr=0;
	reg ram_en;
	reg [3:0] led=0;
	reg [2:0] state;
	reg [7:0] dina;
	reg rx_read;
	
	always @(posedge clk)
		case (state)
			0 : begin
					ram_en<=0;
					rx_read<=0;
					if(rx_data_ready==1) begin 
						state<=1;
						dina<=rx_ascii;
						end
				end
				
			1: begin
					//rx_read<=1;
					addr<=addr+1;
					state<=2;	
				end
			
			2 : begin
					ram_en<=1;
					state<=3;
				end
				
			3: begin
					ram_en<=0;
					state<=4;
				end
			
			4 : begin
					if (rx_data_ready==0) state<=0;
					rx_read<=1;
				end
					
			default state<=0;
					
		endcase
				

			always @(posedge clk)
				led<=addr[3:0];
		
endmodule
