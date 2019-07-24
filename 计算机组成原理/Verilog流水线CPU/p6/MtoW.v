`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:17:49 12/10/2017 
// Design Name: 
// Module Name:    MtoW 
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
module MtoW(
	input [31:0] IR_M,pc4_M,AO_M,DR,
	output reg [31:0] IR_W,pc4_W,AO_W,DR_W,
	input clk,clr,clr_W
    );
	initial begin
		IR_W=0;
		pc4_W=0;
		AO_W=0;
		DR_W=0;
	end
	
	always @(posedge clk)begin
		if(clr|clr_W)begin
			IR_W<=0;
			pc4_W<=0;
			AO_W<=0;
			DR_W<=0;
		end
		
		else begin
			IR_W<=IR_M;
			pc4_W<=pc4_M;
			AO_W<=AO_M;
			DR_W<=DR;
		end
	end

endmodule
