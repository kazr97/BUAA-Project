`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:44:49 12/07/2017 
// Design Name: 
// Module Name:    F 
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
module F(
	input [31:0] npc,
	output [31:0] IFUOUT,pc4,
	output WAPC,
	input clr,clk
    );
	 
	wire [31:0] pc;
	
	wire WA;
	
	PC Pc(.npc(npc),.pc(pc),.clr(clr),.clk(clk));
	
	IM Im(.pc(pc),.IFUOUT(IFUOUT));
	
	assign WAPC= ((|(pc[1:0]))==1 || !(pc >=32'h3000 && pc<= 32'h4ffc))==1? 1:0;
	
	control control_f(.op(IFUOUT[31:26]),.func(IFUOUT[5:0]),.WA(WA),.IR(IFUOUT));
	
	assign pc4=$signed(pc)+4;
	//F模块，存放PC于IM，输出指令与pc4
endmodule
