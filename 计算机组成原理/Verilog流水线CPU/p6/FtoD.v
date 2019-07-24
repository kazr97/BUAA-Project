`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:20:57 12/07/2017 
// Design Name: 
// Module Name:    FtoD 
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
module FtoD(
	input [31:0] IFUOUT,pc4,
	output reg [31:0] IR_D,pc4_D,
	output reg bd_D,WAPC_D,
	input clk,clr,D_en,clr_D,bd,WAPC
    );
	initial begin
		bd_D=0;
		IR_D=0;
		pc4_D=0;
		WAPC_D=0;
	end
	
	always @(posedge clk)begin
		if(clr|clr_D)begin
			IR_D<=0;
			pc4_D<=0;
			bd_D<=0;
			WAPC_D<=0;
		end
		
		else if(D_en)begin
			IR_D<=IFUOUT;
			pc4_D<=pc4;
			bd_D<=bd;
			WAPC_D<=WAPC;
		end
	end
	//D级寄存器，存入指令与PC4		
	 


endmodule
