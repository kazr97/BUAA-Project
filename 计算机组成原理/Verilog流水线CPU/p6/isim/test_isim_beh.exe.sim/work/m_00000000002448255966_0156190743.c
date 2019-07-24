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
static const char *ng0 = "D:/NewFolder/data/p5.2/Bridge.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {32512U, 0U};
static unsigned int ng3[] = {32523U, 0U};



static void Cont_39_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    t1 = (t0 + 2456U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 600U);
    t3 = *((char **)t2);
    t2 = (t0 + 3456);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 8);
    xsi_driver_vfirst_trans(t2, 0, 31);
    t8 = (t0 + 3372);
    *((int *)t8) = 1;

LAB1:    return;
}

static void Cont_41_1(char *t0)
{
    char t3[8];
    char t4[8];
    char t5[8];
    char t9[8];
    char t13[8];
    char t25[8];
    char t30[8];
    char t34[8];
    char t42[8];
    char *t1;
    char *t2;
    char *t6;
    char *t7;
    char *t8;
    char *t10;
    char *t11;
    char *t12;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t31;
    char *t32;
    char *t33;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    char *t46;
    char *t47;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    char *t56;
    char *t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    int t66;
    int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    char *t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    char *t80;
    char *t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    char *t85;
    char *t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    char *t91;
    char *t92;
    char *t93;
    char *t94;
    char *t95;
    char *t96;

LAB0:    t1 = (t0 + 2600U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(41, ng0);
    t2 = ((char*)((ng1)));
    t6 = ((char*)((ng1)));
    t7 = (t0 + 1060U);
    t8 = *((char **)t7);
    xsi_vlogtype_concat(t5, 32, 32, 3U, t8, 30, t6, 1, t2, 1);
    t7 = ((char*)((ng2)));
    memset(t9, 0, 8);
    t10 = (t5 + 4);
    if (*((unsigned int *)t10) != 0)
        goto LAB5;

LAB4:    t11 = (t7 + 4);
    if (*((unsigned int *)t11) != 0)
        goto LAB5;

LAB8:    if (*((unsigned int *)t5) < *((unsigned int *)t7))
        goto LAB7;

LAB6:    *((unsigned int *)t9) = 1;

LAB7:    memset(t13, 0, 8);
    t14 = (t9 + 4);
    t15 = *((unsigned int *)t14);
    t16 = (~(t15));
    t17 = *((unsigned int *)t9);
    t18 = (t17 & t16);
    t19 = (t18 & 1U);
    if (t19 != 0)
        goto LAB9;

LAB10:    if (*((unsigned int *)t14) != 0)
        goto LAB11;

LAB12:    t21 = (t13 + 4);
    t22 = *((unsigned int *)t13);
    t23 = *((unsigned int *)t21);
    t24 = (t22 || t23);
    if (t24 > 0)
        goto LAB13;

LAB14:    memcpy(t42, t13, 8);

LAB15:    memset(t4, 0, 8);
    t74 = (t42 + 4);
    t75 = *((unsigned int *)t74);
    t76 = (~(t75));
    t77 = *((unsigned int *)t42);
    t78 = (t77 & t76);
    t79 = (t78 & 1U);
    if (t79 != 0)
        goto LAB28;

LAB29:    if (*((unsigned int *)t74) != 0)
        goto LAB30;

LAB31:    t81 = (t4 + 4);
    t82 = *((unsigned int *)t4);
    t83 = *((unsigned int *)t81);
    t84 = (t82 || t83);
    if (t84 > 0)
        goto LAB32;

LAB33:    t87 = *((unsigned int *)t4);
    t88 = (~(t87));
    t89 = *((unsigned int *)t81);
    t90 = (t88 || t89);
    if (t90 > 0)
        goto LAB34;

LAB35:    if (*((unsigned int *)t81) > 0)
        goto LAB36;

LAB37:    if (*((unsigned int *)t4) > 0)
        goto LAB38;

LAB39:    memcpy(t3, t91, 8);

LAB40:    t85 = (t0 + 3492);
    t92 = (t85 + 32U);
    t93 = *((char **)t92);
    t94 = (t93 + 40U);
    t95 = *((char **)t94);
    memcpy(t95, t3, 8);
    xsi_driver_vfirst_trans(t85, 0, 31);
    t96 = (t0 + 3380);
    *((int *)t96) = 1;

LAB1:    return;
LAB5:    t12 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB7;

LAB9:    *((unsigned int *)t13) = 1;
    goto LAB12;

LAB11:    t20 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t20) = 1;
    goto LAB12;

LAB13:    t26 = ((char*)((ng1)));
    t27 = ((char*)((ng1)));
    t28 = (t0 + 1060U);
    t29 = *((char **)t28);
    xsi_vlogtype_concat(t25, 32, 32, 3U, t29, 30, t27, 1, t26, 1);
    t28 = ((char*)((ng3)));
    memset(t30, 0, 8);
    t31 = (t25 + 4);
    if (*((unsigned int *)t31) != 0)
        goto LAB17;

LAB16:    t32 = (t28 + 4);
    if (*((unsigned int *)t32) != 0)
        goto LAB17;

LAB20:    if (*((unsigned int *)t25) > *((unsigned int *)t28))
        goto LAB19;

LAB18:    *((unsigned int *)t30) = 1;

LAB19:    memset(t34, 0, 8);
    t35 = (t30 + 4);
    t36 = *((unsigned int *)t35);
    t37 = (~(t36));
    t38 = *((unsigned int *)t30);
    t39 = (t38 & t37);
    t40 = (t39 & 1U);
    if (t40 != 0)
        goto LAB21;

LAB22:    if (*((unsigned int *)t35) != 0)
        goto LAB23;

LAB24:    t43 = *((unsigned int *)t13);
    t44 = *((unsigned int *)t34);
    t45 = (t43 & t44);
    *((unsigned int *)t42) = t45;
    t46 = (t13 + 4);
    t47 = (t34 + 4);
    t48 = (t42 + 4);
    t49 = *((unsigned int *)t46);
    t50 = *((unsigned int *)t47);
    t51 = (t49 | t50);
    *((unsigned int *)t48) = t51;
    t52 = *((unsigned int *)t48);
    t53 = (t52 != 0);
    if (t53 == 1)
        goto LAB25;

LAB26:
LAB27:    goto LAB15;

LAB17:    t33 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t33) = 1;
    goto LAB19;

