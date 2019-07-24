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
static const char *ng0 = "D:/NewFolder/data/p5.2/MFRSD.v";
static int ng1[] = {3, 0};
static int ng2[] = {4, 0};
static int ng3[] = {2, 0};
static int ng4[] = {1, 0};



static void Cont_26_0(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char t36[8];
    char t41[8];
    char t42[8];
    char t45[8];
    char t78[8];
    char t79[8];
    char t81[8];
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
    char *t34;
    char *t35;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    char *t43;
    char *t44;
    char *t46;
    char *t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    char *t60;
    char *t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    char *t67;
    char *t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    char *t72;
    char *t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    char *t80;
    char *t82;
    char *t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    char *t96;
    char *t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    char *t103;
    char *t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    char *t108;
    char *t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    char *t114;
    char *t115;
    char *t116;
    char *t117;
    char *t118;
    char *t119;

LAB0:    t1 = (t0 + 1720U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(26, ng0);
    t2 = (t0 + 968U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng1)));
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

LAB13:    t37 = *((unsigned int *)t4);
    t38 = (~(t37));
    t39 = *((unsigned int *)t29);
    t40 = (t38 || t39);
    if (t40 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t29) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t41, 8);

LAB20:    t108 = (t0 + 1960);
    t115 = (t108 + 32U);
    t116 = *((char **)t115);
    t117 = (t116 + 40U);
    t118 = *((char **)t117);
    memcpy(t118, t3, 8);
    xsi_driver_vfirst_trans(t108, 0, 31);
    t119 = (t0 + 1916);
    *((int *)t119) = 1;

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

LAB12:    t34 = (t0 + 876U);
    t35 = *((char **)t34);
    t34 = ((char*)((ng2)));
    memset(t36, 0, 8);
    xsi_vlog_unsigned_add(t36, 32, t35, 32, t34, 32);
    goto LAB13;

LAB14:    t43 = (t0 + 968U);
    t44 = *((char **)t43);
    t43 = ((char*)((ng3)));
    memset(t45, 0, 8);
    t46 = (t44 + 4);
    t47 = (t43 + 4);
    t48 = *((unsigned int *)t44);
    t49 = *((unsigned int *)t43);
    t50 = (t48 ^ t49);
    t51 = *((unsigned int *)t46);
    t52 = *((unsigned int *)t47);
    t53 = (t51 ^ t52);
    t54 = (t50 | t53);
    t55 = *((unsigned int *)t46);
    t56 = *((unsigned int *)t47);
    t57 = (t55 | t56);
    t58 = (~(t57));
    t59 = (t54 & t58);
    if (t59 != 0)
        goto LAB24;

LAB21:    if (t57 != 0)
        goto LAB23;

LAB22:    *((unsigned int *)t45) = 1;

LAB24:    memset(t42, 0, 8);
    t61 = (t45 + 4);
    t62 = *((unsigned int *)t61);
    t63 = (~(t62));
    t64 = *((unsigned int *)t45);
    t65 = (t64 & t63);
    t66 = (t65 & 1U);
    if (t66 != 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t61) != 0)
        goto LAB27;

LAB28:    t68 = (t42 + 4);
    t69 = *((unsigned int *)t42);
    t70 = *((unsigned int *)t68);
    t71 = (t69 || t70);
    if (t71 > 0)
        goto LAB29;

LAB30:    t74 = *((unsigned int *)t42);
    t75 = (~(t74));
    t76 = *((unsigned int *)t68);
    t77 = (t75 || t76);
    if (t77 > 0)
        goto LAB31;

LAB32:    if (*((unsigned int *)t68) > 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t42) > 0)
        goto LAB35;

LAB36:    memcpy(t41, t78, 8);

LAB37:    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 32, t36, 32, t41, 32);
    goto LAB20;

LAB18:    memcpy(t3, t36, 8);
    goto LAB20;

