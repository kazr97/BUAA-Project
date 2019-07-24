/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/NewFolder/data/p5.2/NPC.v";
static int ng1[] = {4, 0};
static int ng2[] = {3, 0};
static int ng3[] = {2, 0};
static unsigned int ng4[] = {0U, 0U};
static int ng5[] = {1, 0};
static int ng6[] = {14, 0};



static void Cont_31_0(char *t0)
{
    char t5[8];
    char *t1;
    char *t2;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    t1 = (t0 + 1812U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 600U);
    t4 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t5, 0, 8);
    xsi_vlog_signed_minus(t5, 32, t4, 32, t2, 32);
    t6 = (t0 + 2204);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t5, 8);
    xsi_driver_vfirst_trans(t6, 0, 31);
    t11 = (t0 + 2152);
    *((int *)t11) = 1;

LAB1:    return;
}

static void Cont_33_1(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char t39[8];
    char t40[8];
    char t42[8];
    char t69[8];
    char t71[8];
    char t74[8];
    char t75[8];
    char t88[8];
    char t89[8];
    char t92[8];
    char t108[8];
    char t122[8];
    char t138[8];
    char t146[8];
    char t193[8];
    char t194[8];
    char t204[8];
    char t208[8];
    char t216[8];
    char t223[8];
    char *t1;
    char *t2;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t41;
    char *t43;
    char *t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    char *t57;
    char *t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    char *t64;
    char *t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    char *t70;
    char *t72;
    char *t73;
    char *t76;
    char *t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    char *t90;
    char *t91;
    char *t93;
    char *t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    char *t107;
    char *t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    char *t115;
    char *t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    char *t120;
    char *t121;
    char *t123;
    char *t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    unsigned int t133;
    unsigned int t134;
    unsigned int t135;
    unsigned int t136;
    char *t137;
    char *t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    unsigned int t143;
    unsigned int t144;
    char *t145;
    unsigned int t147;
    unsigned int t148;
    unsigned int t149;
    char *t150;
    char *t151;
    char *t152;
    unsigned int t153;
    unsigned int t154;
    unsigned int t155;
    unsigned int t156;
    unsigned int t157;
    unsigned int t158;
    unsigned int t159;
    char *t160;
    char *t161;
    unsigned int t162;
    unsigned int t163;
    unsigned int t164;
    unsigned int t165;
    unsigned int t166;
    unsigned int t167;
    unsigned int t168;
    unsigned int t169;
    int t170;
    int t171;
    unsigned int t172;
    unsigned int t173;
    unsigned int t174;
    unsigned int t175;
    unsigned int t176;
    unsigned int t177;
    char *t178;
    unsigned int t179;
    unsigned int t180;
    unsigned int t181;
    unsigned int t182;
    unsigned int t183;
    char *t184;
    char *t185;
    unsigned int t186;
    unsigned int t187;
    unsigned int t188;
    char *t190;
    char *t191;
    char *t195;
    char *t196;
    char *t197;
    unsigned int t198;
    unsigned int t199;
    unsigned int t200;
    unsigned int t201;
    unsigned int t202;
    unsigned int t203;
    char *t205;
    char *t206;
    char *t207;
    char *t209;
    unsigned int t210;
    unsigned int t211;
    unsigned int t212;
    unsigned int t213;
    unsigned int t214;
    unsigned int t215;
    unsigned int t217;
    unsigned int t218;
    unsigned int t219;
    unsigned int t220;
    char *t221;
    char *t222;
    char *t224;
    char *t225;
    char *t226;
    char *t227;
    char *t228;
    char *t229;

LAB0:    t1 = (t0 + 1956U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 876U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng2)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t2 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB7;

LAB4:    if (t18 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t6) = 1;

LAB7:    memset(t4, 0, 8);
    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t22) != 0)
        goto LAB10;

LAB11:    t29 = (t4 + 4);
    t30 = *((unsigned int *)t4);
    t31 = *((unsigned int *)t29);
    t32 = (t30 || t31);
    if (t32 > 0)
        goto LAB12;

LAB13:    t35 = *((unsigned int *)t4);
    t36 = (~(t35));
    t37 = *((unsigned int *)t29);
    t38 = (t36 || t37);
    if (t38 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t29) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t39, 8);

LAB20:    t224 = (t0 + 2240);
    t225 = (t224 + 32U);
    t226 = *((char **)t225);
    t227 = (t226 + 40U);
    t228 = *((char **)t227);
    memcpy(t228, t3, 8);
    xsi_driver_vfirst_trans(t224, 0, 31);
    t229 = (t0 + 2160);
    *((int *)t229) = 1;

