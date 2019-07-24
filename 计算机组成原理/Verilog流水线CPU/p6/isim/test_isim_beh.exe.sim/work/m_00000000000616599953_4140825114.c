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
static const char *ng0 = "D:/NewFolder/data/p5.2/BE.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static unsigned int ng3[] = {0U, 0U};
static int ng4[] = {2, 0};
static int ng5[] = {16, 0};
static int ng6[] = {3, 0};
static int ng7[] = {4, 0};
static int ng8[] = {24, 0};



static void Always_27_0(char *t0)
{
    char t10[8];
    char t11[8];
    char t21[8];
    char t24[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    int t9;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t22;
    char *t23;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    char *t34;

LAB0:    t1 = (t0 + 1536U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 1732);
    *((int *)t2) = 1;
    t3 = (t0 + 1564);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(27, ng0);

LAB5:    xsi_set_current_line(28, ng0);
    t4 = (t0 + 784U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t4, 32);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 32);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 32);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 32);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 32);
    if (t6 == 1)
        goto LAB15;

LAB16:
LAB17:    goto LAB2;

LAB7:    xsi_set_current_line(29, ng0);

LAB18:    xsi_set_current_line(30, ng0);
    t7 = (t0 + 692U);
    t8 = *((char **)t7);
    t7 = (t0 + 1012);
    xsi_vlogvar_wait_assign_value(t7, t8, 0, 0, 32, 0LL);
    goto LAB17;

LAB9:    xsi_set_current_line(32, ng0);

LAB19:    xsi_set_current_line(33, ng0);
    t3 = (t0 + 600U);
    t4 = *((char **)t3);

LAB20:    t3 = ((char*)((ng1)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 2, t3, 32);
    if (t9 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 32);
    if (t6 == 1)
        goto LAB23;

LAB24:
LAB25:    goto LAB17;

LAB11:    xsi_set_current_line(43, ng0);

LAB28:    xsi_set_current_line(44, ng0);
    t3 = (t0 + 600U);
    t7 = *((char **)t3);

LAB29:    t3 = ((char*)((ng1)));
    t9 = xsi_vlog_unsigned_case_compare(t7, 2, t3, 32);
    if (t9 == 1)
        goto LAB30;

LAB31:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t7, 2, t2, 32);
    if (t6 == 1)
        goto LAB32;

LAB33:
LAB34:    goto LAB17;

LAB13:    xsi_set_current_line(54, ng0);

LAB37:    xsi_set_current_line(55, ng0);
    t3 = (t0 + 600U);
    t8 = *((char **)t3);

LAB38:    t3 = ((char*)((ng1)));
    t9 = xsi_vlog_unsigned_case_compare(t8, 2, t3, 32);
    if (t9 == 1)
        goto LAB39;

LAB40:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t8, 2, t2, 32);
    if (t6 == 1)
        goto LAB41;

LAB42:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t8, 2, t2, 32);
    if (t6 == 1)
        goto LAB43;

LAB44:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t8, 2, t2, 32);
    if (t6 == 1)
        goto LAB45;

LAB46:
LAB47:    goto LAB17;

LAB15:    xsi_set_current_line(71, ng0);

LAB52:    xsi_set_current_line(72, ng0);
    t3 = (t0 + 600U);
    t12 = *((char **)t3);

LAB53:    t3 = ((char*)((ng1)));
    t9 = xsi_vlog_unsigned_case_compare(t12, 2, t3, 32);
    if (t9 == 1)
        goto LAB54;

LAB55:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t12, 2, t2, 32);
    if (t6 == 1)
        goto LAB56;

LAB57:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t12, 2, t2, 32);
    if (t6 == 1)
        goto LAB58;

LAB59:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t12, 2, t2, 32);
    if (t6 == 1)
        goto LAB60;

LAB61:
LAB62:    goto LAB17;

LAB21:    xsi_set_current_line(34, ng0);

LAB26:    xsi_set_current_line(35, ng0);
    t7 = (t0 + 692U);
    t8 = *((char **)t7);
    memset(t11, 0, 8);
    t7 = (t11 + 4);
    t12 = (t8 + 4);
    t13 = *((unsigned int *)t8);
    t14 = (t13 >> 0);
    *((unsigned int *)t11) = t14;
    t15 = *((unsigned int *)t12);
    t16 = (t15 >> 0);
    *((unsigned int *)t7) = t16;
    t17 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t17 & 65535U);
    t18 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t18 & 65535U);
    t19 = ((char*)((ng3)));
    xsi_vlogtype_concat(t10, 32, 32, 2U, t19, 16, t11, 16);
    t20 = (t0 + 1012);
    xsi_vlogvar_wait_assign_value(t20, t10, 0, 0, 32, 0LL);
    goto LAB25;

