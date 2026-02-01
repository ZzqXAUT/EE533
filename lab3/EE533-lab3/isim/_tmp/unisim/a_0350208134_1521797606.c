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


static void unisim_a_0350208134_1521797606_p_0(char *t0)
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

LAB0:    t1 = (t0 + 952U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)1);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 616U);
    t3 = p_2592010699_sub_1744673427_2592010699(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB7:
LAB6:    t1 = (t0 + 1640);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    t1 = (t0 + 888U);
    t5 = *((char **)t1);
    t6 = *((unsigned char *)t5);
    t7 = p_2592010699_sub_1361094856_2592010699(IEEE_P_2592010699, t6);
    t1 = (t0 + 1684);
    t8 = (t1 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t7;
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 952U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)0;
    goto LAB3;

LAB5:    t12 = (100 * 1000LL);
    t2 = (t0 + 724U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t2 = (t0 + 1684);
    t8 = (t2 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t4;
    xsi_driver_first_trans_delta(t2, 0U, 1, t12);
    t13 = (t0 + 1684);
    xsi_driver_intertial_reject(t13, t12, t12);
    goto LAB6;

}


extern void unisim_a_0350208134_1521797606_init()
{
	static char *pe[] = {(void *)unisim_a_0350208134_1521797606_p_0};
	xsi_register_didat("unisim_a_0350208134_1521797606", "isim/_tmp/unisim/a_0350208134_1521797606.didat");
	xsi_register_executes(pe);
}
