--------------------------------------------------------------------------------
-- Copyright (c) 1995-2003 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : ISE
--  /   /         Filename : tb_FA_32bit_DFF.vhw
-- /___/   /\     Timestamp : Sat Jan 24 21:15:09 2026
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: tb_FA_32bit_DFF
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

ENTITY tb_FA_32bit_DFF IS
END tb_FA_32bit_DFF;

ARCHITECTURE testbench_arch OF tb_FA_32bit_DFF IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT FullAdder_32bit_DFF
        PORT (
            A : In std_logic_vector (31 DownTo 0);
            ADD_SUB : In std_logic;
            B_ini : In std_logic_vector (31 DownTo 0);
            Cin : In std_logic;
            CLK : In std_logic;
            EN : In std_logic;
            RST : In std_logic;
            Cout : Out std_logic;
            S : Out std_logic_vector (31 DownTo 0)
        );
    END COMPONENT;

    SIGNAL A : std_logic_vector (31 DownTo 0) := "00000000000000000000000000000000";
    SIGNAL ADD_SUB : std_logic := '0';
    SIGNAL B_ini : std_logic_vector (31 DownTo 0) := "00000000000000000000000000000000";
    SIGNAL Cin : std_logic := '0';
    SIGNAL CLK : std_logic := '0';
    SIGNAL EN : std_logic := '0';
    SIGNAL RST : std_logic := '0';
    SIGNAL Cout : std_logic := '0';
    SIGNAL S : std_logic_vector (31 DownTo 0) := "00000000000000000000000000000000";

    constant PERIOD : time := 200 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 200 ns;

    BEGIN
        UUT : FullAdder_32bit_DFF
        PORT MAP (
            A => A,
            ADD_SUB => ADD_SUB,
            B_ini => B_ini,
            Cin => Cin,
            CLK => CLK,
            EN => EN,
            RST => RST,
            Cout => Cout,
            S => S
        );

        PROCESS    -- clock process for CLK
        BEGIN
            WAIT for OFFSET;
            CLOCK_LOOP : LOOP
                CLK <= '0';
                WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
                CLK <= '1';
                WAIT FOR (PERIOD * DUTY_CYCLE);
            END LOOP CLOCK_LOOP;
        END PROCESS;

        PROCESS
            BEGIN
                -- -------------  Current Time:  485ns
                WAIT FOR 485 ns;
                Cin <= '1';
                EN <= '1';
                A <= "00000000000000010000000000000000";
                B_ini <= "00000000000000001111111111111111";
                -- -------------------------------------
                -- -------------  Current Time:  685ns
                WAIT FOR 200 ns;
                A <= "00000000000000010010001101000101";
                B_ini <= "00000000000001010100001100100001";
                -- -------------------------------------
                WAIT FOR 515 ns;

            END PROCESS;

    END testbench_arch;

