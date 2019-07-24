`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:43:31 12/13/2017 
// Design Name: 
// Module Name:    mips 
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
module mips(
	input clk,reset
    );
	
	wire [31:0] PrWD,DEV0_RD,DEV1_RD,PrAddr,DEV_WD,PrRD;
	
	wire [5:0] HWInt;
	
	wire [3:0] PrBE,DEV_BE;
	
	wire [3:2] DEV_Addr;
	
	wire [1:0] PrWe;
	
	wire IRQ0,IRQ1,DEV_We;
	
	datapath Datapath(.clk(clk),.clr(reset),.HWInt(HWInt),.MFRTMOUT(PrWD),.AO_M(PrAddr),.PrRD(PrRD),.MemWrite(PrWe));
	
	Bridge bridge(.PrWD(PrWD),.DEV0_RD(DEV0_RD),.DEV1_RD(DEV1_RD),.PrAddr(PrAddr[31:2]),.DEV_Addr(DEV_Addr[3:2]),.DEV_WD(DEV_WD),.PrRD(PrRD),.HWInt(HWInt),.PrBE(PrBE),.DEV_BE(DEV_BE),.PrWe(PrWe[0]),.IRQ0(IRQ0),.IRQ1(IRQ1),.DEV_We(DEV_We));
	 
	timer timer0(.DAT_I(DEV_WD),.ADD_I(DEV_Addr),.WE_I(DEV_We),.DAT_O(DEV0_RD),.IRQ(IRQ0),.clk(clk),.clr(reset));
	
	timer timer1(.DAT_I(DEV_WD),.ADD_I(DEV_Addr),.WE_I(DEV_We),.DAT_O(DEV1_RD),.IRQ(IRQ1),.clk(clk),.clr(reset));


endmodule
