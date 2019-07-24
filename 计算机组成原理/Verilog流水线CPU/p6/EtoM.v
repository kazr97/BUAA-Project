`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:27:37 12/08/2017 
// Design Name: 
// Module Name:    EtoM 
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
module EtoM(
	input [31:0] IR_E,pc4_E,AO,MFRTEOUT,
	output reg [31:0] IR_M,pc4_M,AO_M,D2_M,
	output reg bd_M,over_M,WAPC_M,eret_M,
	input clr,clk,clr_M,bd_E,over,WAPC_E,eret_E
    );
	initial begin
		IR_M=0;
		pc4_M=0;
		AO_M=0;
		D2_M=0;
		bd_M=0;
		over_M=0;
		WAPC_M=0;
		eret_M=0;
	end
	
	always @(posedge clk)begin
		if(clr|clr_M)begin
			IR_M<=0;
			pc4_M<=0;
			AO_M<=0;
			D2_M<=0;
			bd_M<=0;
			over_M<=0;
			WAPC_M<=0;
			eret_M<=0;
		end
		
		else begin
			IR_M<=IR_E;
			pc4_M<=pc4_E;
			AO_M<=AO;
			D2_M<=MFRTEOUT;
			bd_M<=bd_E;
			over_M<=over;
			WAPC_M<=WAPC_E;
			eret_M<=eret_E;
		end
	end
	


endmodule
