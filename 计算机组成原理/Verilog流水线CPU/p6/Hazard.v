`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:07:41 12/12/2017 
// Design Name: 
// Module Name:    Hazard 
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
`define op 31:26
`define func 5:0
`define rs 25:21
`define rt 20:16
`define rd 15:11

	module Hazard(
	input [31:0] IR_D,IR_E,IR_M,IR_W,
	output [2:0] FRSD,FRTD,FRSE,FRTE,FRTM,
	output Stall
    );	
	wire addu_D,addu_E,addu_M,addu_W;
	wire subu_D,subu_E,subu_M,subu_W;
	wire ori_D,ori_E,ori_M,ori_W;
	wire lw_D,lw_E,lw_M,lw_W;
	wire sw_D,sw_E,sw_M,sw_W;
	wire beq_D,beq_E,beq_M,beq_W;
	wire lui_D,lui_E,lui_M,lui_W;
	wire j_D,j_E,j_M,j_W;
	wire jal_D,jal_E,jal_M,jal_W;
	wire jr_D,jr_E,jr_M,jr_W;
	wire bne_D,bne_E,bne_M,bne_W;
	wire sh_D,sh_E,sh_M,sh_W;
	wire jalr_D,jalr_E,jalr_M,jalr_W;
	wire bgezal_D,bgezal_E,bgezal_M,bgezal_W;
	wire lb_D,lb_E,lb_M,lb_W;
	wire lbu_D,lbu_E,lbu_M,lbu_W;
	wire lh_D,lh_E,lh_M,lh_W;
	wire lhu_D,lhu_E,lhu_M,lhu_W;
	wire sb_D,sb_E,sb_M,sb_W;
	wire sll_D,sll_E,sll_M,sll_W;
	wire srl_D,srl_E,srl_M,srl_W;
	wire sra_D,sra_E,sra_M,sra_W;
	wire sllv_D,sllv_E,sllv_M,sllv_W;
	wire srlv_D,srlv_E,srlv_M,srlv_W;
	wire srav_D,srav_E,srav_M,srav_W;
	wire and_D,and_E,and_M,and_W;
	wire or_D,or_E,or_M,or_W;
	wire xor_D,xor_E,xor_M,xor_W;
	wire nor_D,nor_E,nor_M,nor_W;
	wire add_D,add_E,add_M,add_W;
	wire sub_D,sub_E,sub_M,sub_W;
	wire addi_D,addi_E,addi_M,addi_W;
	wire addiu_D,addiu_E,addiu_M,addiu_W;
	wire andi_D,andi_E,andi_M,andi_W;
	wire xori_D,xori_E,xori_M,xori_W;
	wire slt_D,slt_E,slt_M,slt_W;
	wire slti_D,slti_E,slti_M,slti_W;
	wire sltiu_D,sltiu_E,sltiu_M,sltiu_W;
	wire sltu_D,sltu_E,sltu_M,sltu_W;
	wire blez_D,blez_E,blez_M,blez_W;
	wire bgtz_D,bgtz_E,bgtz_M,bgtz_W;
	wire bltz_D,bltz_E,bltz_M,bltz_W;
	wire bgez_D,bgez_E,bgez_M,bgez_W;
	wire mult_D,mult_E,mult_M,mult_W;
	wire multu_D,multu_E,multu_M,multu_W;
	wire div_D,div_E,div_M,div_W;
	wire divu_D,divu_E,divu_M,divu_W;
	wire mfhi_D,mfhi_E,mfhi_M,mfhi_W;
	wire mflo_D,mflo_E,mflo_M,mflo_W;
	wire mthi_D,mthi_E,mthi_M,mthi_W;
	wire mtlo_D,mtlo_E,mtlo_M,mtlo_W;
	wire mtc0_D,mtc0_E,mtc0_M,mtc0_W;
	wire mfc0_D,mfc0_E,mfc0_M,mfc0_W;
	wire eret_D,eret_E,eret_M,eret_W;
	
	
	
	wire cal_r_D,cal_r_E,cal_r_M,cal_r_W;
	wire cal_i_D,cal_i_E,cal_i_M,cal_i_W;
	wire ld_D,ld_E,ld_M,ld_W;
	wire st_D,st_E,st_M,st_W;
	wire b_D,b_E,b_M,b_W;
	wire jj_D,jj_E,jj_M,jj_W;
	
	wire Stall_cal_r,Stall_cal_i,Stall_ld,Stall_st,Stall_b,Stall_jr,Stall_jalr,Stall_eret;
	
	
	

