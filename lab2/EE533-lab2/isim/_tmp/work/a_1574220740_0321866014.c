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
static const char *ng0 = "C:/Documents and Settings/student/EE533-lab2/INV_32bit.vhf";
extern char *IEEE_P_2592010699;

char *p_2592010699_sub_1291916887_2592010699(char *, char *, char *, char *);


static void work_a_1574220740_0321866014_p_0(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    xsi_set_current_line(36, ng0);

LAB3:    t2 = (t0 + 636U);
    t3 = *((char **)t2);
    t2 = (t0 + 2412U);
    t4 = p_2592010699_sub_1291916887_2592010699(IEEE_P_2592010699, t1, t3, t2);
    t5 = (t0 + 1468);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 16U);
    xsi_driver_first_trans_fast_port(t5);

LAB2:    t10 = (t0 + 1424);
    *((int *)t10) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1574220740_0321866014_init()
{
	static char *pe[] = {(void *)work_a_1574220740_0321866014_p_0};
	xsi_register_didat("work_a_1574220740_0321866014", "isim/_tmp/work/a_1574220740_0321866014.didat");
	xsi_register_executes(pe);
}