LAB23:    xsi_set_current_line(37, ng0);

LAB27:    xsi_set_current_line(38, ng0);
    t3 = (t0 + 692U);
    t7 = *((char **)t3);
    memset(t11, 0, 8);
    t3 = (t11 + 4);
    t8 = (t7 + 4);
    t13 = *((unsigned int *)t7);
    t14 = (t13 >> 16);
    *((unsigned int *)t11) = t14;
    t15 = *((unsigned int *)t8);
    t16 = (t15 >> 16);
    *((unsigned int *)t3) = t16;
    t17 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t17 & 65535U);
    t18 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t18 & 65535U);
    t12 = ((char*)((ng3)));
    xsi_vlogtype_concat(t10, 32, 32, 2U, t12, 16, t11, 16);
    t19 = (t0 + 1012);
    xsi_vlogvar_wait_assign_value(t19, t10, 0, 0, 32, 0LL);
    goto LAB25;

LAB30:    xsi_set_current_line(45, ng0);

LAB35:    xsi_set_current_line(46, ng0);
    t8 = (t0 + 692U);
    t12 = *((char **)t8);
    memset(t11, 0, 8);
    t8 = (t11 + 4);
    t19 = (t12 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (t13 >> 0);
    *((unsigned int *)t11) = t14;
    t15 = *((unsigned int *)t19);
    t16 = (t15 >> 0);
    *((unsigned int *)t8) = t16;
    t17 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t17 & 65535U);
    t18 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t18 & 65535U);
    t20 = ((char*)((ng5)));
    t22 = (t0 + 692U);
    t23 = *((char **)t22);
    memset(t24, 0, 8);
    t22 = (t24 + 4);
    t25 = (t23 + 4);
    t26 = *((unsigned int *)t23);
    t27 = (t26 >> 15);
    t28 = (t27 & 1);
    *((unsigned int *)t24) = t28;
    t29 = *((unsigned int *)t25);
    t30 = (t29 >> 15);
    t31 = (t30 & 1);
    *((unsigned int *)t22) = t31;
    xsi_vlog_mul_concat(t21, 16, 1, t20, 1U, t24, 1);
    xsi_vlogtype_concat(t10, 32, 32, 2U, t21, 16, t11, 16);
    t32 = (t0 + 1012);
    xsi_vlogvar_wait_assign_value(t32, t10, 0, 0, 32, 0LL);
    goto LAB34;

LAB32:    xsi_set_current_line(48, ng0);

LAB36:    xsi_set_current_line(49, ng0);
    t3 = (t0 + 692U);
    t8 = *((char **)t3);
    memset(t11, 0, 8);
    t3 = (t11 + 4);
    t12 = (t8 + 4);
    t13 = *((unsigned int *)t8);
    t14 = (t13 >> 16);
    *((unsigned int *)t11) = t14;
    t15 = *((unsigned int *)t12);
    t16 = (t15 >> 16);
    *((unsigned int *)t3) = t16;
    t17 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t17 & 65535U);
    t18 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t18 & 65535U);
    t19 = ((char*)((ng5)));
    t20 = (t0 + 692U);
    t22 = *((char **)t20);
    memset(t24, 0, 8);
    t20 = (t24 + 4);
    t23 = (t22 + 4);
    t26 = *((unsigned int *)t22);
    t27 = (t26 >> 31);
    t28 = (t27 & 1);
    *((unsigned int *)t24) = t28;
    t29 = *((unsigned int *)t23);
    t30 = (t29 >> 31);
    t31 = (t30 & 1);
    *((unsigned int *)t20) = t31;
    xsi_vlog_mul_concat(t21, 16, 1, t19, 1U, t24, 1);
    xsi_vlogtype_concat(t10, 32, 32, 2U, t21, 16, t11, 16);
    t25 = (t0 + 1012);
    xsi_vlogvar_wait_assign_value(t25, t10, 0, 0, 32, 0LL);
    goto LAB34;

LAB39:    xsi_set_current_line(56, ng0);

LAB48:    xsi_set_current_line(57, ng0);
    t12 = (t0 + 692U);
    t19 = *((char **)t12);
    memset(t11, 0, 8);
    t12 = (t11 + 4);
    t20 = (t19 + 4);
    t13 = *((unsigned int *)t19);
    t14 = (t13 >> 0);
    *((unsigned int *)t11) = t14;
    t15 = *((unsigned int *)t20);
    t16 = (t15 >> 0);
    *((unsigned int *)t12) = t16;
    t17 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t17 & 255U);
    t18 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t18 & 255U);
    t22 = ((char*)((ng3)));
    xsi_vlogtype_concat(t10, 32, 32, 2U, t22, 24, t11, 8);
    t23 = (t0 + 1012);
    xsi_vlogvar_wait_assign_value(t23, t10, 0, 0, 32, 0LL);
    goto LAB47;

