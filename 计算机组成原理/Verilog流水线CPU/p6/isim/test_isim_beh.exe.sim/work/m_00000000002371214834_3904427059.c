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
static const char *ng0 = "D:/NewFolder/data/p5.2/F.v";
static int ng1[] = {1, 0};
static unsigned int ng2[] = {12288U, 0U};
static unsigned int ng3[] = {20476U, 0U};
static int ng4[] = {0, 0};
static int ng5[] = {4, 0};



static void Cont_36_0(char *t0)
{
    char t3[8];
    char t4[8];
    char t5[8];
    char t6[8];
    char t23[8];
    char t39[8];
    char t52[8];
    char t55[8];
    char t59[8];
    char t73[8];
    char t77[8];
    char t85[8];
    char t124[8];
    char t132[8];
    char t161[8];
    char *t1;
    char *t2;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t38;
    char *t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    char *t46;
    char *t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    char *t53;
    char *t54;
    char *t56;
    char *t57;
    char *t58;
    char *t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    char *t66;
    char *t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    char *t71;
    char *t72;
    char *t74;
    char *t75;
    char *t76;
    char *t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    char *t84;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    char *t89;
    char *t90;
    char *t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    char *t99;
    char *t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    int t109;
    int t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    char *t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    char *t123;
    char *t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    char *t131;
    unsigned int t133;
    unsigned int t134;
    unsigned int t135;
    char *t136;
    char *t137;
    char *t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    unsigned int t143;
    unsigned int t144;
    unsigned int t145;
    char *t146;
    char *t147;
    unsigned int t148;
    unsigned int t149;
    unsigned int t150;
    int t151;
    unsigned int t152;
    unsigned int t153;
    unsigned int t154;
    int t155;
    unsigned int t156;
    unsigned int t157;
    unsigned int t158;
    unsigned int t159;
    char *t160;
    char *t162;
    char *t163;
    unsigned int t164;
    unsigned int t165;
    unsigned int t166;
    unsigned int t167;
    unsigned int t168;
    unsigned int t169;
    unsigned int t170;
    unsigned int t171;
    unsigned int t172;
    unsigned int t173;
    unsigned int t174;
    unsigned int t175;
    char *t176;
    char *t177;
    unsigned int t178;
    unsigned int t179;
    unsigned int t180;
    unsigned int t181;
    unsigned int t182;
    char *t183;
    char *t184;
    unsigned int t185;
    unsigned int t186;
    unsigned int t187;
    char *t188;
    unsigned int t189;
    unsigned int t190;
    unsigned int t191;
    unsigned int t192;
    char *t193;
    char *t194;
    char *t195;
    char *t196;
    char *t197;
    char *t198;
    unsigned int t199;
    unsigned int t200;
    char *t201;
    unsigned int t202;
    unsigned int t203;
    char *t204;
    unsigned int t205;
    unsigned int t206;
    char *t207;

LAB0:    t1 = (t0 + 1904U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 1152U);
    t7 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t8 = (t7 + 4);
    t9 = *((unsigned int *)t7);
    t10 = (t9 >> 0);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t8);
    t12 = (t11 >> 0);
    *((unsigned int *)t2) = t12;
    t13 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t13 & 3U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 3U);
    memset(t5, 0, 8);
    t15 = (t6 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (~(t16));
    t18 = *((unsigned int *)t6);
    t19 = (t18 & t17);
    t20 = (t19 & 3U);
    if (t20 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t15) != 0)
        goto LAB6;

LAB7:    t22 = ((char*)((ng1)));
    memset(t23, 0, 8);
    t24 = (t5 + 4);
    t25 = (t22 + 4);
    t26 = *((unsigned int *)t5);
    t27 = *((unsigned int *)t22);
    t28 = (t26 ^ t27);
    t29 = *((unsigned int *)t24);
    t30 = *((unsigned int *)t25);
    t31 = (t29 ^ t30);
    t32 = (t28 | t31);
    t33 = *((unsigned int *)t24);
    t34 = *((unsigned int *)t25);
    t35 = (t33 | t34);
    t36 = (~(t35));
    t37 = (t32 & t36);
    if (t37 != 0)
        goto LAB11;

LAB8:    if (t35 != 0)
        goto LAB10;

LAB9:    *((unsigned int *)t23) = 1;

