`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:53:37 12/07/2017 
// Design Name: 
// Module Name:    E 
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
module E(
	input [31:0] D1_E,D2_E,EXT_E,AO_M,MUX_WDOUT,IR_E,pc4_E,
	output [31:0] AO,MFRTEOUT,
	output busy,start,over,
	input [2:0] FRSE,FRTE,
	input clr,clk,IntReq,eret_E
    );
	 
	 wire [31:0] MUX_ALU_B_OUT,MFRSEOUT,MULTOUT,ALUOUT;
	 
	 wire [3:0] ALUsle,MULTsle;
		
	 wire MUX_ALU_B_sle,M;
	 
	 ALU alu(.ALUA(MFRSEOUT),.ALUB(MUX_ALU_B_OUT),.AO(ALUOUT),.ALUsle(ALUsle),.pc4_E(pc4_E),.IR_E(IR_E),.over(over));
	 
	 MUX_ALU_B mux_alu_b(.A(MFRTEOUT),.B(EXT_E),.MUX_ALU_B_sle(MUX_ALU_B_sle),.MUX_ALU_B_OUT(MUX_ALU_B_OUT));
	 
	 MFRSE mfrse(.D1_E(D1_E),.AO_M(AO_M),.MUX_WDOUT(MUX_WDOUT),.FRSE(FRSE),.MFRSEOUT(MFRSEOUT));
	 
	 MFRTE mfrte(.D2_E(D2_E),.AO_M(AO_M),.MUX_WDOUT(MUX_WDOUT),.FRTE(FRTE),.MFRTEOUT(MFRTEOUT));
	 
	 MULT mult(.IR_E(IR_E),.MFRSEOUT(MFRSEOUT),.MUX_ALU_B_OUT(MUX_ALU_B_OUT),.start(start),.MULTOUT(MULTOUT),.busy(busy),.clr(clr),.clk(clk),.MULTsle(MULTsle),.IntReq(IntReq),.eret(eret_E));
	 
	 control control_e(.IR(IR_E),.op(IR_E[31:26]),.func(IR_E[5:0]),.MUX_ALU_B_sle(MUX_ALU_B_sle),.ALUsle(ALUsle),.start(start),.M(M),.MULTsle(MULTsle),.eret(eret));
	 
	 assign AO= M==1? MULTOUT:ALUOUT;

//E级流水线，承接D1，D2，EXT,进行ALU计算，其中可接收到两个转发器转回来的新的D1和D2
endmodule
