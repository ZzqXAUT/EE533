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
extern char *IEEE_P_2592010699;

unsigned char p_2592010699_sub_1361094856_2592010699(char *, unsigned char );
unsigned char p_2592010699_sub_1744673427_2592010699(char *, char *, unsigned int , unsigned int );


static void unisim_a_2211589156_2274105955_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    int64 t12;
    char *t13;
    char *t14;

LAB0:    t1 = (t0 + 1128U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)1);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 812U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 616U);
    t3 = p_2592010699_sub_1744673427_2592010699(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB8;

LAB9:
LAB6:    t1 = (t0 + 1816);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    t1 = (t0 + 1064U);
    t5 = *((char **)t1);
    t6 = *((unsigned char *)t5);
    t7 = p_2592010699_sub_1361094856_2592010699(IEEE_P_2592010699, t6);
    t1 = (t0 + 1860);
    t8 = (t1 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t7;
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 1128U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)0;
    goto LAB3;

LAB5:    t1 = (t0 + 1860);
    t5 = (t1 + 32U);
    t8 = *((char **)t5);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB6;

LAB8:    t2 = (t0 + 724U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t6 = (t4 == (unsigned char)3);
    if (t6 != 0)
        goto LAB10;

LAB12:
LAB11:    goto LAB6;

LAB10:    t12 = (100 * 1000LL);
    t2 = (t0 + 900U);
    t8 = *((char **)t2);
    t7 = *((unsigned char *)t8);
    t2 = (t0 + 1860);
    t9 = (t2 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t13 = *((char **)t11);
    *((unsigned char *)t13) = t7;
    xsi_driver_first_trans_delta(t2, 0U, 1, t12);
    t14 = (t0 + 1860);
    xsi_driver_intertial_reject(t14, t12, t12);
    goto LAB11;

}


extern void unisim_a_2211589156_2274105955_init()
{
	static char *pe[] = {(void *)unisim_a_2211589156_2274105955_p_0};
	xsi_register_didat("unisim_a_2211589156_2274105955", "isim/_tmp/unisim/a_2211589156_2274105955.didat");
	xsi_register_executes(pe);
}
