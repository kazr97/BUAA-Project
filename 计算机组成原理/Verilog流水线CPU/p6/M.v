`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:35:04 12/08/2017 
// Design Name: 
// Module Name:    M 
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
module M(
	input [31:0] AO_M,D2_M,MUX_WDOUT,IR_M,pc4_M,PrRD,
	output [31:0] DR,MFRTMOUT,EPC,
	input [5:0] HWInt,
	input clk,clr,bd_M,over_M,WAPC_M,eret_M,
	input [2:0] FRTM,
	output [1:0] MemWrite,
	output IntReq
    );
	
	wire [31:0] Dr,DOUT;
	
	wire cp,EXLClr,WA,We;
	
	wire [4:0] ExcCode;
	
	MFRTM mfrtm(.D2_M(D2_M),.AO_M(AO_M),.MUX_WDOUT(MUX_WDOUT),.FRTM(FRTM),.MFRTMOUT(MFRTMOUT));
	
	DM dm(.AO_M(AO_M),.MFRTMOUT(MFRTMOUT),.DR(Dr),.clr(clr),.clk(clk),.MemWrite(MemWrite),.pc4_M(pc4_M),.IntReq(IntReq));
	
	control control_m(.op(IR_M[31:26]),.func(IR_M[5:0]),.MemWrite(MemWrite),.cp(cp),.WA(WA),.IR(IR_M));
	
	CP0 cp0(.A(IR_M[15:11]),.Din(MFRTMOUT),.PC(pc4_M),.EXCCode(ExcCode),.HWInt(HWInt),.We(We),.EXLClr(EXLClr),.clk(clk),.clr(clr),.EPC(EPC),.DOUT(DOUT),.IntReq(IntReq),.bd(bd_M));

	p p_f(.WA(WA),.pc(pc4_M-4),.ExcCode(ExcCode),.over(over_M),.AO_M(AO_M),.IR(IR_M),.WAPC(WAPC_M));
	
	assign DR= cp==1? DOUT:
				  (AO_M>=32'h00000000 && AO_M<=32'h00002fff)? Dr:
				  ((AO_M>=32'h00007f00 && AO_M<=32'h00007f0b)||(AO_M>=32'h00007f10 && AO_M<=32'h00007f1b))? PrRD:0;
				  
	assign EXLClr=eret_M;
	assign We= (IR_M[31:26]==6'b010000&&IR_M[25:21]==5'b00100) ? 1:0;
endmodule
