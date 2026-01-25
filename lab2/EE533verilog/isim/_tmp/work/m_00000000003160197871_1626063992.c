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
static const char *ng0 = "C:/Documents and Settings/student/EE533-lab2/EE533verilog/tb_ALU.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static int ng3[] = {1, 0};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {3U, 0U};
static const char *ng6 = "? FAIL | OP=%b A=%h B=%h | Result=%h Exp=%h";
static const char *ng7 = "? PASS | OP=%b A=%h B=%h | Result=%h";
static int ng8[] = {0, 0};
static unsigned int ng9[] = {10U, 0U};
static unsigned int ng10[] = {4294967280U, 0U};
static unsigned int ng11[] = {1073741824U, 0U};
static unsigned int ng12[] = {2147483648U, 0U};
static unsigned int ng13[] = {4278255360U, 0U};
static unsigned int ng14[] = {252645135U, 0U};
static unsigned int ng15[] = {2863311530U, 0U};
static unsigned int ng16[] = {1431655765U, 0U};
static unsigned int ng17[] = {4278190080U, 0U};
static unsigned int ng18[] = {16711680U, 0U};
static unsigned int ng19[] = {4294967295U, 0U};
static const char *ng20 = "?? All tests finished.";



static int sp_calc_exp(char *t1, char *t2)
{
    char t8[8];
    char t9[8];
    char t30[8];
    char t41[8];
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int t7;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    int t49;
    int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;

LAB0:    t0 = 1;
    xsi_set_current_line(65, ng0);

LAB2:    xsi_set_current_line(66, ng0);
    t3 = (t1 + 2188);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);

