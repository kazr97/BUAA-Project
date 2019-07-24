`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:05:53 12/11/2017 
// Design Name: 
// Module Name:    datapath 
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
module datapath(
	input [31:0] PrRD,
	input clk,clr,
	input [5:0] HWInt,
	output [31:0] MFRTMOUT,AO_M,
	output [1:0] MemWrite
    );
	
	wire [31:0] npc,IFUOUT;
	
	wire bd,bd_D,bd_E,bd_M;
///////////////////////////////////////////////F级使用信号

	wire [31:0]	IR_D,pc4,pc4_D,NPCout,D1,D2,EXTOUT,MUX_WDOUT,IR_Enew;
	
	wire [4:0] MUX_A3OUT;
	
	wire CMPOUT,RegWrite,Branch,ifj,D_en,M_D;
	
////////////////////////////////////////////////D级使用信号	
	wire[31:0] IR_E,pc4_E,D1_E,D2_E,EXT_E,AO,MFRTEOUT;
	
	wire busy,start;
	
//////////////////////////////////////////////E级使用信号
	
	wire [31:0] IR_M,pc4_M,D2_M,DR;
	
///////////////////////////////////////////////M级使用信号
	
	wire [31:0] IR_W,pc4_W,AO_W,DR_W;
	
/////////////////////////////////////////////W级使用信号
	
	wire [2:0] FRSD,FRTD,FRSE,FRTE,FRTM;
	
	wire Stall,clr_E,clr_D,clr_M,clr_W;
////////////////////////////////////////////随机新增信号
	wire IntReq,eret,eret_E,eret_M,eret_MM,over,over_M,WAPC,WAPC_D,WAPC_E,WAPC_M;

	wire [31:0] EPC;
///////	//////////////////////////////////////////异常中断使用信号	
	
	
	F f(.npc(npc),.IFUOUT(IFUOUT),.pc4(pc4),.clr(clr),.clk(clk),.WAPC(WAPC));
	
	FtoD ftod(.IFUOUT(IFUOUT),.pc4(pc4),.pc4_D(pc4_D),.IR_D(IR_D),.clr(clr),.clk(clk),.D_en(D_en),.clr_D(clr_D),.bd(bd),.bd_D(bd_D),.WAPC(WAPC),.WAPC_D(WAPC_D));
	
	D d(.IR_D(IR_D),.pc4_D(pc4_D),.AO_M(AO_M),.MUX_WDOUT(MUX_WDOUT),.NPCout(NPCout),.MFRSDOUT(D1),.MFRTDOUT(D2),.EXTOUT(EXTOUT),.clr(clr),.clk(clk),.CMPOUT(CMPOUT),.RegWrite(RegWrite),.A1(IR_D[25:21]),.A2(IR_D[20:16]),.A3(MUX_A3OUT),.Branch(Branch),.ifj(ifj),.pc4_E(pc4_E),.FRSD(FRSD),.FRTD(FRTD),.pc4_W(pc4_W),.M(M_D),.eret(eret));
	
	DtoE dtoe(.IR_D(IR_Enew),.pc4_D(pc4_D),.D1(D1),.D2(D2),.EXTOUT(EXTOUT),.IR_E(IR_E),.pc4_E(pc4_E),.D1_E(D1_E),.D2_E(D2_E),.EXT_E(EXT_E),.clr(clr),.clk(clk),.clr_E(clr_E),.bd_E(bd_E),.bd_D(bd_D),.WAPC_D(WAPC_D),.WAPC_E(WAPC_E),.eret_E(eret_E),.eret(eret));
	
	E e(.D1_E(D1_E),.D2_E(D2_E),.EXT_E(EXT_E),.AO_M(AO_M),.MUX_WDOUT(MUX_WDOUT),.IR_E(IR_E),.AO(AO),.MFRTEOUT(MFRTEOUT),.pc4_E(pc4_E),.FRSE(FRSE),.FRTE(FRTE),.clr(clr),.busy(busy),.start(start),.clk(clk),.IntReq(IntReq),.over(over),.eret_E(eret_M));
	
	EtoM etom(.IR_E(IR_E),.pc4_E(pc4_E),.AO(AO),.MFRTEOUT(MFRTEOUT),.AO_M(AO_M),.IR_M(IR_M),.pc4_M(pc4_M),.D2_M(D2_M),.clr(clr),.clk(clk),.clr_M(clr_M),.bd_E(bd_E),.bd_M(bd_M),.over_M(over_M),.over(over),.WAPC_E(WAPC_E),.WAPC_M(WAPC_M),.eret_E(eret_E),.eret_M(eret_M));
	
	M m(.AO_M(AO_M),.D2_M(D2_M),.MUX_WDOUT(MUX_WDOUT),.IR_M(IR_M),.DR(DR),.clr(clr),.clk(clk),.FRTM(FRTM),.pc4_M(pc4_M),.MFRTMOUT(MFRTMOUT),.PrRD(PrRD),.HWInt(HWInt),.IntReq(IntReq),.bd_M(bd_M),.EPC(EPC),.over_M(over_M),.MemWrite(MemWrite),.WAPC_M(WAPC_M),.eret_M(eret_M));
	
	MtoW mtow(.IR_M(IR_M),.pc4_M(pc4_M),.AO_M(AO_M),.DR(DR),.IR_W(IR_W),.pc4_W(pc4_W),.AO_W(AO_W),.DR_W(DR_W),.clr(clr),.clk(clk),.clr_W(clr_W));
	
	W w(.IR_W(IR_W),.DR_W(DR_W),.AO_W(AO_W),.pc4_W(pc4_W),.MUX_A3OUT(MUX_A3OUT),.MUX_WDOUT(MUX_WDOUT),.RegWrite(RegWrite));
	
	Hazard hazard(.IR_D(IR_D),.IR_E(IR_E),.IR_M(IR_M),.IR_W(IR_W),.FRSD(FRSD),.FRTD(FRTD),.FRSE(FRSE),.FRTE(FRTE),.FRTM(FRTM),.Stall(Stall));
	
	assign npc= eret_M==1? EPC:
					IntReq==1? 32'h00004180:
					(Stall==1||M_D&&(busy|start))? ($signed(pc4)-4):
					(Branch|ifj)==1? NPCout:pc4;
					
	assign clr_E=Stall||(M_D&&(busy|start))||IntReq||eret_M;
	assign clr_D=IntReq|eret|eret_M;
	assign clr_M=IntReq|eret_M;
	assign clr_W=IntReq|eret_M;
	assign bd=ifj|Branch;
	
	
	assign D_en=!(Stall||M_D&&(busy|start));
	assign IR_Enew=IR_D;/////bgezal

	
endmodule
