`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:45:22 01/01/2018 
// Design Name: 
// Module Name:    timer 
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
module timer(
	input [31:0] DAT_I,
	input [3:2] ADD_I,
	input clk,clr,WE_I,
	output [31:0] DAT_O,
	output reg IRQ
    );
	 
	reg [31:0] CTRL,PRESET,COUNT;
	 
	reg [1:0] state;
	 
	assign DAT_O= ADD_I==0? CTRL:
					  ADD_I==1? PRESET:
					  ADD_I==2? COUNT:0;
	
	initial begin
		CTRL=0;
		PRESET=0;
		COUNT=0;
		state=0;
		IRQ=0;
	end
	
	always @(posedge clk)begin
		if(clr)begin
			CTRL<=0;
			PRESET<=0;
			COUNT<=0;
			state<=0;
			IRQ<=0;
		end
		
		else begin
			if(CTRL[3]==1'b0)begin
				IRQ<=0;
			end
			
			if(!WE_I&&CTRL[0]==1'b1)begin
				if(CTRL[2:1]==2'b00)begin////0模式
					case(state)
						0:begin///IDLE
							if(CTRL[0]==1'b1)begin
								state<=1;
							end
						end
						
						1:begin///LOAD
							COUNT<=PRESET;
							state<=2;
						end
						
						2:begin/////CNTING
							if(CTRL[0]==1'b1)begin	
								COUNT<=COUNT-1;
							end
							
							if(COUNT==1)begin
								state<=3;
							end
						end

						3:begin//////INT
							if(CTRL[3]==1'b1)begin
								IRQ<=1;
							end
							else begin
								IRQ<=0;
							end
							CTRL[0]<=0;
							state<=0;
						end
					endcase
				end
				
				else if(CTRL[2:1]==2'b01)begin///1模式
					case(state)
						0:begin///IDLE
							IRQ<=0;
							if(CTRL[0]==1'b1)
								state<=1;
						end
						
						1:begin///LOAD
							COUNT<=PRESET;
							state<=2;
						end
						
						2:begin/////CNTING
							if(CTRL[0]==1'b1)begin	
								COUNT<=COUNT-1;
							end
							
							if(COUNT==1)begin
								state<=3;
							end
						end

						3:begin//////INT
							if(CTRL[3]==1'b1)begin
								IRQ<=1;
							end
							state<=0;
						end
					endcase
				end
			end
			
			else if(WE_I)begin//////如果写使能有效的话
				if(ADD_I==2'b00)begin
					CTRL[3:0]<=DAT_I[3:0];
				end
				
				else if(ADD_I==2'b01)begin
					PRESET<=DAT_I;
				end
			end
		end
	end
	
	 


endmodule