LAB3:    t6 = ((char*)((ng1)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 2, t6, 2);
    if (t7 == 1)
        goto LAB4;

LAB5:    t3 = ((char*)((ng2)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 2, t3, 2);
    if (t7 == 1)
        goto LAB6;

LAB7:    t3 = ((char*)((ng4)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 2, t3, 2);
    if (t7 == 1)
        goto LAB8;

LAB9:    t3 = ((char*)((ng5)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 2, t3, 2);
    if (t7 == 1)
        goto LAB10;

LAB11:
LAB13:
LAB12:    xsi_set_current_line(71, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t1 + 2096);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 32);

LAB14:    t0 = 0;

LAB1:    return t0;
LAB4:    xsi_set_current_line(67, ng0);
    t10 = (t1 + 2280);
    t11 = (t10 + 32U);
    t12 = *((char **)t11);
    memset(t9, 0, 8);
    t13 = (t9 + 4U);
    t14 = (t12 + 4U);
    t15 = *((unsigned int *)t14);
    t16 = (~(t15));
    t17 = *((unsigned int *)t12);
    t18 = (t17 & t16);
    t19 = (t18 & 1U);
    if (t19 != 0)
        goto LAB15;

LAB16:    if (*((unsigned int *)t14) != 0)
        goto LAB17;

LAB18:    t20 = (t9 + 4U);
    t21 = *((unsigned int *)t9);
    t22 = *((unsigned int *)t20);
    t23 = (t21 || t22);
    if (t23 > 0)
        goto LAB19;

LAB20:    t31 = *((unsigned int *)t9);
    t32 = (~(t31));
    t33 = *((unsigned int *)t20);
    t34 = (t32 || t33);
    if (t34 > 0)
        goto LAB21;

LAB22:    if (*((unsigned int *)t20) > 0)
        goto LAB23;

LAB24:    if (*((unsigned int *)t9) > 0)
        goto LAB25;

LAB26:    memcpy(t8, t41, 8);

LAB27:    t42 = (t1 + 2096);
    xsi_vlogvar_assign_value(t42, t8, 0, 0, 32);
    goto LAB14;

LAB6:    xsi_set_current_line(68, ng0);
    t4 = (t1 + 2372);
    t6 = (t4 + 32U);
    t10 = *((char **)t6);
    memset(t9, 0, 8);
    t11 = (t9 + 4U);
    t12 = (t10 + 4U);
    t15 = *((unsigned int *)t12);
    t16 = (~(t15));
    t17 = *((unsigned int *)t10);
    t18 = (t17 & t16);
    t19 = (t18 & 1U);
    if (t19 != 0)
        goto LAB28;

LAB29:    if (*((unsigned int *)t12) != 0)
        goto LAB30;

LAB31:    t13 = (t9 + 4U);
    t21 = *((unsigned int *)t9);
    t22 = *((unsigned int *)t13);
    t23 = (t21 || t22);
    if (t23 > 0)
        goto LAB32;

LAB33:    t31 = *((unsigned int *)t9);
    t32 = (~(t31));
    t33 = *((unsigned int *)t13);
    t34 = (t32 || t33);
    if (t34 > 0)
        goto LAB34;

LAB35:    if (*((unsigned int *)t13) > 0)
        goto LAB36;

LAB37:    if (*((unsigned int *)t9) > 0)
        goto LAB38;

LAB39:    memcpy(t8, t41, 8);

LAB40:    t35 = (t1 + 2096);
    xsi_vlogvar_assign_value(t35, t8, 0, 0, 32);
    goto LAB14;

LAB8:    xsi_set_current_line(69, ng0);
    t4 = (t1 + 2464);
    t6 = (t4 + 32U);
    t10 = *((char **)t6);
    t11 = (t1 + 2556);
    t12 = (t11 + 32U);
    t13 = *((char **)t12);
    t15 = *((unsigned int *)t10);
    t16 = *((unsigned int *)t13);
    t17 = (t15 & t16);
    *((unsigned int *)t8) = t17;
    t14 = (t10 + 4U);
    t20 = (t13 + 4U);
    t24 = (t8 + 4U);
    t18 = *((unsigned int *)t14);
    t19 = *((unsigned int *)t20);
    t21 = (t18 | t19);
    *((unsigned int *)t24) = t21;
    t22 = *((unsigned int *)t24);
    t23 = (t22 != 0);
    if (t23 == 1)
        goto LAB41;

LAB42:
LAB43:    t27 = (t1 + 2096);
    xsi_vlogvar_assign_value(t27, t8, 0, 0, 32);
    goto LAB14;

LAB10:    xsi_set_current_line(70, ng0);
    t4 = (t1 + 2464);
    t6 = (t4 + 32U);
    t10 = *((char **)t6);
    t11 = (t1 + 2556);
    t12 = (t11 + 32U);
    t13 = *((char **)t12);
    t15 = *((unsigned int *)t10);
    t16 = *((unsigned int *)t13);
    t17 = (t15 | t16);
    *((unsigned int *)t8) = t17;
    t14 = (t10 + 4U);
    t20 = (t13 + 4U);
    t24 = (t8 + 4U);
    t18 = *((unsigned int *)t14);
    t19 = *((unsigned int *)t20);
    t21 = (t18 | t19);
    *((unsigned int *)t24) = t21;
    t22 = *((unsigned int *)t24);
    t23 = (t22 != 0);
    if (t23 == 1)
        goto LAB44;

LAB45:
LAB46:    t27 = (t1 + 2096);
    xsi_vlogvar_assign_value(t27, t8, 0, 0, 32);
    goto LAB14;

LAB15:    *((unsigned int *)t9) = 1;
    goto LAB18;

LAB17:    *((unsigned int *)t9) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB18;

LAB19:    t24 = (t1 + 2464);
    t25 = (t24 + 32U);
    t26 = *((char **)t25);
    t27 = (t1 + 2556);
    t28 = (t27 + 32U);
    t29 = *((char **)t28);
    memset(t30, 0, 8);
    xsi_vlog_unsigned_minus(t30, 32, t26, 32, t29, 32);
    goto LAB20;

LAB21:    t35 = (t1 + 2464);
    t36 = (t35 + 32U);
    t37 = *((char **)t36);
    t38 = (t1 + 2556);
    t39 = (t38 + 32U);
    t40 = *((char **)t39);
    memset(t41, 0, 8);
    xsi_vlog_unsigned_add(t41, 32, t37, 32, t40, 32);
    goto LAB22;

LAB23:    xsi_vlog_unsigned_bit_combine(t8, 32, t30, 32, t41, 32);
    goto LAB27;

LAB25:    memcpy(t8, t30, 8);
    goto LAB27;

LAB28:    *((unsigned int *)t9) = 1;
    goto LAB31;

LAB30:    *((unsigned int *)t9) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB31;

LAB32:    t14 = (t1 + 2464);
    t20 = (t14 + 32U);
    t24 = *((char **)t20);
    t25 = ((char*)((ng3)));
    memset(t30, 0, 8);
    xsi_vlog_unsigned_rshift(t30, 32, t24, 32, t25, 32);
    goto LAB33;

LAB34:    t26 = (t1 + 2464);
    t27 = (t26 + 32U);
    t28 = *((char **)t27);
    t29 = ((char*)((ng3)));
    memset(t41, 0, 8);
    xsi_vlog_unsigned_lshift(t41, 32, t28, 32, t29, 32);
    goto LAB35;

LAB36:    xsi_vlog_unsigned_bit_combine(t8, 32, t30, 32, t41, 32);
    goto LAB40;

LAB38:    memcpy(t8, t30, 8);
    goto LAB40;

LAB41:    t31 = *((unsigned int *)t8);
    t32 = *((unsigned int *)t24);
    *((unsigned int *)t8) = (t31 | t32);
    t25 = (t10 + 4U);
    t26 = (t13 + 4U);
    t33 = *((unsigned int *)t10);
    t34 = (~(t33));
    t43 = *((unsigned int *)t25);
    t44 = (~(t43));
    t45 = *((unsigned int *)t13);
    t46 = (~(t45));
    t47 = *((unsigned int *)t26);
    t48 = (~(t47));
    t49 = (t34 & t44);
    t50 = (t46 & t48);
    t51 = (~(t49));
    t52 = (~(t50));
    t53 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t53 & t51);
    t54 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t54 & t52);
    t55 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t55 & t51);
    t56 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t56 & t52);
    goto LAB43;