LAB1:    return;
LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t28 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB11;

LAB12:    t33 = (t0 + 692U);
    t34 = *((char **)t33);
    goto LAB13;

LAB14:    t33 = (t0 + 876U);
    t41 = *((char **)t33);
    t33 = ((char*)((ng3)));
    memset(t42, 0, 8);
    t43 = (t41 + 4);
    t44 = (t33 + 4);
    t45 = *((unsigned int *)t41);
    t46 = *((unsigned int *)t33);
    t47 = (t45 ^ t46);
    t48 = *((unsigned int *)t43);
    t49 = *((unsigned int *)t44);
    t50 = (t48 ^ t49);
    t51 = (t47 | t50);
    t52 = *((unsigned int *)t43);
    t53 = *((unsigned int *)t44);
    t54 = (t52 | t53);
    t55 = (~(t54));
    t56 = (t51 & t55);
    if (t56 != 0)
        goto LAB24;

LAB21:    if (t54 != 0)
        goto LAB23;

LAB22:    *((unsigned int *)t42) = 1;

LAB24:    memset(t40, 0, 8);
    t58 = (t42 + 4);
    t59 = *((unsigned int *)t58);
    t60 = (~(t59));
    t61 = *((unsigned int *)t42);
    t62 = (t61 & t60);
    t63 = (t62 & 1U);
    if (t63 != 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t58) != 0)
        goto LAB27;

LAB28:    t65 = (t40 + 4);
    t66 = *((unsigned int *)t40);
    t67 = *((unsigned int *)t65);
    t68 = (t66 || t67);
    if (t68 > 0)
        goto LAB29;

LAB30:    t84 = *((unsigned int *)t40);
    t85 = (~(t84));
    t86 = *((unsigned int *)t65);
    t87 = (t85 || t86);
    if (t87 > 0)
        goto LAB31;

LAB32:    if (*((unsigned int *)t65) > 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t40) > 0)
        goto LAB35;

LAB36:    memcpy(t39, t88, 8);

LAB37:    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 32, t34, 32, t39, 32);
    goto LAB20;

LAB18:    memcpy(t3, t34, 8);
    goto LAB20;

LAB23:    t57 = (t42 + 4);
    *((unsigned int *)t42) = 1;
    *((unsigned int *)t57) = 1;
    goto LAB24;

LAB25:    *((unsigned int *)t40) = 1;
    goto LAB28;

LAB27:    t64 = (t40 + 4);
    *((unsigned int *)t40) = 1;
    *((unsigned int *)t64) = 1;
    goto LAB28;

LAB29:    t70 = ((char*)((ng4)));
    t72 = (t0 + 784U);
    t73 = *((char **)t72);
    xsi_vlogtype_concat(t71, 26, 26, 1U, t73, 26);
    t72 = (t0 + 1152U);
    t76 = *((char **)t72);
    memset(t75, 0, 8);
    t72 = (t75 + 4);
    t77 = (t76 + 4);
    t78 = *((unsigned int *)t76);
    t79 = (t78 >> 28);
    *((unsigned int *)t75) = t79;
    t80 = *((unsigned int *)t77);
    t81 = (t80 >> 28);
    *((unsigned int *)t72) = t81;
    t82 = *((unsigned int *)t75);
    *((unsigned int *)t75) = (t82 & 15U);
    t83 = *((unsigned int *)t72);
    *((unsigned int *)t72) = (t83 & 15U);
    xsi_vlogtype_concat(t74, 4, 4, 1U, t75, 4);
    xsi_vlogtype_concat(t69, 32, 32, 3U, t74, 4, t71, 26, t70, 2);
    goto LAB30;

LAB31:    t90 = (t0 + 876U);
    t91 = *((char **)t90);
    t90 = ((char*)((ng5)));
    memset(t92, 0, 8);
    t93 = (t91 + 4);
    t94 = (t90 + 4);
    t95 = *((unsigned int *)t91);
    t96 = *((unsigned int *)t90);
    t97 = (t95 ^ t96);
    t98 = *((unsigned int *)t93);
    t99 = *((unsigned int *)t94);
    t100 = (t98 ^ t99);
    t101 = (t97 | t100);
    t102 = *((unsigned int *)t93);
    t103 = *((unsigned int *)t94);
    t104 = (t102 | t103);
    t105 = (~(t104));
    t106 = (t101 & t105);
    if (t106 != 0)
        goto LAB41;