LAB11:    memset(t39, 0, 8);
    t40 = (t23 + 4);
    t41 = *((unsigned int *)t40);
    t42 = (~(t41));
    t43 = *((unsigned int *)t23);
    t44 = (t43 & t42);
    t45 = (t44 & 1U);
    if (t45 != 0)
        goto LAB12;

LAB13:    if (*((unsigned int *)t40) != 0)
        goto LAB14;

LAB15:    t47 = (t39 + 4);
    t48 = *((unsigned int *)t39);
    t49 = (!(t48));
    t50 = *((unsigned int *)t47);
    t51 = (t49 || t50);
    if (t51 > 0)
        goto LAB16;

LAB17:    memcpy(t132, t39, 8);

LAB18:    t160 = ((char*)((ng1)));
    memset(t161, 0, 8);
    t162 = (t132 + 4);
    t163 = (t160 + 4);
    t164 = *((unsigned int *)t132);
    t165 = *((unsigned int *)t160);
    t166 = (t164 ^ t165);
    t167 = *((unsigned int *)t162);
    t168 = *((unsigned int *)t163);
    t169 = (t167 ^ t168);
    t170 = (t166 | t169);
    t171 = *((unsigned int *)t162);
    t172 = *((unsigned int *)t163);
    t173 = (t171 | t172);
    t174 = (~(t173));
    t175 = (t170 & t174);
    if (t175 != 0)
        goto LAB57;

LAB54:    if (t173 != 0)
        goto LAB56;

LAB55:    *((unsigned int *)t161) = 1;

LAB57:    memset(t4, 0, 8);
    t177 = (t161 + 4);
    t178 = *((unsigned int *)t177);
    t179 = (~(t178));
    t180 = *((unsigned int *)t161);
    t181 = (t180 & t179);
    t182 = (t181 & 1U);
    if (t182 != 0)
        goto LAB58;

LAB59:    if (*((unsigned int *)t177) != 0)
        goto LAB60;

LAB61:    t184 = (t4 + 4);
    t185 = *((unsigned int *)t4);
    t186 = *((unsigned int *)t184);
    t187 = (t185 || t186);
    if (t187 > 0)
        goto LAB62;

LAB63:    t189 = *((unsigned int *)t4);
    t190 = (~(t189));
    t191 = *((unsigned int *)t184);
    t192 = (t190 || t191);
    if (t192 > 0)
        goto LAB64;

LAB65:    if (*((unsigned int *)t184) > 0)
        goto LAB66;

LAB67:    if (*((unsigned int *)t4) > 0)
        goto LAB68;

LAB69:    memcpy(t3, t193, 8);

LAB70:    t194 = (t0 + 2296);
    t195 = (t194 + 32U);
    t196 = *((char **)t195);
    t197 = (t196 + 40U);
    t198 = *((char **)t197);
    memset(t198, 0, 8);
    t199 = 1U;
    t200 = t199;
    t201 = (t3 + 4);
    t202 = *((unsigned int *)t3);
    t199 = (t199 & t202);
    t203 = *((unsigned int *)t201);
    t200 = (t200 & t203);
    t204 = (t198 + 4);
    t205 = *((unsigned int *)t198);
    *((unsigned int *)t198) = (t205 | t199);
    t206 = *((unsigned int *)t204);
    *((unsigned int *)t204) = (t206 | t200);
    xsi_driver_vfirst_trans(t194, 0, 0);
    t207 = (t0 + 2244);
    *((int *)t207) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t5) = 1;
    goto LAB7;

LAB6:    t21 = (t5 + 4);
    *((unsigned int *)t5) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

LAB10:    t38 = (t23 + 4);
    *((unsigned int *)t23) = 1;
    *((unsigned int *)t38) = 1;
    goto LAB11;

LAB12:    *((unsigned int *)t39) = 1;
    goto LAB15;

LAB14:    t46 = (t39 + 4);
    *((unsigned int *)t39) = 1;
    *((unsigned int *)t46) = 1;
    goto LAB15;

LAB16:    t53 = (t0 + 1152U);
    t54 = *((char **)t53);
    t53 = ((char*)((ng2)));
    memset(t55, 0, 8);
    t56 = (t54 + 4);
    if (*((unsigned int *)t56) != 0)
        goto LAB20;

LAB19:    t57 = (t53 + 4);
    if (*((unsigned int *)t57) != 0)
        goto LAB20;