LAB44:    t31 = *((unsigned int *)t8);
    t32 = *((unsigned int *)t24);
    *((unsigned int *)t8) = (t31 | t32);
    t25 = (t10 + 4U);
    t26 = (t13 + 4U);
    t33 = *((unsigned int *)t25);
    t34 = (~(t33));
    t43 = *((unsigned int *)t10);
    t49 = (t43 & t34);
    t44 = *((unsigned int *)t26);
    t45 = (~(t44));
    t46 = *((unsigned int *)t13);
    t50 = (t46 & t45);
    t47 = (~(t49));
    t48 = (~(t50));
    t51 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t51 & t47);
    t52 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t52 & t48);
    goto LAB46;

}

static int sp_check(char *t1, char *t2)
{
    char t41[8];
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    int t37;
    char *t38;
    char *t39;
    char *t40;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;

LAB0:    t0 = 1;
    t3 = (t2 + 24U);
    t4 = *((char **)t3);
    if (t4 == 0)
        goto LAB2;

LAB3:    goto *t4;

LAB2:    t4 = (t1 + 696);
    xsi_vlog_subprogram_setdisablestate(t4, &&LAB4);
    xsi_set_current_line(80, ng0);

LAB5:    xsi_set_current_line(81, ng0);
    t5 = (t1 + 1544);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t1 + 1636);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t11 = (t1 + 1728);
    t12 = (t11 + 32U);
    t13 = *((char **)t12);
    t14 = (t1 + 1820);
    t15 = (t14 + 32U);
    t16 = *((char **)t15);
    t17 = (t1 + 1912);
    t18 = (t17 + 32U);
    t19 = *((char **)t18);
    t20 = (t2 + 28U);
    t21 = *((char **)t20);
    t22 = (t1 + 456);
    t23 = xsi_create_subprogram_invocation(t21, 0, t1, t22, 0, t2);
    t24 = (t1 + 2188);
    xsi_vlogvar_assign_value(t24, t7, 0, 0, 2);
    t25 = (t1 + 2280);
    xsi_vlogvar_assign_value(t25, t10, 0, 0, 1);
    t26 = (t1 + 2372);
    xsi_vlogvar_assign_value(t26, t13, 0, 0, 1);
    t27 = (t1 + 2464);
    xsi_vlogvar_assign_value(t27, t16, 0, 0, 32);
    t28 = (t1 + 2556);
    xsi_vlogvar_assign_value(t28, t19, 0, 0, 32);

LAB6:    t29 = (t2 + 32U);
    t30 = *((char **)t29);
    t31 = (t30 + 40U);
    t32 = *((char **)t31);
    t33 = (t32 + 132U);
    t34 = *((char **)t33);
    t35 = (t34 + 0U);
    t36 = *((char **)t35);
    t37 = ((int  (*)(char *, char *))t36)(t1, t30);
    if (t37 != 0)
        goto LAB8;