LAB41:    xsi_set_current_line(59, ng0);

LAB49:    xsi_set_current_line(60, ng0);
    t3 = (t0 + 692U);
    t12 = *((char **)t3);
    memset(t11, 0, 8);
    t3 = (t11 + 4);
    t19 = (t12 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (t13 >> 8);
    *((unsigned int *)t11) = t14;
    t15 = *((unsigned int *)t19);
    t16 = (t15 >> 8);
    *((unsigned int *)t3) = t16;
    t17 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t17 & 255U);
    t18 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t18 & 255U);
    t20 = ((char*)((ng3)));
    xsi_vlogtype_concat(t10, 32, 32, 2U, t20, 24, t11, 8);
    t22 = (t0 + 1012);
    xsi_vlogvar_wait_assign_value(t22, t10, 0, 0, 32, 0LL);
    goto LAB47;

LAB43:    xsi_set_current_line(62, ng0);

LAB50:    xsi_set_current_line(63, ng0);
    t3 = (t0 + 692U);
    t12 = *((char **)t3);
    memset(t11, 0, 8);
    t3 = (t11 + 4);
    t19 = (t12 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (t13 >> 16);
    *((unsigned int *)t11) = t14;
    t15 = *((unsigned int *)t19);
    t16 = (t15 >> 16);
    *((unsigned int *)t3) = t16;
    t17 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t17 & 255U);
    t18 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t18 & 255U);
    t20 = ((char*)((ng3)));
    xsi_vlogtype_concat(t10, 32, 32, 2U, t20, 24, t11, 8);
    t22 = (t0 + 1012);
    xsi_vlogvar_wait_assign_value(t22, t10, 0, 0, 32, 0LL);
    goto LAB47;

LAB45:    xsi_set_current_line(65, ng0);

LAB51:    xsi_set_current_line(66, ng0);
    t3 = (t0 + 692U);
    t12 = *((char **)t3);
    memset(t11, 0, 8);
    t3 = (t11 + 4);
    t19 = (t12 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (t13 >> 24);
    *((unsigned int *)t11) = t14;
    t15 = *((unsigned int *)t19);
    t16 = (t15 >> 24);
    *((unsigned int *)t3) = t16;
    t17 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t17 & 255U);
    t18 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t18 & 255U);
    t20 = ((char*)((ng3)));
    xsi_vlogtype_concat(t10, 32, 32, 2U, t20, 24, t11, 8);
    t22 = (t0 + 1012);
    xsi_vlogvar_wait_assign_value(t22, t10, 0, 0, 32, 0LL);
    goto LAB47;

LAB54:    xsi_set_current_line(73, ng0);

LAB63:    xsi_set_current_line(74, ng0);
    t19 = (t0 + 692U);
    t20 = *((char **)t19);
    memset(t11, 0, 8);
    t19 = (t11 + 4);
    t22 = (t20 + 4);
    t13 = *((unsigned int *)t20);
    t14 = (t13 >> 0);
    *((unsigned int *)t11) = t14;
    t15 = *((unsigned int *)t22);
    t16 = (t15 >> 0);
    *((unsigned int *)t19) = t16;
    t17 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t17 & 255U);
    t18 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t18 & 255U);
    t23 = ((char*)((ng8)));
    t25 = (t0 + 692U);
    t32 = *((char **)t25);
    memset(t24, 0, 8);
    t25 = (t24 + 4);
    t33 = (t32 + 4);
    t26 = *((unsigned int *)t32);
    t27 = (t26 >> 7);
    t28 = (t27 & 1);
    *((unsigned int *)t24) = t28;
    t29 = *((unsigned int *)t33);
    t30 = (t29 >> 7);
    t31 = (t30 & 1);
    *((unsigned int *)t25) = t31;
    xsi_vlog_mul_concat(t21, 24, 1, t23, 1U, t24, 1);
    xsi_vlogtype_concat(t10, 32, 32, 2U, t21, 24, t11, 8);
    t34 = (t0 + 1012);
    xsi_vlogvar_wait_assign_value(t34, t10, 0, 0, 32, 0LL);
    goto LAB62;

LAB56:    xsi_set_current_line(76, ng0);

