`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:22:21 12/10/2017 
// Design Name: 
// Module Name:    W 
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
module W(
	input [31:0] IR_W,DR_W,AO_W,pc4_W,
	output [31:0] MUX_WDOUT,
	output [4:0] MUX_A3OUT,
	output RegWrite
    );
	
	wire [31:0] BEOUT;
	
	wire [3:0] kuo;
	
	wire [1:0] MUX_A3_sle,MUX_WDOUT_sle;
	
	assign MUX_A3OUT= MUX_A3_sle==2? 5'b11111:
							MUX_A3_sle==1? IR_W[15:11]:IR_W[20:16];
				  
	assign MUX_WDOUT= MUX_WDOUT_sle==2? $signed(pc4_W)+4:
							MUX_WDOUT_sle==1? BEOUT:AO_W;
	
	BE be(.A(AO_W[1:0]),.DR_W(DR_W),.BEOUT(BEOUT),.kuo(kuo));
				  
	control control_w(.IR(IR_W),.op(IR_W[31:26]),.func(IR_W[5:0]),.MUX_A3_sle(MUX_A3_sle),.MUX_WDOUT_sle(MUX_WDOUT_sle),.RegWrite(RegWrite),.kuo(kuo));

endmodule
