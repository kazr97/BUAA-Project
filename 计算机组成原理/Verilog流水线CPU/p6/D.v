`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:26:20 12/07/2017 
// Design Name: 
// Module Name:    D 
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
module D(
	input [31:0] IR_D,pc4_D,AO_M,MUX_WDOUT,pc4_E,pc4_W,
	input [4:0] A1,A2,A3,
	output [31:0] NPCout,EXTOUT,MFRSDOUT,MFRTDOUT,
	input [2:0] FRSD,FRTD,
	input clr,clk,RegWrite,
	output CMPOUT,Branch,ifj,M,eret
    );
	 
	wire [2:0] CMPsle; 
	 
	wire [1:0] npcsle;
	
	wire [31:0] D1,D2;
	
	wire EXTsle;
	 
	RF rf(.A1(A1),.A2(A2),.A3(A3),.D1(D1),.D2(D2),.WD(MUX_WDOUT),.clr(clr),.clk(clk),.RegWrite(RegWrite),.pc4_W(pc4_W));
	 
	EXT16_32 ext16_32(.EXTOUT(EXTOUT),.i16(IR_D[15:0]),.EXTsle(EXTsle));
	 
	CMP cmp(.D1(MFRSDOUT),.D2(MFRTDOUT),.CMPOUT(CMPOUT),.CMPsle(CMPsle));
	
	NPC Npc(.pc4_D(pc4_D),.i26(IR_D[25:0]),.npcsle(npcsle),.NPCout(NPCout),.D1(MFRSDOUT),.CMPOUT(CMPOUT));
	
	MFRSD mfrsd(.D1(D1),.AO_M(AO_M),.MUX_WDOUT(MUX_WDOUT),.MFRSDOUT(MFRSDOUT),.FRSD(FRSD),.pc4_E(pc4_E));
	
	MFRTD mfrtd(.D2(D2),.AO_M(AO_M),.MUX_WDOUT(MUX_WDOUT),.MFRTDOUT(MFRTDOUT),.FRTD(FRTD),.pc4_E(pc4_E));
	
	control control_d(.IR(IR_D),.op(IR_D[31:26]),.func(IR_D[5:0]),.IR(IR_D),.EXTsle(EXTsle),.CMPsle(CMPsle),.Branch(Branch),.ifj(ifj),.npcsle(npcsle),.M(M),.eret(eret));
	

//D级流水线，主要功能有接到上一级的指令，之后从寄存器堆里读数，扩展16位立即数，比较寄存器堆两数大小，计算npc，并输出D1，D2，EXTOUT
endmodule
