/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2007 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

/* This file is designed for use with ISim build 0x734844ce */

#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Documents and Settings/student/EE533-lab2/EE533verilog/ALU.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static int ng3[] = {1, 0};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {3U, 0U};



static void A35_0(char *t0)
{
    char t6[8];
    char t7[8];
    char t23[8];
    char t30[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    int t37;
    int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;

LAB0:    t1 = (t0 + 1880U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 2060);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(35, ng0);

LAB5:    xsi_set_current_line(36, ng0);
    t3 = (t0 + 828U);
    t4 = *((char **)t3);

LAB6:    t3 = ((char*)((ng1)));
    t5 = xsi_vlog_unsigned_case_compare(t4, 2, t3, 2);
    if (t5 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t5 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t5 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng4)));
    t5 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t5 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng5)));
    t5 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t5 == 1)
        goto LAB13;

LAB14:
LAB16:
LAB15:    xsi_set_current_line(41, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1404);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB17:    goto LAB2;

LAB7:    xsi_set_current_line(37, ng0);
    t8 = (t0 + 916U);
    t9 = *((char **)t8);
    memset(t7, 0, 8);
    t8 = (t7 + 4U);
    t10 = (t9 + 4U);
    t11 = *((unsigned int *)t10);
    t12 = (~(t11));
    t13 = *((unsigned int *)t9);
    t14 = (t13 & t12);
    t15 = (t14 & 1U);
    if (t15 != 0)
        goto LAB18;

LAB19:    if (*((unsigned int *)t10) != 0)
        goto LAB20;

LAB21:    t16 = (t7 + 4U);
    t17 = *((unsigned int *)t7);
    t18 = *((unsigned int *)t16);
    t19 = (t17 || t18);
    if (t19 > 0)
        goto LAB22;

LAB23:    t24 = *((unsigned int *)t7);
    t25 = (~(t24));
    t26 = *((unsigned int *)t16);
    t27 = (t25 || t26);
    if (t27 > 0)
        goto LAB24;

LAB25:    if (*((unsigned int *)t16) > 0)
        goto LAB26;

LAB27:    if (*((unsigned int *)t7) > 0)
        goto LAB28;

LAB29:    memcpy(t6, t30, 8);

LAB30:    t20 = (t0 + 1404);
    xsi_vlogvar_assign_value(t20, t6, 0, 0, 32);
    goto LAB17;

LAB9:    xsi_set_current_line(38, ng0);
    t3 = (t0 + 1004U);
    t8 = *((char **)t3);
    memset(t7, 0, 8);
    t3 = (t7 + 4U);
    t9 = (t8 + 4U);
    t11 = *((unsigned int *)t9);
    t12 = (~(t11));
    t13 = *((unsigned int *)t8);
    t14 = (t13 & t12);
    t15 = (t14 & 1U);
    if (t15 != 0)
        goto LAB31;

LAB32:    if (*((unsigned int *)t9) != 0)
        goto LAB33;

LAB34:    t10 = (t7 + 4U);
    t17 = *((unsigned int *)t7);
    t18 = *((unsigned int *)t10);
    t19 = (t17 || t18);
    if (t19 > 0)
        goto LAB35;

LAB36:    t24 = *((unsigned int *)t7);
    t25 = (~(t24));
    t26 = *((unsigned int *)t10);
    t27 = (t25 || t26);
    if (t27 > 0)
        goto LAB37;

LAB38:    if (*((unsigned int *)t10) > 0)
        goto LAB39;

LAB40:    if (*((unsigned int *)t7) > 0)
        goto LAB41;

LAB42:    memcpy(t6, t30, 8);

LAB43:    t28 = (t0 + 1404);
    xsi_vlogvar_assign_value(t28, t6, 0, 0, 32);
    goto LAB17;

LAB11:    xsi_set_current_line(39, ng0);
    t3 = (t0 + 1092U);
    t8 = *((char **)t3);
    t3 = (t0 + 1180U);
    t9 = *((char **)t3);
    t11 = *((unsigned int *)t8);
    t12 = *((unsigned int *)t9);
    t13 = (t11 & t12);
    *((unsigned int *)t6) = t13;
    t3 = (t8 + 4U);
    t10 = (t9 + 4U);
    t16 = (t6 + 4U);
    t14 = *((unsigned int *)t3);
    t15 = *((unsigned int *)t10);
    t17 = (t14 | t15);
    *((unsigned int *)t16) = t17;
    t18 = *((unsigned int *)t16);
    t19 = (t18 != 0);
    if (t19 == 1)
        goto LAB44;

LAB45:
LAB46:    t22 = (t0 + 1404);
    xsi_vlogvar_assign_value(t22, t6, 0, 0, 32);
    goto LAB17;

