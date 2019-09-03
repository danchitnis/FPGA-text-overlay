`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:40:09 03/30/2007 
// Design Name: 
// Module Name:    ps2_keyboard 
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
module ps2_keyboard(clk, scan_data, scan_data_valid, ps2_clk, ps2_data);
    input clk;
    input ps2_clk;
    input ps2_data;
	 output [7:0] scan_data;
    output scan_data_valid;

	reg [7:0] scan_data;
	reg scan_data_valid;
	reg [2:0] m_state=0;
	reg [3:0] cnt_bit=0;
	reg [9:0] bits=0; 	//bits captured from serial ps2 and shifted
	reg [18:0] timer=0;
	
	wire reset;
	
	always @(posedge clk)
		case(m_state)
			
			0 : 	begin
					if (reset==0)
						if (ps2_clk==0) m_state <= 1;
						else m_state<=0;
					
					else
					m_state <= 2;
					scan_data_valid <= 0;
					end
				
			1 : 	begin 
					bits <= {ps2_data , bits[9:1]};
					m_state <= 2;
					end
			
			2 : if (reset==0)
					
					if (ps2_clk==1) 
						if (cnt_bit<10) 
							begin
							cnt_bit <= cnt_bit + 1;
							m_state <= 0;
							end
						else 
							begin
							cnt_bit <= 0;
							m_state <= 3;
							end
							
					else 
						m_state<=2;
						
				else 	//do reset
					begin 	
					cnt_bit <= 0;
					bits <= 0;
					m_state <= 0;
					end
			
			
			3 : 	begin
					scan_data <= bits[7:0];
					m_state <= 4;
					end
			
			4 : 	begin
					scan_data_valid <= 1;
					m_state <= 0;
					end
			
			default m_state <= 0;
			
		endcase
		
		
	always @(posedge clk)
		if (cnt_bit!= 0)
			timer <= timer+1;
		else timer <= 0;
		
	assign reset = timer[18];
	
	
endmodule
