--------------------------------------------------------------------------------
-- Copyright (c) 1995-2003 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : ISE
--  /   /         Filename : tb_OR_32bit.vhw
-- /___/   /\     Timestamp : Fri Jan 23 22:26:30 2026
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: tb_OR_32bit
--Device: Xilinx
--

library UNISIM;
use UNISIM.Vcomponents.ALL;
library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE STD.TEXTIO.ALL;

ENTITY tb_OR_32bit IS
END tb_OR_32bit;

ARCHITECTURE testbench_arch OF tb_OR_32bit IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT ORGate_32bit
        PORT (
            A : In std_logic_vector (31 DownTo 0);
            B : In std_logic_vector (31 DownTo 0);
            S : Out std_logic_vector (31 DownTo 0)
        );
    END COMPONENT;

    SIGNAL A : std_logic_vector (31 DownTo 0) := "00000000000000000000000000000000";
    SIGNAL B : std_logic_vector (31 DownTo 0) := "00000000000000000000000000000000";
    SIGNAL S : std_logic_vector (31 DownTo 0) := "00000000000000000000000000000000";

    BEGIN
        UUT : ORGate_32bit
        PORT MAP (
            A => A,
            B => B,
            S => S
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                A <= "00000000000000000001000000010001";
                B <= "00000000000000000000000100010001";
                -- -------------------------------------
                -- -------------  Current Time:  200ns
                WAIT FOR 100 ns;
                A <= "00000000000000000001000000000001";
                B <= "00000000000000000000000100000001";
                -- -------------------------------------
                WAIT FOR 800 ns;

            END PROCESS;

    END testbench_arch;