LAB38:    if (t104 != 0)
        goto LAB40;

LAB39:    *((unsigned int *)t92) = 1;

LAB41:    memset(t108, 0, 8);
    t109 = (t92 + 4);
    t110 = *((unsigned int *)t109);
    t111 = (~(t110));
    t112 = *((unsigned int *)t92);
    t113 = (t112 & t111);
    t114 = (t113 & 1U);
    if (t114 != 0)
        goto LAB42;

LAB43:    if (*((unsigned int *)t109) != 0)
        goto LAB44;

LAB45:    t116 = (t108 + 4);
    t117 = *((unsigned int *)t108);
    t118 = *((unsigned int *)t116);
    t119 = (t117 || t118);
    if (t119 > 0)
        goto LAB46;

LAB47:    memcpy(t146, t108, 8);

LAB48:    memset(t89, 0, 8);
    t178 = (t146 + 4);
    t179 = *((unsigned int *)t178);
    t180 = (~(t179));
    t181 = *((unsigned int *)t146);
    t182 = (t181 & t180);
    t183 = (t182 & 1U);
    if (t183 != 0)
        goto LAB60;

LAB61:    if (*((unsigned int *)t178) != 0)
        goto LAB62;

LAB63:    t185 = (t89 + 4);
    t186 = *((unsigned int *)t89);
    t187 = *((unsigned int *)t185);
    t188 = (t186 || t187);
    if (t188 > 0)
        goto LAB64;

LAB65:    t217 = *((unsigned int *)t89);
    t218 = (~(t217));
    t219 = *((unsigned int *)t185);
    t220 = (t218 || t219);
    if (t220 > 0)
        goto LAB66;

LAB67:    if (*((unsigned int *)t185) > 0)
        goto LAB68;

LAB69:    if (*((unsigned int *)t89) > 0)
        goto LAB70;

LAB71:    memcpy(t88, t223, 8);

LAB72:    goto LAB32;

LAB33:    xsi_vlog_unsigned_bit_combine(t39, 32, t69, 32, t88, 32);
    goto LAB37;

LAB35:    memcpy(t39, t69, 8);
    goto LAB37;

LAB40:    t107 = (t92 + 4);
    *((unsigned int *)t92) = 1;
    *((unsigned int *)t107) = 1;
    goto LAB41;

LAB42:    *((unsigned int *)t108) = 1;
    goto LAB45;

LAB44:    t115 = (t108 + 4);
    *((unsigned int *)t108) = 1;
    *((unsigned int *)t115) = 1;
    goto LAB45;

LAB46:    t120 = (t0 + 968U);
    t121 = *((char **)t120);
    t120 = ((char*)((ng5)));
    memset(t122, 0, 8);
    t123 = (t121 + 4);
    t124 = (t120 + 4);
    t125 = *((unsigned int *)t121);
    t126 = *((unsigned int *)t120);
    t127 = (t125 ^ t126);
    t128 = *((unsigned int *)t123);
    t129 = *((unsigned int *)t124);
    t130 = (t128 ^ t129);
    t131 = (t127 | t130);
    t132 = *((unsigned int *)t123);
    t133 = *((unsigned int *)t124);
    t134 = (t132 | t133);
    t135 = (~(t134));
    t136 = (t131 & t135);
    if (t136 != 0)
        goto LAB52;

LAB49:    if (t134 != 0)
        goto LAB51;

LAB50:    *((unsigned int *)t122) = 1;

LAB52:    memset(t138, 0, 8);
    t139 = (t122 + 4);
    t140 = *((unsigned int *)t139);
    t141 = (~(t140));
    t142 = *((unsigned int *)t122);
    t143 = (t142 & t141);
    t144 = (t143 & 1U);
    if (t144 != 0)
        goto LAB53;

LAB54:    if (*((unsigned int *)t139) != 0)
        goto LAB55;

LAB56:    t147 = *((unsigned int *)t108);
    t148 = *((unsigned int *)t138);
    t149 = (t147 & t148);
    *((unsigned int *)t146) = t149;
    t150 = (t108 + 4);
    t151 = (t138 + 4);
    t152 = (t146 + 4);
    t153 = *((unsigned int *)t150);
    t154 = *((unsigned int *)t151);
    t155 = (t153 | t154);
    *((unsigned int *)t152) = t155;
    t156 = *((unsigned int *)t152);
    t157 = (t156 != 0);
    if (t157 == 1)
        goto LAB57;