LAB64:    xsi_set_current_line(77, ng0);
    t3 = (t0 + 692U);
    t19 = *((char **)t3);
    memset(t11, 0, 8);
    t3 = (t11 + 4);
    t20 = (t19 + 4);
    t13 = *((unsigned int *)t19);
    t14 = (t13 >> 8);
    *((unsigned int *)t11) = t14;
    t15 = *((unsigned int *)t20);
    t16 = (t15 >> 8);
    *((unsigned int *)t3) = t16;
    t17 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t17 & 255U);
    t18 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t18 & 255U);
    t22 = ((char*)((ng8)));
    t23 = (t0 + 692U);
    t25 = *((char **)t23);
    memset(t24, 0, 8);
    t23 = (t24 + 4);
    t32 = (t25 + 4);
    t26 = *((unsigned int *)t25);
    t27 = (t26 >> 15);
    t28 = (t27 & 1);
    *((unsigned int *)t24) = t28;
    t29 = *((unsigned int *)t32);
    t30 = (t29 >> 15);
    t31 = (t30 & 1);
    *((unsigned int *)t23) = t31;
    xsi_vlog_mul_concat(t21, 24, 1, t22, 1U, t24, 1);
    xsi_vlogtype_concat(t10, 32, 32, 2U, t21, 24, t11, 8);
    t33 = (t0 + 1012);
    xsi_vlogvar_wait_assign_value(t33, t10, 0, 0, 32, 0LL);
    goto LAB62;

LAB58:    xsi_set_current_line(79, ng0);

LAB65:    xsi_set_current_line(80, ng0);
    t3 = (t0 + 692U);
    t19 = *((char **)t3);
    memset(t11, 0, 8);
    t3 = (t11 + 4);
    t20 = (t19 + 4);
    t13 = *((unsigned int *)t19);
    t14 = (t13 >> 16);
    *((unsigned int *)t11) = t14;
    t15 = *((unsigned int *)t20);
    t16 = (t15 >> 16);
    *((unsigned int *)t3) = t16;
    t17 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t17 & 255U);
    t18 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t18 & 255U);
    t22 = ((char*)((ng8)));
    t23 = (t0 + 692U);
    t25 = *((char **)t23);
    memset(t24, 0, 8);
    t23 = (t24 + 4);
    t32 = (t25 + 4);
    t26 = *((unsigned int *)t25);
    t27 = (t26 >> 23);
    t28 = (t27 & 1);
    *((unsigned int *)t24) = t28;
    t29 = *((unsigned int *)t32);
    t30 = (t29 >> 23);
    t31 = (t30 & 1);
    *((unsigned int *)t23) = t31;
    xsi_vlog_mul_concat(t21, 24, 1, t22, 1U, t24, 1);
    xsi_vlogtype_concat(t10, 32, 32, 2U, t21, 24, t11, 8);
    t33 = (t0 + 1012);
    xsi_vlogvar_wait_assign_value(t33, t10, 0, 0, 32, 0LL);
    goto LAB62;

LAB60:    xsi_set_current_line(82, ng0);

LAB66:    xsi_set_current_line(83, ng0);
    t3 = (t0 + 692U);
    t19 = *((char **)t3);
    memset(t11, 0, 8);
    t3 = (t11 + 4);
    t20 = (t19 + 4);
    t13 = *((unsigned int *)t19);
    t14 = (t13 >> 24);
    *((unsigned int *)t11) = t14;
    t15 = *((unsigned int *)t20);
    t16 = (t15 >> 24);
    *((unsigned int *)t3) = t16;
    t17 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t17 & 255U);
    t18 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t18 & 255U);
    t22 = ((char*)((ng8)));
    t23 = (t0 + 692U);
    t25 = *((char **)t23);
    memset(t24, 0, 8);
    t23 = (t24 + 4);
    t32 = (t25 + 4);
    t26 = *((unsigned int *)t25);
    t27 = (t26 >> 31);
    t28 = (t27 & 1);
    *((unsigned int *)t24) = t28;
    t29 = *((unsigned int *)t32);
    t30 = (t29 >> 31);
    t31 = (t30 & 1);
    *((unsigned int *)t23) = t31;
    xsi_vlog_mul_concat(t21, 24, 1, t22, 1U, t24, 1);
    xsi_vlogtype_concat(t10, 32, 32, 2U, t21, 24, t11, 8);
    t33 = (t0 + 1012);
    xsi_vlogvar_wait_assign_value(t33, t10, 0, 0, 32, 0LL);
    goto LAB62;

}


extern void work_m_00000000000616599953_4140825114_init()
{
	static char *pe[] = {(void *)Always_27_0};
	xsi_register_didat("work_m_00000000000616599953_4140825114", "isim/test_isim_beh.exe.sim/work/m_00000000000616599953_4140825114.didat");
	xsi_register_executes(pe);
}