LAB23:    if (*((unsigned int *)t54) < *((unsigned int *)t53))
        goto LAB22;

LAB21:    *((unsigned int *)t55) = 1;

LAB22:    memset(t59, 0, 8);
    t60 = (t55 + 4);
    t61 = *((unsigned int *)t60);
    t62 = (~(t61));
    t63 = *((unsigned int *)t55);
    t64 = (t63 & t62);
    t65 = (t64 & 1U);
    if (t65 != 0)
        goto LAB24;

LAB25:    if (*((unsigned int *)t60) != 0)
        goto LAB26;

LAB27:    t67 = (t59 + 4);
    t68 = *((unsigned int *)t59);
    t69 = *((unsigned int *)t67);
    t70 = (t68 || t69);
    if (t70 > 0)
        goto LAB28;

LAB29:    memcpy(t85, t59, 8);

LAB30:    memset(t52, 0, 8);
    t117 = (t85 + 4);
    t118 = *((unsigned int *)t117);
    t119 = (~(t118));
    t120 = *((unsigned int *)t85);
    t121 = (t120 & t119);
    t122 = (t121 & 1U);
    if (t122 != 0)
        goto LAB46;

LAB44:    if (*((unsigned int *)t117) == 0)
        goto LAB43;

LAB45:    t123 = (t52 + 4);
    *((unsigned int *)t52) = 1;
    *((unsigned int *)t123) = 1;

LAB46:    memset(t124, 0, 8);
    t125 = (t52 + 4);
    t126 = *((unsigned int *)t125);
    t127 = (~(t126));
    t128 = *((unsigned int *)t52);
    t129 = (t128 & t127);
    t130 = (t129 & 1U);
    if (t130 != 0)
        goto LAB47;

LAB48:    if (*((unsigned int *)t125) != 0)
        goto LAB49;

LAB50:    t133 = *((unsigned int *)t39);
    t134 = *((unsigned int *)t124);
    t135 = (t133 | t134);
    *((unsigned int *)t132) = t135;
    t136 = (t39 + 4);
    t137 = (t124 + 4);
    t138 = (t132 + 4);
    t139 = *((unsigned int *)t136);
    t140 = *((unsigned int *)t137);
    t141 = (t139 | t140);
    *((unsigned int *)t138) = t141;
    t142 = *((unsigned int *)t138);
    t143 = (t142 != 0);
    if (t143 == 1)
        goto LAB51;

LAB52:
LAB53:    goto LAB18;

LAB20:    t58 = (t55 + 4);
    *((unsigned int *)t55) = 1;
    *((unsigned int *)t58) = 1;
    goto LAB22;

LAB24:    *((unsigned int *)t59) = 1;
    goto LAB27;

LAB26:    t66 = (t59 + 4);
    *((unsigned int *)t59) = 1;
    *((unsigned int *)t66) = 1;
    goto LAB27;

LAB28:    t71 = (t0 + 1152U);
    t72 = *((char **)t71);
    t71 = ((char*)((ng3)));
    memset(t73, 0, 8);
    t74 = (t72 + 4);
    if (*((unsigned int *)t74) != 0)
        goto LAB32;

LAB31:    t75 = (t71 + 4);
    if (*((unsigned int *)t75) != 0)
        goto LAB32;

LAB35:    if (*((unsigned int *)t72) > *((unsigned int *)t71))
        goto LAB34;

LAB33:    *((unsigned int *)t73) = 1;

LAB34:    memset(t77, 0, 8);
    t78 = (t73 + 4);
    t79 = *((unsigned int *)t78);
    t80 = (~(t79));
    t81 = *((unsigned int *)t73);
    t82 = (t81 & t80);
    t83 = (t82 & 1U);
    if (t83 != 0)
        goto LAB36;

LAB37:    if (*((unsigned int *)t78) != 0)
        goto LAB38;

LAB39:    t86 = *((unsigned int *)t59);
    t87 = *((unsigned int *)t77);
    t88 = (t86 & t87);
    *((unsigned int *)t85) = t88;
    t89 = (t59 + 4);
    t90 = (t77 + 4);
    t91 = (t85 + 4);
    t92 = *((unsigned int *)t89);
    t93 = *((unsigned int *)t90);
    t94 = (t92 | t93);
    *((unsigned int *)t91) = t94;
    t95 = *((unsigned int *)t91);
    t96 = (t95 != 0);
    if (t96 == 1)
        goto LAB40;