LAB21:    *((unsigned int *)t34) = 1;
    goto LAB24;

LAB23:    t41 = (t34 + 4);
    *((unsigned int *)t34) = 1;
    *((unsigned int *)t41) = 1;
    goto LAB24;

LAB25:    t54 = *((unsigned int *)t42);
    t55 = *((unsigned int *)t48);
    *((unsigned int *)t42) = (t54 | t55);
    t56 = (t13 + 4);
    t57 = (t34 + 4);
    t58 = *((unsigned int *)t13);
    t59 = (~(t58));
    t60 = *((unsigned int *)t56);
    t61 = (~(t60));
    t62 = *((unsigned int *)t34);
    t63 = (~(t62));
    t64 = *((unsigned int *)t57);
    t65 = (~(t64));
    t66 = (t59 & t61);
    t67 = (t63 & t65);
    t68 = (~(t66));
    t69 = (~(t67));
    t70 = *((unsigned int *)t48);
    *((unsigned int *)t48) = (t70 & t68);
    t71 = *((unsigned int *)t48);
    *((unsigned int *)t48) = (t71 & t69);
    t72 = *((unsigned int *)t42);
    *((unsigned int *)t42) = (t72 & t68);
    t73 = *((unsigned int *)t42);
    *((unsigned int *)t42) = (t73 & t69);
    goto LAB27;

LAB28:    *((unsigned int *)t4) = 1;
    goto LAB31;

LAB30:    t80 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t80) = 1;
    goto LAB31;

LAB32:    t85 = (t0 + 692U);
    t86 = *((char **)t85);
    goto LAB33;

LAB34:    t85 = (t0 + 784U);
    t91 = *((char **)t85);
    goto LAB35;

LAB36:    xsi_vlog_unsigned_bit_combine(t3, 32, t86, 32, t91, 32);
    goto LAB40;

LAB38:    memcpy(t3, t86, 8);
    goto LAB40;

}

static void Cont_43_2(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;

LAB0:    t1 = (t0 + 2744U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1060U);
    t4 = *((char **)t2);
    memset(t3, 0, 8);
    t2 = (t3 + 4);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 0);
    *((unsigned int *)t3) = t7;
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 0);
    *((unsigned int *)t2) = t9;
    t10 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t10 & 3U);
    t11 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t11 & 3U);
    t12 = (t0 + 3528);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    memset(t16, 0, 8);
    t17 = 3U;
    t18 = t17;
    t19 = (t3 + 4);
    t20 = *((unsigned int *)t3);
    t17 = (t17 & t20);
    t21 = *((unsigned int *)t19);
    t18 = (t18 & t21);
    t22 = (t16 + 4);
    t23 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t23 | t17);
    t24 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t24 | t18);
    xsi_driver_vfirst_trans(t12, 0, 1);
    t25 = (t0 + 3388);
    *((int *)t25) = 1;

LAB1:    return;
}

static void Cont_45_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;

LAB0:    t1 = (t0 + 2888U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1244U);
    t3 = *((char **)t2);
    t2 = (t0 + 3564);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 15U;
    t9 = t8;
    t10 = (t3 + 4);
    t11 = *((unsigned int *)t3);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t2, 0, 3);
    t16 = (t0 + 3396);
    *((int *)t16) = 1;

LAB1:    return;
}

static void Cont_47_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;

LAB0:    t1 = (t0 + 3032U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1428U);
    t3 = *((char **)t2);
    t2 = (t0 + 3600);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t3 + 4);
    t11 = *((unsigned int *)t3);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t2, 0, 0);
    t16 = (t0 + 3404);
    *((int *)t16) = 1;

LAB1:    return;
}

static void Cont_49_5(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;

LAB0:    t1 = (t0 + 3176U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1520U);
    t4 = *((char **)t2);
    t2 = (t0 + 1612U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng1)));
    xsi_vlogtype_concat(t3, 6, 6, 3U, t2, 4, t5, 1, t4, 1);
    t6 = (t0 + 3636);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memset(t10, 0, 8);
    t11 = 63U;
    t12 = t11;
    t13 = (t3 + 4);
    t14 = *((unsigned int *)t3);
    t11 = (t11 & t14);
    t15 = *((unsigned int *)t13);
    t12 = (t12 & t15);
    t16 = (t10 + 4);
    t17 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t17 | t11);
    t18 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t18 | t12);
    xsi_driver_vfirst_trans(t6, 0, 5);
    t19 = (t0 + 3412);
    *((int *)t19) = 1;

LAB1:    return;
}


extern void work_m_00000000002448255966_0156190743_init()
{
	static char *pe[] = {(void *)Cont_39_0,(void *)Cont_41_1,(void *)Cont_43_2,(void *)Cont_45_3,(void *)Cont_47_4,(void *)Cont_49_5};
	xsi_register_didat("work_m_00000000002448255966_0156190743", "isim/test_isim_beh.exe.sim/work/m_00000000002448255966_0156190743.didat");
	xsi_register_executes(pe);
}