//////////////////////////////////////////////////////////////////
assign addu_D=(IR_D[`op]==6'b000000)&&(IR_D[`func]==6'b100001);
assign addu_E=(IR_E[`op]==6'b000000)&&(IR_E[`func]==6'b100001);
assign addu_M=(IR_M[`op]==6'b000000)&&(IR_M[`func]==6'b100001);
assign addu_W=(IR_W[`op]==6'b000000)&&(IR_W[`func]==6'b100001);
/////////////////////////////addu
assign subu_D=(IR_D[`op]==6'b000000)&&(IR_D[`func]==6'b100011);
assign subu_E=(IR_E[`op]==6'b000000)&&(IR_E[`func]==6'b100011);
assign subu_M=(IR_M[`op]==6'b000000)&&(IR_M[`func]==6'b100011);
assign subu_W=(IR_W[`op]==6'b000000)&&(IR_W[`func]==6'b100011);
////////////////////////////subu
assign ori_D=IR_D[`op]==6'b001101;
assign ori_E=IR_E[`op]==6'b001101;
assign ori_M=IR_M[`op]==6'b001101;
assign ori_W=IR_W[`op]==6'b001101;
//////////////////////////ori
assign lw_D=IR_D[`op]==6'b100011;
assign lw_E=IR_E[`op]==6'b100011;
assign lw_M=IR_M[`op]==6'b100011;
assign lw_W=IR_W[`op]==6'b100011;
//////////////////////////lw
assign sw_D=IR_D[`op]==6'b101011;
assign sw_E=IR_E[`op]==6'b101011;
assign sw_M=IR_M[`op]==6'b101011;
assign sw_W=IR_W[`op]==6'b101011;
/////////////////////////sw
assign beq_D=IR_D[`op]==6'b000100;
assign beq_E=IR_E[`op]==6'b000100;
assign beq_M=IR_M[`op]==6'b000100;
assign beq_W=IR_W[`op]==6'b000100;
//////////////////////////beq
assign lui_D=IR_D[`op]==6'b001111;
assign lui_E=IR_E[`op]==6'b001111;
assign lui_M=IR_M[`op]==6'b001111;
assign lui_W=IR_W[`op]==6'b001111;
////////////////////////////lui
assign j_D=IR_D[`op]==6'b000010;
assign j_E=IR_E[`op]==6'b000010;
assign j_M=IR_M[`op]==6'b000010;
assign j_W=IR_W[`op]==6'b000010;
////////////////////////////////j
assign jal_D=IR_D[`op]==6'b000011;
assign jal_E=IR_E[`op]==6'b000011;
assign jal_M=IR_M[`op]==6'b000011;
assign jal_W=IR_W[`op]==6'b000011;
//////////////////////////jal
assign jr_D=(IR_D[`op]==6'b000000)&&(IR_D[`func]==6'b001000);
assign jr_E=(IR_E[`op]==6'b000000)&&(IR_E[`func]==6'b001000);
assign jr_M=(IR_M[`op]==6'b000000)&&(IR_M[`func]==6'b001000);
assign jr_W=(IR_W[`op]==6'b000000)&&(IR_W[`func]==6'b001000);
////////////////////////jr
assign bne_D=IR_D[`op]==6'b000101;
assign bne_E=IR_E[`op]==6'b000101;
assign bne_M=IR_M[`op]==6'b000101;
assign bne_W=IR_W[`op]==6'b000101;
////////////////////////////bne
assign sh_D=IR_D[`op]==6'b101001;
assign sh_E=IR_E[`op]==6'b101001;
assign sh_M=IR_M[`op]==6'b101001;
assign sh_W=IR_W[`op]==6'b101001;
//////////////////////////sh
assign jalr_D=(IR_D[`op]==6'b000000)&&(IR_D[`func]==6'b001001);
assign jalr_E=(IR_E[`op]==6'b000000)&&(IR_E[`func]==6'b001001);
assign jalr_M=(IR_M[`op]==6'b000000)&&(IR_M[`func]==6'b001001);
assign jalr_W=(IR_W[`op]==6'b000000)&&(IR_W[`func]==6'b001001);
///////////////////////////////jalr
assign lb_D=IR_D[`op]==6'b100000;
assign lb_E=IR_E[`op]==6'b100000;
assign lb_M=IR_M[`op]==6'b100000;
assign lb_W=IR_W[`op]==6'b100000;
///////////////////////////////lb
assign lbu_D=IR_D[`op]==6'b100100;
assign lbu_E=IR_E[`op]==6'b100100;
assign lbu_M=IR_M[`op]==6'b100100;
assign lbu_W=IR_W[`op]==6'b100100;
///////////////////////////////lbu
assign lh_D=IR_D[`op]==6'b100001;
assign lh_E=IR_E[`op]==6'b100001;
assign lh_M=IR_M[`op]==6'b100001;
assign lh_W=IR_W[`op]==6'b100001;
//////////////////////////////////lh
assign lhu_D=IR_D[`op]==6'b100101;
assign lhu_E=IR_E[`op]==6'b100101;
assign lhu_M=IR_M[`op]==6'b100101;
assign lhu_W=IR_W[`op]==6'b100101;
//////////////////////////////////lhu
assign sb_D=IR_D[`op]==6'b101000;
assign sb_E=IR_E[`op]==6'b101000;
assign sb_M=IR_M[`op]==6'b101000;
assign sb_W=IR_W[`op]==6'b101000;
//////////////////////////////////sb
assign sll_D=(IR_D[`op]==6'b000000)&&(IR_D[`func]==6'b000000);
assign sll_E=(IR_E[`op]==6'b000000)&&(IR_E[`func]==6'b000000);
assign sll_M=(IR_M[`op]==6'b000000)&&(IR_M[`func]==6'b000000);
assign sll_W=(IR_W[`op]==6'b000000)&&(IR_W[`func]==6'b000000);
//////////////////////////////////sll
assign srl_D=(IR_D[`op]==6'b000000)&&(IR_D[`func]==6'b000010);
assign srl_E=(IR_E[`op]==6'b000000)&&(IR_E[`func]==6'b000010);
assign srl_M=(IR_M[`op]==6'b000000)&&(IR_M[`func]==6'b000010);
assign srl_W=(IR_W[`op]==6'b000000)&&(IR_W[`func]==6'b000010);
//////////////////////////////////srl
assign sra_D=(IR_D[`op]==6'b000000)&&(IR_D[`func]==6'b000011);
assign sra_E=(IR_E[`op]==6'b000000)&&(IR_E[`func]==6'b000011);
assign sra_M=(IR_M[`op]==6'b000000)&&(IR_M[`func]==6'b000011);
assign sra_W=(IR_W[`op]==6'b000000)&&(IR_W[`func]==6'b000011);
//////////////////////////////////sra
assign sllv_D=(IR_D[`op]==6'b000000)&&(IR_D[`func]==6'b000100);
assign sllv_E=(IR_E[`op]==6'b000000)&&(IR_E[`func]==6'b000100);
assign sllv_M=(IR_M[`op]==6'b000000)&&(IR_M[`func]==6'b000100);
assign sllv_W=(IR_W[`op]==6'b000000)&&(IR_W[`func]==6'b000100);
//////////////////////////////////sllv
assign srlv_D=(IR_D[`op]==6'b000000)&&(IR_D[`func]==6'b000110);
assign srlv_E=(IR_E[`op]==6'b000000)&&(IR_E[`func]==6'b000110);
assign srlv_M=(IR_M[`op]==6'b000000)&&(IR_M[`func]==6'b000110);
assign srlv_W=(IR_W[`op]==6'b000000)&&(IR_W[`func]==6'b000110);
//////////////////////////////////srlv
assign srav_D=(IR_D[`op]==6'b000000)&&(IR_D[`func]==6'b000111);
assign srav_E=(IR_E[`op]==6'b000000)&&(IR_E[`func]==6'b000111);
assign srav_M=(IR_M[`op]==6'b000000)&&(IR_M[`func]==6'b000111);
assign srav_W=(IR_W[`op]==6'b000000)&&(IR_W[`func]==6'b000111);
//////////////////////////////////srav
assign and_D=(IR_D[`op]==6'b000000)&&(IR_D[`func]==6'b100100);
assign and_E=(IR_E[`op]==6'b000000)&&(IR_E[`func]==6'b100100);
assign and_M=(IR_M[`op]==6'b000000)&&(IR_M[`func]==6'b100100);
assign and_W=(IR_W[`op]==6'b000000)&&(IR_W[`func]==6'b100100);
//////////////////////////////////and
assign or_D=(IR_D[`op]==6'b000000)&&(IR_D[`func]==6'b100101);
assign or_E=(IR_E[`op]==6'b000000)&&(IR_E[`func]==6'b100101);
assign or_M=(IR_M[`op]==6'b000000)&&(IR_M[`func]==6'b100101);
assign or_W=(IR_W[`op]==6'b000000)&&(IR_W[`func]==6'b100101);
//////////////////////////////////or
assign xor_D=(IR_D[`op]==6'b000000)&&(IR_D[`func]==6'b100110);
assign xor_E=(IR_E[`op]==6'b000000)&&(IR_E[`func]==6'b100110);
assign xor_M=(IR_M[`op]==6'b000000)&&(IR_M[`func]==6'b100110);
assign xor_W=(IR_W[`op]==6'b000000)&&(IR_W[`func]==6'b100110);
//////////////////////////////////xor
assign nor_D=(IR_D[`op]==6'b000000)&&(IR_D[`func]==6'b100111);
assign nor_E=(IR_E[`op]==6'b000000)&&(IR_E[`func]==6'b100111);
assign nor_M=(IR_M[`op]==6'b000000)&&(IR_M[`func]==6'b100111);
assign nor_W=(IR_W[`op]==6'b000000)&&(IR_W[`func]==6'b100111);
//////////////////////////////////nor
assign add_D=(IR_D[`op]==6'b000000)&&(IR_D[`func]==6'b100000);
assign add_E=(IR_E[`op]==6'b000000)&&(IR_E[`func]==6'b100000);
assign add_M=(IR_M[`op]==6'b000000)&&(IR_M[`func]==6'b100000);
assign add_W=(IR_W[`op]==6'b000000)&&(IR_W[`func]==6'b100000);
/////////////////////////////addu
assign sub_D=(IR_D[`op]==6'b000000)&&(IR_D[`func]==6'b100010);
assign sub_E=(IR_E[`op]==6'b000000)&&(IR_E[`func]==6'b100010);
assign sub_M=(IR_M[`op]==6'b000000)&&(IR_M[`func]==6'b100010);
assign sub_W=(IR_W[`op]==6'b000000)&&(IR_W[`func]==6'b100010);
/////////////////////////////sub
assign addi_D=IR_D[`op]==6'b001000;
assign addi_E=IR_E[`op]==6'b001000;
assign addi_M=IR_M[`op]==6'b001000;
assign addi_W=IR_W[`op]==6'b001000;
//////////////////////////////////addi
assign addiu_D=IR_D[`op]==6'b001001;
assign addiu_E=IR_E[`op]==6'b001001;
assign addiu_M=IR_M[`op]==6'b001001;
assign addiu_W=IR_W[`op]==6'b001001;
//////////////////////////////////addiu
assign andi_D=IR_D[`op]==6'b001100;
assign andi_E=IR_E[`op]==6'b001100;
assign andi_M=IR_M[`op]==6'b001100;
assign andi_W=IR_W[`op]==6'b001100;
//////////////////////////////////andi
assign xori_D=IR_D[`op]==6'b001110;
assign xori_E=IR_E[`op]==6'b001110;
assign xori_M=IR_M[`op]==6'b001110;
assign xori_W=IR_W[`op]==6'b001110;
//////////////////////////////////xori
assign slt_D=(IR_D[`op]==6'b000000)&&(IR_D[`func]==6'b101010);
assign slt_E=(IR_E[`op]==6'b000000)&&(IR_E[`func]==6'b101010);
assign slt_M=(IR_M[`op]==6'b000000)&&(IR_M[`func]==6'b101010);
assign slt_W=(IR_W[`op]==6'b000000)&&(IR_W[`func]==6'b101010);
//////////////////////////////////slt
assign slti_D=IR_D[`op]==6'b001010;
assign slti_E=IR_E[`op]==6'b001010;
assign slti_M=IR_M[`op]==6'b001010;
assign slti_W=IR_W[`op]==6'b001010;
//////////////////////////////////slti
assign sltiu_D=IR_D[`op]==6'b001011;
assign sltiu_E=IR_E[`op]==6'b001011;
assign sltiu_M=IR_M[`op]==6'b001011;
assign sltiu_W=IR_W[`op]==6'b001011;
//////////////////////////////////sltiu
assign sltu_D=(IR_D[`op]==6'b000000)&&(IR_D[`func]==6'b101011);
assign sltu_E=(IR_E[`op]==6'b000000)&&(IR_E[`func]==6'b101011);
assign sltu_M=(IR_M[`op]==6'b000000)&&(IR_M[`func]==6'b101011);
assign sltu_W=(IR_W[`op]==6'b000000)&&(IR_W[`func]==6'b101011);
//////////////////////////////////sltu
assign blez_D=IR_D[`op]==6'b000110;
assign blez_E=IR_E[`op]==6'b000110;
assign blez_M=IR_M[`op]==6'b000110;
assign blez_W=IR_W[`op]==6'b000110;
//////////////////////////////////blez
assign bgtz_D=IR_D[`op]==6'b000111;
assign bgtz_E=IR_E[`op]==6'b000111;
assign bgtz_M=IR_M[`op]==6'b000111;
assign bgtz_W=IR_W[`op]==6'b000111;
//////////////////////////////////bgtz
assign bltz_D=IR_D[`op]==6'b000001&&IR_D[`rt]==5'b00000;
assign bltz_E=IR_E[`op]==6'b000001&&IR_E[`rt]==5'b00000;
assign bltz_M=IR_M[`op]==6'b000001&&IR_M[`rt]==5'b00000;
assign bltz_W=IR_W[`op]==6'b000001&&IR_W[`rt]==5'b00000;
//////////////////////////////////bltz
assign bgez_D=IR_D[`op]==6'b000001&&IR_D[`rt]==5'b00001;
assign bgez_E=IR_E[`op]==6'b000001&&IR_E[`rt]==5'b00001;
assign bgez_M=IR_M[`op]==6'b000001&&IR_M[`rt]==5'b00001;
assign bgez_W=IR_W[`op]==6'b000001&&IR_W[`rt]==5'b00001;
//////////////////////////////////bgez
assign mult_D=(IR_D[`op]==6'b000000)&&(IR_D[`func]==6'b011000);
assign mult_E=(IR_E[`op]==6'b000000)&&(IR_E[`func]==6'b011000);
assign mult_M=(IR_M[`op]==6'b000000)&&(IR_M[`func]==6'b011000);
assign mult_W=(IR_W[`op]==6'b000000)&&(IR_W[`func]==6'b011000);
//////////////////////////////////mult
assign multu_D=(IR_D[`op]==6'b000000)&&(IR_D[`func]==6'b011001);
assign multu_E=(IR_E[`op]==6'b000000)&&(IR_E[`func]==6'b011001);
assign multu_M=(IR_M[`op]==6'b000000)&&(IR_M[`func]==6'b011001);
assign multu_W=(IR_W[`op]==6'b000000)&&(IR_W[`func]==6'b011001);
//////////////////////////////////multu
assign div_D=(IR_D[`op]==6'b000000)&&(IR_D[`func]==6'b011010);
assign div_E=(IR_E[`op]==6'b000000)&&(IR_E[`func]==6'b011010);
assign div_M=(IR_M[`op]==6'b000000)&&(IR_M[`func]==6'b011010);
assign div_W=(IR_W[`op]==6'b000000)&&(IR_W[`func]==6'b011010);
//////////////////////////////////div
assign divu_D=(IR_D[`op]==6'b000000)&&(IR_D[`func]==6'b011011);
assign divu_E=(IR_E[`op]==6'b000000)&&(IR_E[`func]==6'b011011);
assign divu_M=(IR_M[`op]==6'b000000)&&(IR_M[`func]==6'b011011);
assign divu_W=(IR_W[`op]==6'b000000)&&(IR_W[`func]==6'b011011);
//////////////////////////////////divu
assign mfhi_D=(IR_D[`op]==6'b000000)&&(IR_D[`func]==6'b010000);
assign mfhi_E=(IR_E[`op]==6'b000000)&&(IR_E[`func]==6'b010000);
assign mfhi_M=(IR_M[`op]==6'b000000)&&(IR_M[`func]==6'b010000);
assign mfhi_W=(IR_W[`op]==6'b000000)&&(IR_W[`func]==6'b010000);
//////////////////////////////////mfhi
assign mflo_D=(IR_D[`op]==6'b000000)&&(IR_D[`func]==6'b010010);
assign mflo_E=(IR_E[`op]==6'b000000)&&(IR_E[`func]==6'b010010);
assign mflo_M=(IR_M[`op]==6'b000000)&&(IR_M[`func]==6'b010010);
assign mflo_W=(IR_W[`op]==6'b000000)&&(IR_W[`func]==6'b010010);
//////////////////////////////////mflo
assign mthi_D=(IR_D[`op]==6'b000000)&&(IR_D[`func]==6'b010001);
assign mthi_E=(IR_E[`op]==6'b000000)&&(IR_E[`func]==6'b010001);
assign mthi_M=(IR_M[`op]==6'b000000)&&(IR_M[`func]==6'b010001);
assign mthi_W=(IR_W[`op]==6'b000000)&&(IR_W[`func]==6'b010001);
//////////////////////////////////mthi
assign mtlo_D=(IR_D[`op]==6'b000000)&&(IR_D[`func]==6'b010011);
assign mtlo_E=(IR_E[`op]==6'b000000)&&(IR_E[`func]==6'b010011);
assign mtlo_M=(IR_M[`op]==6'b000000)&&(IR_M[`func]==6'b010011);
assign mtlo_W=(IR_W[`op]==6'b000000)&&(IR_W[`func]==6'b010011);
//////////////////////////////////mtlo
assign mtc0_D=(IR_D[`op]==6'b010000)&&(IR_D[`rs]==5'b00100);
assign mtc0_E=(IR_E[`op]==6'b010000)&&(IR_E[`rs]==5'b00100);
assign mtc0_M=(IR_M[`op]==6'b010000)&&(IR_M[`rs]==5'b00100);
assign mtc0_W=(IR_W[`op]==6'b010000)&&(IR_W[`rs]==5'b00100);
//////////////////////////////////mtc0
assign mfc0_D=(IR_D[`op]==6'b010000)&&(IR_D[`rs]==5'b00000);
assign mfc0_E=(IR_E[`op]==6'b010000)&&(IR_E[`rs]==5'b00000);
assign mfc0_M=(IR_M[`op]==6'b010000)&&(IR_M[`rs]==5'b00000);
assign mfc0_W=(IR_W[`op]==6'b010000)&&(IR_W[`rs]==5'b00000);
//////////////////////////////////mfc0
assign eret_D=(IR_D[`op]==6'b010000)&&(IR_D[`func]==6'b011000);
assign eret_E=(IR_E[`op]==6'b010000)&&(IR_E[`func]==6'b011000);
assign eret_M=(IR_M[`op]==6'b010000)&&(IR_M[`func]==6'b011000);
assign eret_W=(IR_W[`op]==6'b010000)&&(IR_W[`func]==6'b011000);
////////////////////////////////eret





assign cal_r_D=addu_D|subu_D|sll_D|srl_D|sra_D|sllv_D|srlv_D|srav_D|and_D|xor_D|nor_D|add_D|sub_D|slt_D|sltu_D|mult_D|multu_D|div_D|divu_D|mfhi_D|mflo_D|mthi_D|mtlo_D|or_D;
assign cal_r_E=addu_E|subu_E|sll_E|srl_E|sra_E|sllv_E|srlv_E|srav_E|and_E|xor_E|nor_E|add_E|sub_E|slt_E|sltu_E|mult_E|multu_E|div_E|divu_E|mfhi_E|mflo_E|mthi_E|mtlo_E|or_E;
assign cal_r_M=addu_M|subu_M|sll_M|srl_M|sra_M|sllv_M|srlv_M|srav_M|and_M|xor_M|nor_M|add_M|sub_M|slt_M|sltu_M|mult_M|multu_M|div_M|divu_M|mfhi_M|mflo_M|mthi_M|mtlo_M|or_M;
assign cal_r_W=addu_W|subu_W|sll_W|srl_W|sra_W|sllv_W|srlv_W|srav_W|and_W|xor_W|nor_W|add_W|sub_W|slt_W|sltu_W|mult_W|multu_W|div_W|divu_W|mfhi_W|mflo_W|mthi_W|mtlo_W|or_W;
////////////////////////////////cal_r
assign cal_i_D=ori_D|lui_D|addi_D|addiu_D|andi_D|xori_D|slti_D|sltiu_D;
assign cal_i_E=ori_E|lui_E|addi_E|addiu_E|andi_E|xori_E|slti_E|sltiu_E;
assign cal_i_M=ori_M|lui_M|addi_M|addiu_M|andi_M|xori_M|slti_M|sltiu_M;
assign cal_i_W=ori_W|lui_W|addi_W|addiu_W|andi_W|xori_W|slti_W|sltiu_W;
///////////////////////////////cal_i
assign ld_D=lw_D|lb_D|lbu_D|lh_D|lhu_D|mfc0_D;
assign ld_E=lw_E|lb_E|lbu_E|lh_E|lhu_E|mfc0_E;
assign ld_M=lw_M|lb_M|lbu_M|lh_M|lhu_M|mfc0_M;
assign ld_W=lw_W|lb_W|lbu_W|lh_W|lhu_W|mfc0_W;
//////////////////////////////ld
assign st_D=sw_D|sh_D|sb_D|mtc0_D;
assign st_E=sw_E|sh_E|sb_E|mtc0_E;
assign st_M=sw_M|sh_M|sh_M|mtc0_M;
assign st_W=sw_W|sh_W|sh_W|mtc0_W;
/////////////////////////////st
assign b_D=beq_D|bne_D|blez_D|bgtz_D|bltz_D|bgez_D;
assign b_E=beq_E|bne_E|blez_E|bgtz_E|bltz_E|bgez_E;
assign b_M=beq_M|bne_M|blez_M|bgtz_M|bltz_M|bgez_M;
assign b_W=beq_W|bne_W|blez_W|bgtz_W|bltz_W|bgez_W;
//////////////////////////b
assign jj_D=jal_D;
assign jj_E=jal_E;
assign jj_M=jal_M;
assign jj_W=jal_W;
////////////////////////////jj



//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

assign Stall_cal_r=cal_r_D&&ld_E&&(IR_D[`rs]==IR_E[`rt]||IR_D[`rt]==IR_E[`rt])&&IR_E[`rt]!=5'b00000;

assign Stall_cal_i=cal_i_D&&ld_E&&IR_D[`rs]==IR_E[`rt]&&IR_E[`rt]!=5'b00000;

assign Stall_ld=ld_D&&ld_E&&IR_D[`rs]==IR_E[`rt]&&IR_E[`rt]!=5'b00000;

assign Stall_st=st_D&&ld_E&&IR_D[`rs]==IR_E[`rt]&&IR_E[`rt]!=5'b00000;

assign Stall_b=b_D&&((cal_r_E&&(IR_D[`rs]==IR_E[`rd]||IR_D[`rt]==IR_E[`rd])&&IR_E[`rd]!=5'b00000)||
							(cal_i_E&&(IR_D[`rs]==IR_E[`rt]||IR_D[`rt]==IR_E[`rt])&&IR_E[`rt]!=5'b00000)||
							(ld_E&&(IR_D[`rs]==IR_E[`rt]||IR_D[`rt]==IR_E[`rt])&&IR_E[`rt]!=5'b00000)||
							(ld_M&&(IR_D[`rs]==IR_M[`rt]||IR_D[`rt]==IR_M[`rt])&&IR_M[`rt]!=5'b00000));
							
assign Stall_jr=jr_D&&((cal_r_E&&IR_D[`rs]==IR_E[`rd]&&IR_E[`rd]!=5'b00000)||
							  (cal_i_E&&IR_D[`rs]==IR_E[`rt]&&IR_E[`rt]!=5'b00000)||
						     (ld_E&&IR_D[`rs]==IR_E[`rt]&&IR_E[`rt]!=5'b00000)||
							  (ld_M&&IR_D[`rs]==IR_M[`rt]&&IR_M[`rt]!=5'b00000));
							  
assign Stall_jalr=jalr_D&&((cal_r_E&&IR_D[`rs]==IR_E[`rd]&&IR_E[`rd]!=5'b00000)||
									(cal_i_E&&IR_D[`rs]==IR_E[`rt]&&IR_E[`rt]!=5'b00000)||
									(ld_E&&IR_D[`rs]==IR_E[`rt]&&IR_E[`rt]!=5'b00000)||
									(ld_M&&IR_D[`rs]==IR_M[`rt]&&IR_M[`rt]!=5'b00000));
									
assign Stall_eret=eret_D&&(mtc0_E||mtc0_M);									

								 
								 
assign Stall=Stall_cal_r|Stall_cal_i|Stall_ld|Stall_st|Stall_b|Stall_jr|Stall_jalr;
/////////////////////////////////////////////////////////////////////“‘…œŒ™‘›Õ£
assign FRSD= ((jj_E&&IR_D[`rs]==5'b11111)||
				  (jalr_E&&IR_D[`rs]==IR_E[`rd]&&IR_E[`rd]!=5'b00000))? 3:

				 ((cal_r_M&&IR_D[`rs]==IR_M[`rd]&&IR_M[`rd]!=5'b00000)||
				  (cal_i_M&&IR_D[`rs]==IR_M[`rt]&&IR_M[`rt]!=5'b00000)||
				  (jj_M&&IR_D[`rs]==5'b11111)||
				  (jalr_M&&IR_D[`rs]==IR_M[`rd]&&IR_M[`rd]!=5'b00000))? 2:
									
				 ((cal_r_W&&IR_D[`rs]==IR_W[`rd]&&IR_W[`rd]!=5'b00000)||
				  (cal_i_W&&IR_D[`rs]==IR_W[`rt]&&IR_W[`rt]!=5'b00000)||
				  (jj_W&&IR_D[`rs]==5'b11111)||
				  (ld_W&&IR_D[`rs]==IR_W[`rt]&&IR_W[`rt]!=5'b00000)||
				  (jalr_W&&IR_D[`rs]==IR_W[`rd]&&IR_W[`rd]!=5'b00000))? 1:0;

assign FRTD= ((jj_E&&IR_D[`rt]==5'b11111)||
				  (jalr_E&&IR_D[`rt]==IR_E[`rd]&&IR_E[`rd]!=5'b00000))? 3:

				 ((cal_r_M&&IR_D[`rt]==IR_M[`rd]&&IR_M[`rd]!=5'b00000)||
				  (cal_i_M&&IR_D[`rt]==IR_M[`rt]&&IR_M[`rt]!=5'b00000)||
				  (jj_M&&IR_D[`rt]==5'b11111)||
				  (jalr_M&&IR_D[`rt]==IR_M[`rd]&&IR_M[`rd]!=5'b00000))? 2:
				 
				 ((cal_r_W&&IR_D[`rt]==IR_W[`rd]&&IR_W[`rd]!=5'b00000)||
				  (cal_i_W&&IR_D[`rt]==IR_W[`rt]&&IR_W[`rt]!=5'b00000)||
				  (jj_W&&IR_D[`rt]==5'b11111)||
				  (ld_W&&IR_D[`rt]==IR_W[`rt]&&IR_W[`rt]!=5'b00000)||
				  (jalr_W&&IR_D[`rt]==IR_W[`rd]&&IR_W[`rd]!=5'b00000))? 1:0;
				 
assign FRSE= ((cal_r_M&&IR_E[`rs]==IR_M[`rd]&&IR_M[`rd]!=5'b00000)||
				  (cal_i_M&&IR_E[`rs]==IR_M[`rt]&&IR_M[`rt]!=5'b00000)||
				  (jj_M&&IR_E[`rs]==5'b11111)||
				  (jalr_M&&IR_E[`rs]==IR_M[`rd]&&IR_M[`rd]!=5'b00000))? 2:
																 
				 ((cal_r_W&&IR_E[`rs]==IR_W[`rd]&&IR_W[`rd]!=5'b00000)||
				  (cal_i_W&&IR_E[`rs]==IR_W[`rt]&&IR_W[`rt]!=5'b00000)||
				  (jj_W&&IR_E[`rs]==5'b11111)||
				  (ld_W&&IR_E[`rs]==IR_W[`rt]&&IR_W[`rt]!=5'b00000)||
				  (jalr_W&&IR_E[`rs]==IR_W[`rd]&&IR_W[`rd]!=5'b00000))? 1:0;
			 
assign FRTE= ((cal_r_M&&IR_E[`rt]==IR_M[`rd]&&IR_M[`rd]!=5'b00000)||
				  (cal_i_M&&IR_E[`rt]==IR_M[`rt]&&IR_M[`rt]!=5'b00000)||
				  (jj_M&&IR_E[`rt]==5'b11111)||
				  (jalr_M&&IR_E[`rt]==IR_M[`rd]&&IR_M[`rd]!=5'b00000))? 2:
								
				 ((cal_r_W&&IR_E[`rt]==IR_W[`rd]&&IR_W[`rd]!=5'b00000)||
				  (cal_i_W&&IR_E[`rt]==IR_W[`rt]&&IR_W[`rt]!=5'b00000)||
				  (jj_W&&IR_E[`rt]==5'b11111)||
				  (ld_W&&IR_E[`rt]==IR_W[`rt]&&IR_W[`rt]!=5'b00000)||
				  (jalr_W&&IR_E[`rt]==IR_W[`rd]&&IR_W[`rd]!=5'b00000))? 1:0;
				 
assign FRTM= ((cal_r_W&&IR_M[`rt]==IR_W[`rd]&&IR_W[`rd]!=5'b00000)||
				  (cal_i_W&&IR_M[`rt]==IR_W[`rt]&&IR_W[`rt]!=5'b00000)||
				  (jj_W&&IR_M[`rt]==5'b11111)||
				  (ld_W&&IR_M[`rt]==IR_W[`rt]&&IR_W[`rt]!=5'b00000)||
				  (jalr_W&&IR_M[`rt]==IR_W[`rd]&&IR_W[`rd]!=5'b00000))? 1:0;
							
				 

endmodule
