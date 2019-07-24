`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:53:32 12/07/2017 
// Design Name: 
// Module Name:    NPC 
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
module NPC(
	input [31:0] pc4_D,D1,
	input [25:0] i26,
	input [1:0] npcsle,
	input CMPOUT,
	output [31:0] NPCout
    );
	 
	wire [31:0] pc;
	 
	assign pc=($signed(pc4_D)-4);
	 
	assign NPCout= npcsle==3? D1:
						npcsle==2? {{pc[31:28]},{i26},{2'b00}}:
						npcsle==1&&CMPOUT==1? $signed(pc4_D)+$signed({{14{i26[15]}},i26[15:0],2'b00}):pc4_D+4;
	
	
	
	

//未完善，用于计算npc
endmodule
