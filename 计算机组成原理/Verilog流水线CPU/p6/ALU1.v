`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:59:57 12/07/2017 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
	input [31:0] ALUA,ALUB,pc4_E,IR_E,
	input [3:0] ALUsle,
	output [31:0] AO,
	output over
    );
	wire [32:0] temp;
	assign AO = ALUsle==15? ALUA<ALUB? 1:0:///sltu
					ALUsle==14? $signed(ALUA)<$signed(ALUB)? 1:0:////slt
					ALUsle==13? ~(ALUA|ALUB)://///nor
					ALUsle==12? ALUA^ALUB:///////xor
					ALUsle==11? ALUA&ALUB://////and
					ALUsle==10? $signed($signed(ALUB)>>>ALUA[4:0]):///srav
					ALUsle==9? ALUB>>ALUA[4:0]://///srlv
					ALUsle==8? ALUB<<ALUA[4:0]://///sllv
					ALUsle==7? $signed($signed(ALUB)>>>IR_E[10:6])://////sra
					ALUsle==6? ALUB>>IR_E[10:6]:///////srl
					ALUsle==5? ALUB<<IR_E[10:6]:///////sll
					ALUsle==4? $signed(pc4_E)+4:///pc+8
					ALUsle==3? {ALUB[15:0],{16{1'b0}}}:////lui
					ALUsle==2? ALUA|ALUB:///or
					ALUsle==1?$signed(ALUA)-$signed(ALUB)://// -
					$signed(ALUA)+$signed(ALUB);///// +
					
	assign temp= ALUsle==1? $signed({ALUA[31],ALUA}) - $signed({ALUB[31],ALUB}):
					 ALUsle==0? $signed({ALUA[31],ALUA}) + $signed({ALUB[31],ALUB}):0;
	assign over= temp[32]==temp[31]? 0:1;
					
	
	//ALU,具体功能同单周期一样
endmodule
