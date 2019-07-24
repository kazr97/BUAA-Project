`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:46:04 12/07/2017 
// Design Name: 
// Module Name:    PC 
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
module PC(
	input [31:0] npc,
	input clr,clk,
	output reg [31:0] pc
    );
	initial begin
		pc=32'h3000;
	end
	
	always@(posedge clk)begin
		if(clr)begin
			pc<=32'h3000;
		end
		
		else begin
			pc<=npc;
		end
	end
	//与单周期类似，输出pc，时钟上升沿来临时更新pc

endmodule