LAB13:    xsi_set_current_line(40, ng0);
    t3 = (t0 + 1092U);
    t8 = *((char **)t3);
    t3 = (t0 + 1180U);
    t9 = *((char **)t3);
    t11 = *((unsigned int *)t8);
    t12 = *((unsigned int *)t9);
    t13 = (t11 | t12);
    *((unsigned int *)t6) = t13;
    t3 = (t8 + 4U);
    t10 = (t9 + 4U);
    t16 = (t6 + 4U);
    t14 = *((unsigned int *)t3);
    t15 = *((unsigned int *)t10);
    t17 = (t14 | t15);
    *((unsigned int *)t16) = t17;
    t18 = *((unsigned int *)t16);
    t19 = (t18 != 0);
    if (t19 == 1)
        goto LAB47;

LAB48:
LAB49:    t22 = (t0 + 1404);
    xsi_vlogvar_assign_value(t22, t6, 0, 0, 32);
    goto LAB17;

LAB18:    *((unsigned int *)t7) = 1;
    goto LAB21;

LAB20:    *((unsigned int *)t7) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB21;

LAB22:    t20 = (t0 + 1092U);
    t21 = *((char **)t20);
    t20 = (t0 + 1180U);
    t22 = *((char **)t20);
    memset(t23, 0, 8);
    xsi_vlog_unsigned_minus(t23, 32, t21, 32, t22, 32);
    goto LAB23;

LAB24:    t20 = (t0 + 1092U);
    t28 = *((char **)t20);
    t20 = (t0 + 1180U);
    t29 = *((char **)t20);
    memset(t30, 0, 8);
    xsi_vlog_unsigned_add(t30, 32, t28, 32, t29, 32);
    goto LAB25;

LAB26:    xsi_vlog_unsigned_bit_combine(t6, 32, t23, 32, t30, 32);
    goto LAB30;

LAB28:    memcpy(t6, t23, 8);
    goto LAB30;

LAB31:    *((unsigned int *)t7) = 1;
    goto LAB34;

LAB33:    *((unsigned int *)t7) = 1;
    *((unsigned int *)t3) = 1;
    goto LAB34;

LAB35:    t16 = (t0 + 1092U);
    t20 = *((char **)t16);
    t16 = ((char*)((ng3)));
    memset(t23, 0, 8);
    xsi_vlog_unsigned_rshift(t23, 32, t20, 32, t16, 32);
    goto LAB36;

LAB37:    t21 = (t0 + 1092U);
    t22 = *((char **)t21);
    t21 = ((char*)((ng3)));
    memset(t30, 0, 8);
    xsi_vlog_unsigned_lshift(t30, 32, t22, 32, t21, 32);
    goto LAB38;

LAB39:    xsi_vlog_unsigned_bit_combine(t6, 32, t23, 32, t30, 32);
    goto LAB43;

LAB41:    memcpy(t6, t23, 8);
    goto LAB43;

LAB44:    t24 = *((unsigned int *)t6);
    t25 = *((unsigned int *)t16);
    *((unsigned int *)t6) = (t24 | t25);
    t20 = (t8 + 4U);
    t21 = (t9 + 4U);
    t26 = *((unsigned int *)t8);
    t27 = (~(t26));
    t31 = *((unsigned int *)t20);
    t32 = (~(t31));
    t33 = *((unsigned int *)t9);
    t34 = (~(t33));
    t35 = *((unsigned int *)t21);
    t36 = (~(t35));
    t37 = (t27 & t32);
    t38 = (t34 & t36);
    t39 = (~(t37));
    t40 = (~(t38));
    t41 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t41 & t39);
    t42 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t42 & t40);
    t43 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t43 & t39);
    t44 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t44 & t40);
    goto LAB46;

LAB47:    t24 = *((unsigned int *)t6);
    t25 = *((unsigned int *)t16);
    *((unsigned int *)t6) = (t24 | t25);
    t20 = (t8 + 4U);
    t21 = (t9 + 4U);
    t26 = *((unsigned int *)t20);
    t27 = (~(t26));
    t31 = *((unsigned int *)t8);
    t37 = (t31 & t27);
    t32 = *((unsigned int *)t21);
    t33 = (~(t32));
    t34 = *((unsigned int *)t9);
    t38 = (t34 & t33);
    t35 = (~(t37));
    t36 = (~(t38));
    t39 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t39 & t35);
    t40 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t40 & t36);
    goto LAB49;

}


extern void work_m_00000000001638671284_2986682425_init()
{
	static char *pe[] = {(void *)A35_0};
	xsi_register_didat("work_m_00000000001638671284_2986682425", "isim/_tmp/work/m_00000000001638671284_2986682425.didat");
	xsi_register_executes(pe);
}