LAB7:    t30 = (t2 + 32U);
    t38 = *((char **)t30);
    t30 = (t1 + 2096);
    t39 = (t30 + 32U);
    t40 = *((char **)t39);
    memcpy(t41, t40, 8);
    t42 = (t1 + 456);
    t43 = (t2 + 32U);
    t44 = *((char **)t43);
    t43 = (t2 + 28U);
    t45 = *((char **)t43);
    xsi_delete_subprogram_invocation(t42, t44, t1, t45, t2);
    t46 = (t1 + 2004);
    xsi_vlogvar_assign_value(t46, t41, 0, 0, 32);
    xsi_set_current_line(82, ng0);
    t4 = (t2 + 28U);
    t5 = *((char **)t4);
    xsi_process_wait(t5, 1000000LL);
    *((char **)t3) = &&LAB9;
    t0 = 1;

LAB1:    return t0;
LAB4:    xsi_vlog_dispose_subprogram_invocation(t2);
    t4 = (t2 + 24U);
    *((char **)t4) = &&LAB2;
    t0 = 0;
    goto LAB1;

LAB8:    t29 = (t2 + 24U);
    *((char **)t29) = &&LAB6;
    goto LAB1;

LAB9:    xsi_set_current_line(84, ng0);
    t4 = (t1 + 1044U);
    t5 = *((char **)t4);
    t4 = (t1 + 2004);
    t6 = (t4 + 32U);
    t7 = *((char **)t6);
    memset(t41, 0, 8);
    t8 = (t5 + 4U);
    t9 = (t7 + 4U);
    if (*((unsigned int *)t5) != *((unsigned int *)t7))
        goto LAB11;

LAB10:    if (*((unsigned int *)t8) != *((unsigned int *)t9))
        goto LAB11;

LAB12:    t10 = (t41 + 4U);
    t47 = *((unsigned int *)t10);
    t48 = (~(t47));
    t49 = *((unsigned int *)t41);
    t50 = (t49 & t48);
    t51 = (t50 != 0);
    if (t51 > 0)
        goto LAB13;

LAB14:    xsi_set_current_line(87, ng0);

LAB17:    xsi_set_current_line(88, ng0);
    t4 = (t1 + 1544);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    t7 = (t1 + 1820);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    t10 = (t1 + 1912);
    t11 = (t10 + 32U);
    t12 = *((char **)t11);
    t13 = (t1 + 1044U);
    t14 = *((char **)t13);
    xsi_vlogfile_write(1, 0, ng7, 5, t1, (char)118, t6, 2, (char)118, t9, 32, (char)118, t12, 32, (char)118, t14, 32);

LAB15:    goto LAB4;

LAB11:    *((unsigned int *)t41) = 1;
    goto LAB12;

LAB13:    xsi_set_current_line(84, ng0);

LAB16:    xsi_set_current_line(85, ng0);
    t11 = (t1 + 1544);
    t12 = (t11 + 32U);
    t13 = *((char **)t12);
    t14 = (t1 + 1820);
    t15 = (t14 + 32U);
    t16 = *((char **)t15);
    t17 = (t1 + 1912);
    t18 = (t17 + 32U);
    t19 = *((char **)t18);
    t20 = (t1 + 1044U);
    t21 = *((char **)t20);
    t20 = (t1 + 2004);
    t22 = (t20 + 32U);
    t23 = *((char **)t22);
    xsi_vlogfile_write(1, 0, ng6, 6, t1, (char)118, t13, 2, (char)118, t16, 32, (char)118, t19, 32, (char)118, t21, 32, (char)118, t23, 32);
    goto LAB15;

}

