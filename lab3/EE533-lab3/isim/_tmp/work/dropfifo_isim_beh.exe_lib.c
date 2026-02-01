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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_1242562249;
char *UNISIM_P_0947159679;

int isim_run(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    work_m_00000000000866782574_2073120511_init();
    xilinxcorelib_ver_m_00000000003806943309_3375802621_init();
    work_m_00000000002742691610_0831904813_init();
    unisim_p_0947159679_init();
    unisim_a_3988446151_0546328132_init();
    unisim_a_2782630213_1361109519_init();
    unisim_a_2661327437_0605893366_init();
    work_a_3838879332_3212880686_init();
    unisim_a_2211589156_2274105955_init();
    work_a_2955413535_3212880686_init();
    work_a_3906517600_3212880686_init();
    work_a_1088229129_3212880686_init();
    unisim_a_0350208134_1521797606_init();
    work_a_0142736318_3212880686_init();
    unisim_a_3828308815_1222000726_init();
    work_a_0091704630_3212880686_init();
    unisim_a_4207005572_0559031411_init();
    unisim_a_2312877582_0635394241_init();
    unisim_a_2562466605_1496654361_init();
    work_a_1409500175_3212880686_init();
    unisim_a_1801614988_1818890047_init();
    unisim_a_3762448000_2971575191_init();
    work_a_1663189059_3212880686_init();
    work_a_1383865958_3212880686_init();
    work_a_4066225696_3212880686_init();
    unisim_a_2988077518_2751630626_init();
    unisim_a_2472646025_1397528790_init();
    work_a_1260568878_3212880686_init();


    xsi_register_tops("work_a_1260568878_3212880686");
    xsi_register_tops("work_m_00000000000866782574_2073120511");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    UNISIM_P_0947159679 = xsi_get_engine_memory("unisim_p_0947159679");

    return xsi_run_simulation(argc, argv);

}
