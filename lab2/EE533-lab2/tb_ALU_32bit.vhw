--------------------------------------------------------------------------------
-- Copyright (c) 1995-2003 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : ISE
--  /   /         Filename : tb_ALU_32bit.vhw
-- /___/   /\     Timestamp : Sat Jan 24 17:23:57 2026
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: tb_ALU_32bit
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

ENTITY tb_ALU_32bit IS
END tb_ALU_32bit;

ARCHITECTURE testbench_arch OF tb_ALU_32bit IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT ALU_32bit
        PORT (
            ADD_SUB : In std_logic;
            Cin : In std_logic;
            CLK : In std_logic;
            EN : In std_logic;
            in1 : In std_logic_vector (31 DownTo 0);
            in2 : In std_logic_vector (31 DownTo 0);
            LRshift : In std_logic;
            OPcode : In std_logic_vector (1 DownTo 0);
            RST : In std_logic;
            ANS : Out std_logic_vector (31 DownTo 0);
            Cout : Out std_logic
        );
    END COMPONENT;

    SIGNAL ADD_SUB : std_logic := '0';
    SIGNAL Cin : std_logic := '0';
    SIGNAL CLK : std_logic := '0';
    SIGNAL EN : std_logic := '0';
    SIGNAL in1 : std_logic_vector (31 DownTo 0) := "00000000000000000000000000000000";
    SIGNAL in2 : std_logic_vector (31 DownTo 0) := "00000000000000000000000000000000";
    SIGNAL LRshift : std_logic := '0';
    SIGNAL OPcode : std_logic_vector (1 DownTo 0) := "00";
    SIGNAL RST : std_logic := '0';
    SIGNAL ANS : std_logic_vector (31 DownTo 0) := "00000000000000000000000000000000";
    SIGNAL Cout : std_logic := '0';

    constant PERIOD : time := 200 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 200 ns;

    BEGIN
        UUT : ALU_32bit
        PORT MAP (
            ADD_SUB => ADD_SUB,
            Cin => Cin,
            CLK => CLK,
            EN => EN,
            in1 => in1,
            in2 => in2,
            LRshift => LRshift,
            OPcode => OPcode,
            RST => RST,
            ANS => ANS,
            Cout => Cout
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
                EN <= '1';
                in1 <= "11111111111111111111111111111111";
                in2 <= "00000000000000000000000000000001";
                -- -------------------------------------
                -- -------------  Current Time:  685ns
                WAIT FOR 200 ns;
                in1 <= "00000000000000010010001101000101";
                in2 <= "00000000000001010100001100100001";
                -- -------------------------------------
                -- -------------  Current Time:  885ns
                WAIT FOR 200 ns;
                ADD_SUB <= '1';
                in1 <= "00000000000000000000000000000100";
                in2 <= "00000000000000000000000000000101";
                -- -------------------------------------
                -- -------------  Current Time:  1085ns
                WAIT FOR 200 ns;
                ADD_SUB <= '0';
                in1 <= "00000000000000000001000100010001";
                OPcode <= "01";
                -- -------------------------------------
                -- -------------  Current Time:  1285ns
                WAIT FOR 200 ns;
                LRshift <= '1';
                in1 <= "00000000000000010001000100010001";
                -- -------------------------------------
                -- -------------  Current Time:  1485ns
                WAIT FOR 200 ns;
                in1 <= "00000000000100010000000000000001";
                OPcode <= "10";
                -- -------------------------------------
                -- -------------  Current Time:  1685ns
                WAIT FOR 200 ns;
                in1 <= "00000000000000000001000100000001";
                in2 <= "00000000000000000000000100010000";
                OPcode <= "11";
                -- -------------------------------------
                WAIT FOR 1515 ns;

            END PROCESS;

    END testbench_arch;

