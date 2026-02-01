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

char *IEEE_P_3564397177;
char *STD_STANDARD;
char *STD_TEXTIO;
char *IEEE_P_2592010699;
char *IEEE_P_3499444699;
char *IEEE_P_3620187407;

int isim_run(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    std_textio_init();
    ieee_p_2592010699_init();
    ieee_p_3564397177_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_a_1670755963_0230731466_init();


    xsi_register_tops("work_a_1670755963_0230731466");

    IEEE_P_3564397177 = xsi_get_engine_memory("ieee_p_3564397177");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");

    return xsi_run_simulation(argc, argv);

}