LAB41:
LAB42:    goto LAB30;

LAB32:    t76 = (t73 + 4);
    *((unsigned int *)t73) = 1;
    *((unsigned int *)t76) = 1;
    goto LAB34;

LAB36:    *((unsigned int *)t77) = 1;
    goto LAB39;

LAB38:    t84 = (t77 + 4);
    *((unsigned int *)t77) = 1;
    *((unsigned int *)t84) = 1;
    goto LAB39;

LAB40:    t97 = *((unsigned int *)t85);
    t98 = *((unsigned int *)t91);
    *((unsigned int *)t85) = (t97 | t98);
    t99 = (t59 + 4);
    t100 = (t77 + 4);
    t101 = *((unsigned int *)t59);
    t102 = (~(t101));
    t103 = *((unsigned int *)t99);
    t104 = (~(t103));
    t105 = *((unsigned int *)t77);
    t106 = (~(t105));
    t107 = *((unsigned int *)t100);
    t108 = (~(t107));
    t109 = (t102 & t104);
    t110 = (t106 & t108);
    t111 = (~(t109));
    t112 = (~(t110));
    t113 = *((unsigned int *)t91);
    *((unsigned int *)t91) = (t113 & t111);
    t114 = *((unsigned int *)t91);
    *((unsigned int *)t91) = (t114 & t112);
    t115 = *((unsigned int *)t85);
    *((unsigned int *)t85) = (t115 & t111);
    t116 = *((unsigned int *)t85);
    *((unsigned int *)t85) = (t116 & t112);
    goto LAB42;

LAB43:    *((unsigned int *)t52) = 1;
    goto LAB46;

LAB47:    *((unsigned int *)t124) = 1;
    goto LAB50;

LAB49:    t131 = (t124 + 4);
    *((unsigned int *)t124) = 1;
    *((unsigned int *)t131) = 1;
    goto LAB50;

LAB51:    t144 = *((unsigned int *)t132);
    t145 = *((unsigned int *)t138);
    *((unsigned int *)t132) = (t144 | t145);
    t146 = (t39 + 4);
    t147 = (t124 + 4);
    t148 = *((unsigned int *)t146);
    t149 = (~(t148));
    t150 = *((unsigned int *)t39);
    t151 = (t150 & t149);
    t152 = *((unsigned int *)t147);
    t153 = (~(t152));
    t154 = *((unsigned int *)t124);
    t155 = (t154 & t153);
    t156 = (~(t151));
    t157 = (~(t155));
    t158 = *((unsigned int *)t138);
    *((unsigned int *)t138) = (t158 & t156);
    t159 = *((unsigned int *)t138);
    *((unsigned int *)t138) = (t159 & t157);
    goto LAB53;

LAB56:    t176 = (t161 + 4);
    *((unsigned int *)t161) = 1;
    *((unsigned int *)t176) = 1;
    goto LAB57;

LAB58:    *((unsigned int *)t4) = 1;
    goto LAB61;

LAB60:    t183 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t183) = 1;
    goto LAB61;

LAB62:    t188 = ((char*)((ng1)));
    goto LAB63;

LAB64:    t193 = ((char*)((ng4)));
    goto LAB65;

LAB66:    xsi_vlog_unsigned_bit_combine(t3, 32, t188, 32, t193, 32);
    goto LAB70;

LAB68:    memcpy(t3, t188, 8);
    goto LAB70;

}

static void Cont_40_1(char *t0)
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

LAB0:    t1 = (t0 + 2048U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 1152U);
    t4 = *((char **)t2);
    t2 = ((char*)((ng5)));
    memset(t5, 0, 8);
    xsi_vlog_signed_add(t5, 32, t4, 32, t2, 32);
    t6 = (t0 + 2332);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t5, 8);
    xsi_driver_vfirst_trans(t6, 0, 31);
    t11 = (t0 + 2252);
    *((int *)t11) = 1;

LAB1:    return;
}


extern void work_m_00000000002371214834_3904427059_init()
{
	static char *pe[] = {(void *)Cont_36_0,(void *)Cont_40_1};
	xsi_register_didat("work_m_00000000002371214834_3904427059", "isim/test_isim_beh.exe.sim/work/m_00000000002371214834_3904427059.didat");
	xsi_register_executes(pe);
}