LAB23:    t60 = (t45 + 4);
    *((unsigned int *)t45) = 1;
    *((unsigned int *)t60) = 1;
    goto LAB24;

LAB25:    *((unsigned int *)t42) = 1;
    goto LAB28;

LAB27:    t67 = (t42 + 4);
    *((unsigned int *)t42) = 1;
    *((unsigned int *)t67) = 1;
    goto LAB28;

LAB29:    t72 = (t0 + 692U);
    t73 = *((char **)t72);
    goto LAB30;

LAB31:    t72 = (t0 + 968U);
    t80 = *((char **)t72);
    t72 = ((char*)((ng4)));
    memset(t81, 0, 8);
    t82 = (t80 + 4);
    t83 = (t72 + 4);
    t84 = *((unsigned int *)t80);
    t85 = *((unsigned int *)t72);
    t86 = (t84 ^ t85);
    t87 = *((unsigned int *)t82);
    t88 = *((unsigned int *)t83);
    t89 = (t87 ^ t88);
    t90 = (t86 | t89);
    t91 = *((unsigned int *)t82);
    t92 = *((unsigned int *)t83);
    t93 = (t91 | t92);
    t94 = (~(t93));
    t95 = (t90 & t94);
    if (t95 != 0)
        goto LAB41;

LAB38:    if (t93 != 0)
        goto LAB40;

LAB39:    *((unsigned int *)t81) = 1;

LAB41:    memset(t79, 0, 8);
    t97 = (t81 + 4);
    t98 = *((unsigned int *)t97);
    t99 = (~(t98));
    t100 = *((unsigned int *)t81);
    t101 = (t100 & t99);
    t102 = (t101 & 1U);
    if (t102 != 0)
        goto LAB42;

LAB43:    if (*((unsigned int *)t97) != 0)
        goto LAB44;

LAB45:    t104 = (t79 + 4);
    t105 = *((unsigned int *)t79);
    t106 = *((unsigned int *)t104);
    t107 = (t105 || t106);
    if (t107 > 0)
        goto LAB46;

LAB47:    t110 = *((unsigned int *)t79);
    t111 = (~(t110));
    t112 = *((unsigned int *)t104);
    t113 = (t111 || t112);
    if (t113 > 0)
        goto LAB48;

LAB49:    if (*((unsigned int *)t104) > 0)
        goto LAB50;

LAB51:    if (*((unsigned int *)t79) > 0)
        goto LAB52;

LAB53:    memcpy(t78, t114, 8);

LAB54:    goto LAB32;

LAB33:    xsi_vlog_unsigned_bit_combine(t41, 32, t73, 32, t78, 32);
    goto LAB37;

LAB35:    memcpy(t41, t73, 8);
    goto LAB37;

LAB40:    t96 = (t81 + 4);
    *((unsigned int *)t81) = 1;
    *((unsigned int *)t96) = 1;
    goto LAB41;

LAB42:    *((unsigned int *)t79) = 1;
    goto LAB45;

LAB44:    t103 = (t79 + 4);
    *((unsigned int *)t79) = 1;
    *((unsigned int *)t103) = 1;
    goto LAB45;

LAB46:    t108 = (t0 + 784U);
    t109 = *((char **)t108);
    goto LAB47;

LAB48:    t108 = (t0 + 600U);
    t114 = *((char **)t108);
    goto LAB49;

LAB50:    xsi_vlog_unsigned_bit_combine(t78, 32, t109, 32, t114, 32);
    goto LAB54;

LAB52:    memcpy(t78, t109, 8);
    goto LAB54;

}


extern void work_m_00000000001172362091_1508074921_init()
{
	static char *pe[] = {(void *)Cont_26_0};
	xsi_register_didat("work_m_00000000001172362091_1508074921", "isim/test_isim_beh.exe.sim/work/m_00000000001172362091_1508074921.didat");
	xsi_register_executes(pe);
}