static void I97_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    t1 = (t0 + 3032U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(97, ng0);

LAB4:    xsi_set_current_line(99, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 1268);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(100, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 1360);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(101, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1452);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(102, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 1544);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(103, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 1636);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(104, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 1728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(105, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 1820);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(106, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 1912);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(108, ng0);
    t2 = (t0 + 2948);
    xsi_process_wait(t2, 5000000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(111, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1544);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(111, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 1636);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(112, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 1820);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(112, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1912);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(113, ng0);
    t2 = (t0 + 2948);
    t3 = (t0 + 696);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB7:    t5 = (t0 + 2996);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    t9 = (t8 + 132U);
    t10 = *((char **)t9);
    t11 = (t10 + 0U);
    t12 = *((char **)t11);
    t13 = ((int  (*)(char *, char *))t12)(t0, t6);
    if (t13 != 0)
        goto LAB9;

LAB8:    t6 = (t0 + 696);
    xsi_vlog_subprogram_popinvocation(t6);

LAB6:    t14 = (t0 + 2996);
    t15 = *((char **)t14);
    t14 = (t0 + 696);
    t16 = (t0 + 2996);
    t17 = *((char **)t16);
    t16 = (t0 + 2948);
    t18 = 0;
    xsi_delete_subprogram_invocation(t14, t17, t0, t16, t18);
    xsi_set_current_line(115, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 1820);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(115, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1912);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(116, ng0);
    t2 = (t0 + 2948);
    t3 = (t0 + 696);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB11:    t5 = (t0 + 2996);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    t9 = (t8 + 132U);
    t10 = *((char **)t9);
    t11 = (t10 + 0U);
    t12 = *((char **)t11);
    t13 = ((int  (*)(char *, char *))t12)(t0, t6);
    if (t13 != 0)
        goto LAB13;

LAB12:    t6 = (t0 + 696);
    xsi_vlog_subprogram_popinvocation(t6);

LAB10:    t14 = (t0 + 2996);
    t15 = *((char **)t14);
    t14 = (t0 + 696);
    t16 = (t0 + 2996);
    t17 = *((char **)t16);
    t16 = (t0 + 2948);
    t18 = 0;
    xsi_delete_subprogram_invocation(t14, t17, t0, t16, t18);
    xsi_set_current_line(119, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1544);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(119, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1636);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(120, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 1820);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(120, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1912);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(121, ng0);
    t2 = (t0 + 2948);
    t3 = (t0 + 696);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB15:    t5 = (t0 + 2996);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    t9 = (t8 + 132U);
    t10 = *((char **)t9);
    t11 = (t10 + 0U);
    t12 = *((char **)t11);
    t13 = ((int  (*)(char *, char *))t12)(t0, t6);
    if (t13 != 0)
        goto LAB17;

LAB16:    t6 = (t0 + 696);
    xsi_vlog_subprogram_popinvocation(t6);

LAB14:    t14 = (t0 + 2996);
    t15 = *((char **)t14);
    t14 = (t0 + 696);
    t16 = (t0 + 2996);
    t17 = *((char **)t16);
    t16 = (t0 + 2948);
    t18 = 0;
    xsi_delete_subprogram_invocation(t14, t17, t0, t16, t18);
    xsi_set_current_line(123, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1820);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(123, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1912);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(124, ng0);
    t2 = (t0 + 2948);
    t3 = (t0 + 696);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB19:    t5 = (t0 + 2996);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    t9 = (t8 + 132U);
    t10 = *((char **)t9);
    t11 = (t10 + 0U);
    t12 = *((char **)t11);
    t13 = ((int  (*)(char *, char *))t12)(t0, t6);
    if (t13 != 0)
        goto LAB21;

LAB20:    t6 = (t0 + 696);
    xsi_vlog_subprogram_popinvocation(t6);

LAB18:    t14 = (t0 + 2996);
    t15 = *((char **)t14);
    t14 = (t0 + 696);
    t16 = (t0 + 2996);
    t17 = *((char **)t16);
    t16 = (t0 + 2948);
    t18 = 0;
    xsi_delete_subprogram_invocation(t14, t17, t0, t16, t18);
    xsi_set_current_line(127, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1544);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(127, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 1728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(128, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1820);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(129, ng0);
    t2 = (t0 + 2948);
    t3 = (t0 + 696);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB23:    t5 = (t0 + 2996);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    t9 = (t8 + 132U);
    t10 = *((char **)t9);
    t11 = (t10 + 0U);
    t12 = *((char **)t11);
    t13 = ((int  (*)(char *, char *))t12)(t0, t6);
    if (t13 != 0)
        goto LAB25;

LAB24:    t6 = (t0 + 696);
    xsi_vlog_subprogram_popinvocation(t6);

LAB22:    t14 = (t0 + 2996);
    t15 = *((char **)t14);
    t14 = (t0 + 696);
    t16 = (t0 + 2996);
    t17 = *((char **)t16);
    t16 = (t0 + 2948);
    t18 = 0;
    xsi_delete_subprogram_invocation(t14, t17, t0, t16, t18);
    xsi_set_current_line(131, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 1820);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(132, ng0);
    t2 = (t0 + 2948);
    t3 = (t0 + 696);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB27:    t5 = (t0 + 2996);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    t9 = (t8 + 132U);
    t10 = *((char **)t9);
    t11 = (t10 + 0U);
    t12 = *((char **)t11);
    t13 = ((int  (*)(char *, char *))t12)(t0, t6);
    if (t13 != 0)
        goto LAB29;

LAB28:    t6 = (t0 + 696);
    xsi_vlog_subprogram_popinvocation(t6);

LAB26:    t14 = (t0 + 2996);
    t15 = *((char **)t14);
    t14 = (t0 + 696);
    t16 = (t0 + 2996);
    t17 = *((char **)t16);
    t16 = (t0 + 2948);
    t18 = 0;
    xsi_delete_subprogram_invocation(t14, t17, t0, t16, t18);
    xsi_set_current_line(135, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1544);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(135, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(136, ng0);
    t2 = ((char*)((ng12)));
    t3 = (t0 + 1820);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(137, ng0);
    t2 = (t0 + 2948);
    t3 = (t0 + 696);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB31:    t5 = (t0 + 2996);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    t9 = (t8 + 132U);
    t10 = *((char **)t9);
    t11 = (t10 + 0U);
    t12 = *((char **)t11);
    t13 = ((int  (*)(char *, char *))t12)(t0, t6);
    if (t13 != 0)
        goto LAB33;

LAB32:    t6 = (t0 + 696);
    xsi_vlog_subprogram_popinvocation(t6);

LAB30:    t14 = (t0 + 2996);
    t15 = *((char **)t14);
    t14 = (t0 + 696);
    t16 = (t0 + 2996);
    t17 = *((char **)t16);
    t16 = (t0 + 2948);
    t18 = 0;
    xsi_delete_subprogram_invocation(t14, t17, t0, t16, t18);
    xsi_set_current_line(139, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1820);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(140, ng0);
    t2 = (t0 + 2948);
    t3 = (t0 + 696);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB35:    t5 = (t0 + 2996);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    t9 = (t8 + 132U);
    t10 = *((char **)t9);
    t11 = (t10 + 0U);
    t12 = *((char **)t11);
    t13 = ((int  (*)(char *, char *))t12)(t0, t6);
    if (t13 != 0)
        goto LAB37;

LAB36:    t6 = (t0 + 696);
    xsi_vlog_subprogram_popinvocation(t6);

LAB34:    t14 = (t0 + 2996);
    t15 = *((char **)t14);
    t14 = (t0 + 696);
    t16 = (t0 + 2996);
    t17 = *((char **)t16);
    t16 = (t0 + 2948);
    t18 = 0;
    xsi_delete_subprogram_invocation(t14, t17, t0, t16, t18);
    xsi_set_current_line(143, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1544);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(144, ng0);
    t2 = ((char*)((ng13)));
    t3 = (t0 + 1820);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(144, ng0);
    t2 = ((char*)((ng14)));
    t3 = (t0 + 1912);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(145, ng0);
    t2 = (t0 + 2948);
    t3 = (t0 + 696);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB39:    t5 = (t0 + 2996);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    t9 = (t8 + 132U);
    t10 = *((char **)t9);
    t11 = (t10 + 0U);
    t12 = *((char **)t11);
    t13 = ((int  (*)(char *, char *))t12)(t0, t6);
    if (t13 != 0)
        goto LAB41;

LAB40:    t6 = (t0 + 696);
    xsi_vlog_subprogram_popinvocation(t6);

LAB38:    t14 = (t0 + 2996);
    t15 = *((char **)t14);
    t14 = (t0 + 696);
    t16 = (t0 + 2996);
    t17 = *((char **)t16);
    t16 = (t0 + 2948);
    t18 = 0;
    xsi_delete_subprogram_invocation(t14, t17, t0, t16, t18);
    xsi_set_current_line(147, ng0);
    t2 = ((char*)((ng15)));
    t3 = (t0 + 1820);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(147, ng0);
    t2 = ((char*)((ng16)));
    t3 = (t0 + 1912);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(148, ng0);
    t2 = (t0 + 2948);
    t3 = (t0 + 696);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB43:    t5 = (t0 + 2996);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    t9 = (t8 + 132U);
    t10 = *((char **)t9);
    t11 = (t10 + 0U);
    t12 = *((char **)t11);
    t13 = ((int  (*)(char *, char *))t12)(t0, t6);
    if (t13 != 0)
        goto LAB45;

LAB44:    t6 = (t0 + 696);
    xsi_vlog_subprogram_popinvocation(t6);

LAB42:    t14 = (t0 + 2996);
    t15 = *((char **)t14);
    t14 = (t0 + 696);
    t16 = (t0 + 2996);
    t17 = *((char **)t16);
    t16 = (t0 + 2948);
    t18 = 0;
    xsi_delete_subprogram_invocation(t14, t17, t0, t16, t18);
    xsi_set_current_line(151, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1544);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(152, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 1820);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(152, ng0);
    t2 = ((char*)((ng18)));
    t3 = (t0 + 1912);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(153, ng0);
    t2 = (t0 + 2948);
    t3 = (t0 + 696);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB47:    t5 = (t0 + 2996);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    t9 = (t8 + 132U);
    t10 = *((char **)t9);
    t11 = (t10 + 0U);
    t12 = *((char **)t11);
    t13 = ((int  (*)(char *, char *))t12)(t0, t6);
    if (t13 != 0)
        goto LAB49;

LAB48:    t6 = (t0 + 696);
    xsi_vlog_subprogram_popinvocation(t6);

LAB46:    t14 = (t0 + 2996);
    t15 = *((char **)t14);
    t14 = (t0 + 696);
    t16 = (t0 + 2996);
    t17 = *((char **)t16);
    t16 = (t0 + 2948);
    t18 = 0;
    xsi_delete_subprogram_invocation(t14, t17, t0, t16, t18);
    xsi_set_current_line(155, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1820);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(155, ng0);
    t2 = ((char*)((ng19)));
    t3 = (t0 + 1912);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(156, ng0);
    t2 = (t0 + 2948);
    t3 = (t0 + 696);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB51:    t5 = (t0 + 2996);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    t9 = (t8 + 132U);
    t10 = *((char **)t9);
    t11 = (t10 + 0U);
    t12 = *((char **)t11);
    t13 = ((int  (*)(char *, char *))t12)(t0, t6);
    if (t13 != 0)
        goto LAB53;

LAB52:    t6 = (t0 + 696);
    xsi_vlog_subprogram_popinvocation(t6);

LAB50:    t14 = (t0 + 2996);
    t15 = *((char **)t14);
    t14 = (t0 + 696);
    t16 = (t0 + 2996);
    t17 = *((char **)t16);
    t16 = (t0 + 2948);
    t18 = 0;
    xsi_delete_subprogram_invocation(t14, t17, t0, t16, t18);
    xsi_set_current_line(158, ng0);
    xsi_vlogfile_write(1, 0, ng20, 1, t0);
    xsi_set_current_line(159, ng0);
    xsi_vlog_finish(1);
    goto LAB1;

LAB9:    t5 = (t0 + 3032U);
    *((char **)t5) = &&LAB7;
    goto LAB1;

LAB13:    t5 = (t0 + 3032U);
    *((char **)t5) = &&LAB11;
    goto LAB1;

LAB17:    t5 = (t0 + 3032U);
    *((char **)t5) = &&LAB15;
    goto LAB1;

LAB21:    t5 = (t0 + 3032U);
    *((char **)t5) = &&LAB19;
    goto LAB1;

LAB25:    t5 = (t0 + 3032U);
    *((char **)t5) = &&LAB23;
    goto LAB1;

LAB29:    t5 = (t0 + 3032U);
    *((char **)t5) = &&LAB27;
    goto LAB1;

LAB33:    t5 = (t0 + 3032U);
    *((char **)t5) = &&LAB31;
    goto LAB1;

LAB37:    t5 = (t0 + 3032U);
    *((char **)t5) = &&LAB35;
    goto LAB1;

LAB41:    t5 = (t0 + 3032U);
    *((char **)t5) = &&LAB39;
    goto LAB1;

LAB45:    t5 = (t0 + 3032U);
    *((char **)t5) = &&LAB43;
    goto LAB1;

LAB49:    t5 = (t0 + 3032U);
    *((char **)t5) = &&LAB47;
    goto LAB1;

LAB53:    t5 = (t0 + 3032U);
    *((char **)t5) = &&LAB51;
    goto LAB1;

}


extern void work_m_00000000003160197871_1626063992_init()
{
	static char *pe[] = {(void *)I97_0};
	static char *se[] = {(void *)sp_calc_exp,(void *)sp_check};
	xsi_register_didat("work_m_00000000003160197871_1626063992", "isim/_tmp/work/m_00000000003160197871_1626063992.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
