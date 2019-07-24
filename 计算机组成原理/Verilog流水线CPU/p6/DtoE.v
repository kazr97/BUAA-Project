`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:47:25 12/07/2017 
// Design Name: 
// Module Name:    DtoE 
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
module DtoE(
	input [31:0] IR_D,pc4_D,D1,D2,EXTOUT,
	output reg [31:0] IR_E,pc4_E,D1_E,D2_E,EXT_E,
	output reg bd_E,WAPC_E,eret_E,
	input clk,clr,clr_E,bd_D,WAPC_D,eret
    );
	initial begin
		IR_E=0;
		pc4_E=0;
		D1_E=0;
		D2_E=0;
		EXT_E=0;
		bd_E=0;
		WAPC_E=0;
		eret_E=0;
	end
	
	always@(posedge clk)begin
		if(clr||clr_E)begin
			IR_E<=0;
			D1_E<=0;
			D2_E<=0;
			EXT_E<=0;
			bd_E<=0;
			WAPC_E<=0;
			eret_E<=0;
		end
		
		else begin
			IR_E<=IR_D;
			pc4_E<=pc4_D;
			D1_E<=D1;
			D2_E<=D2;
			EXT_E<=EXTOUT;
			bd_E<=bd_D;
			WAPC_E<=WAPC_D;
			eret_E<=eret;
		end
	end
//E¼¶¼Ä´æÆ÷£¬±£´æÖ¸Áî£¬pc4£¬D1£¬D2£¬EXT

endmodule
