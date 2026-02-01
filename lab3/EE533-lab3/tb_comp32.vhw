--------------------------------------------------------------------------------
-- Copyright (c) 1995-2003 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : ISE
--  /   /         Filename : tb_comp32.vhw
-- /___/   /\     Timestamp : Sat Jan 31 00:21:01 2026
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: tb_comp32
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

ENTITY tb_comp32 IS
END tb_comp32;

ARCHITECTURE testbench_arch OF tb_comp32 IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT comp32
        PORT (
            A : In std_logic_vector (55 DownTo 0);
            amask : In std_logic_vector (6 DownTo 0);
            B : In std_logic_vector (55 DownTo 0);
            match : Out std_logic
        );
    END COMPONENT;

    SIGNAL A : std_logic_vector (55 DownTo 0) := "00000000000000000000000000000000000000000000000000000000";
    SIGNAL amask : std_logic_vector (6 DownTo 0) := "0000000";
    SIGNAL B : std_logic_vector (55 DownTo 0) := "00000000000000000000000000000000000000000000000000000000";
    SIGNAL match : std_logic := '0';

    BEGIN
        UUT : comp32
        PORT MAP (
            A => A,
            amask => amask,
            B => B,
            match => match
        );

        PROCESS
            BEGIN
                WAIT FOR 1000 ns;

            END PROCESS;

    END testbench_arch;