LAB58:
LAB59:    goto LAB48;

LAB51:    t137 = (t122 + 4);
    *((unsigned int *)t122) = 1;
    *((unsigned int *)t137) = 1;
    goto LAB52;

LAB53:    *((unsigned int *)t138) = 1;
    goto LAB56;

LAB55:    t145 = (t138 + 4);
    *((unsigned int *)t138) = 1;
    *((unsigned int *)t145) = 1;
    goto LAB56;

LAB57:    t158 = *((unsigned int *)t146);
    t159 = *((unsigned int *)t152);
    *((unsigned int *)t146) = (t158 | t159);
    t160 = (t108 + 4);
    t161 = (t138 + 4);
    t162 = *((unsigned int *)t108);
    t163 = (~(t162));
    t164 = *((unsigned int *)t160);
    t165 = (~(t164));
    t166 = *((unsigned int *)t138);
    t167 = (~(t166));
    t168 = *((unsigned int *)t161);
    t169 = (~(t168));
    t170 = (t163 & t165);
    t171 = (t167 & t169);
    t172 = (~(t170));
    t173 = (~(t171));
    t174 = *((unsigned int *)t152);
    *((unsigned int *)t152) = (t174 & t172);
    t175 = *((unsigned int *)t152);
    *((unsigned int *)t152) = (t175 & t173);
    t176 = *((unsigned int *)t146);
    *((unsigned int *)t146) = (t176 & t172);
    t177 = *((unsigned int *)t146);
    *((unsigned int *)t146) = (t177 & t173);
    goto LAB59;

LAB60:    *((unsigned int *)t89) = 1;
    goto LAB63;

LAB62:    t184 = (t89 + 4);
    *((unsigned int *)t89) = 1;
    *((unsigned int *)t184) = 1;
    goto LAB63;

LAB64:    t190 = (t0 + 600U);
    t191 = *((char **)t190);
    t190 = ((char*)((ng4)));
    t195 = (t0 + 784U);
    t196 = *((char **)t195);
    memset(t194, 0, 8);
    t195 = (t194 + 4);
    t197 = (t196 + 4);
    t198 = *((unsigned int *)t196);
    t199 = (t198 >> 0);
    *((unsigned int *)t194) = t199;
    t200 = *((unsigned int *)t197);
    t201 = (t200 >> 0);
    *((unsigned int *)t195) = t201;
    t202 = *((unsigned int *)t194);
    *((unsigned int *)t194) = (t202 & 65535U);
    t203 = *((unsigned int *)t195);
    *((unsigned int *)t195) = (t203 & 65535U);
    t205 = ((char*)((ng6)));
    t206 = (t0 + 784U);
    t207 = *((char **)t206);
    memset(t208, 0, 8);
    t206 = (t208 + 4);
    t209 = (t207 + 4);
    t210 = *((unsigned int *)t207);
    t211 = (t210 >> 15);
    t212 = (t211 & 1);
    *((unsigned int *)t208) = t212;
    t213 = *((unsigned int *)t209);
    t214 = (t213 >> 15);
    t215 = (t214 & 1);
    *((unsigned int *)t206) = t215;
    xsi_vlog_mul_concat(t204, 14, 1, t205, 1U, t208, 1);
    xsi_vlogtype_concat(t193, 32, 32, 3U, t204, 14, t194, 16, t190, 2);
    memset(t216, 0, 8);
    xsi_vlog_unsigned_add(t216, 32, t191, 32, t193, 32);
    goto LAB65;

LAB66:    t221 = (t0 + 600U);
    t222 = *((char **)t221);
    t221 = ((char*)((ng1)));
    memset(t223, 0, 8);
    xsi_vlog_unsigned_add(t223, 32, t222, 32, t221, 32);
    goto LAB67;

LAB68:    xsi_vlog_unsigned_bit_combine(t88, 32, t216, 32, t223, 32);
    goto LAB72;

LAB70:    memcpy(t88, t216, 8);
    goto LAB72;

}


extern void work_m_00000000002078914173_0757879789_init()
{
	static char *pe[] = {(void *)Cont_31_0,(void *)Cont_33_1};
	xsi_register_didat("work_m_00000000002078914173_0757879789", "isim/test_isim_beh.exe.sim/work/m_00000000002078914173_0757879789.didat");
	xsi_register_executes(pe);
}
