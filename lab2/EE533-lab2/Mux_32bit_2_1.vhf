--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : Mux_32bit_2_1.vhf
-- /___/   /\     Timestamp : 01/24/2026 19:49:43
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family spartan3a -flat -suppress -w "C:/Documents and Settings/student/EE533-lab2/Mux_32bit_2_1.sch" Mux_32bit_2_1.vhf
--Design Name: Mux_32bit_2_1
--Device: spartan3a
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesis and simulted, but it should not be modified. 
--
----- CELL M2_1_HXILINX_Mux_32bit_2_1 -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M2_1_HXILINX_Mux_32bit_2_1 is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    S0  : in std_logic
  );
end M2_1_HXILINX_Mux_32bit_2_1;

architecture M2_1_HXILINX_Mux_32bit_2_1_V of M2_1_HXILINX_Mux_32bit_2_1 is
begin
  process (D0, D1, S0)
  begin
    case S0 is
    when '0' => O <= D0;
    when '1' => O <= D1;
    when others => NULL;
    end case;
    end process; 
end M2_1_HXILINX_Mux_32bit_2_1_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Mux_32bit_2_1 is
   port ( in1 : in    std_logic_vector (31 downto 0); 
          in2 : in    std_logic_vector (31 downto 0); 
          OP  : in    std_logic; 
          S   : out   std_logic_vector (31 downto 0));
end Mux_32bit_2_1;

architecture BEHAVIORAL of Mux_32bit_2_1 is
   attribute HU_SET     : string ;
   component M2_1_HXILINX_Mux_32bit_2_1
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_0";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_1";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_2";
   attribute HU_SET of XLXI_4 : label is "XLXI_4_3";
   attribute HU_SET of XLXI_5 : label is "XLXI_5_4";
   attribute HU_SET of XLXI_6 : label is "XLXI_6_5";
   attribute HU_SET of XLXI_7 : label is "XLXI_7_6";
   attribute HU_SET of XLXI_8 : label is "XLXI_8_7";
   attribute HU_SET of XLXI_9 : label is "XLXI_9_15";
   attribute HU_SET of XLXI_10 : label is "XLXI_10_16";
   attribute HU_SET of XLXI_11 : label is "XLXI_11_17";
   attribute HU_SET of XLXI_12 : label is "XLXI_12_18";
   attribute HU_SET of XLXI_13 : label is "XLXI_13_19";
   attribute HU_SET of XLXI_14 : label is "XLXI_14_20";
   attribute HU_SET of XLXI_15 : label is "XLXI_15_21";
   attribute HU_SET of XLXI_16 : label is "XLXI_16_22";
   attribute HU_SET of XLXI_17 : label is "XLXI_17_31";
   attribute HU_SET of XLXI_18 : label is "XLXI_18_8";
   attribute HU_SET of XLXI_19 : label is "XLXI_19_9";
   attribute HU_SET of XLXI_20 : label is "XLXI_20_10";
   attribute HU_SET of XLXI_21 : label is "XLXI_21_11";
   attribute HU_SET of XLXI_22 : label is "XLXI_22_12";
   attribute HU_SET of XLXI_23 : label is "XLXI_23_13";
   attribute HU_SET of XLXI_24 : label is "XLXI_24_14";
   attribute HU_SET of XLXI_25 : label is "XLXI_25_23";
   attribute HU_SET of XLXI_26 : label is "XLXI_26_24";
   attribute HU_SET of XLXI_27 : label is "XLXI_27_25";
   attribute HU_SET of XLXI_28 : label is "XLXI_28_26";
   attribute HU_SET of XLXI_29 : label is "XLXI_29_27";
   attribute HU_SET of XLXI_30 : label is "XLXI_30_28";
   attribute HU_SET of XLXI_31 : label is "XLXI_31_29";
   attribute HU_SET of XLXI_32 : label is "XLXI_32_30";
begin
   XLXI_1 : M2_1_HXILINX_Mux_32bit_2_1
      port map (D0=>in1(31),
                D1=>in2(31),
                S0=>OP,
                O=>S(31));
   
   XLXI_2 : M2_1_HXILINX_Mux_32bit_2_1
      port map (D0=>in1(30),
                D1=>in2(30),
                S0=>OP,
                O=>S(30));
   
   XLXI_3 : M2_1_HXILINX_Mux_32bit_2_1
      port map (D0=>in1(29),
                D1=>in2(29),
                S0=>OP,
                O=>S(29));
   
   XLXI_4 : M2_1_HXILINX_Mux_32bit_2_1
      port map (D0=>in1(28),
                D1=>in2(28),
                S0=>OP,
                O=>S(28));
   
   XLXI_5 : M2_1_HXILINX_Mux_32bit_2_1
      port map (D0=>in1(27),
                D1=>in2(27),
                S0=>OP,
                O=>S(27));
   
   XLXI_6 : M2_1_HXILINX_Mux_32bit_2_1
      port map (D0=>in1(26),
                D1=>in2(26),
                S0=>OP,
                O=>S(26));
   
   XLXI_7 : M2_1_HXILINX_Mux_32bit_2_1
      port map (D0=>in1(25),
                D1=>in2(25),
                S0=>OP,
                O=>S(25));
   
   XLXI_8 : M2_1_HXILINX_Mux_32bit_2_1
      port map (D0=>in1(24),
                D1=>in2(24),
                S0=>OP,
                O=>S(24));
   
   XLXI_9 : M2_1_HXILINX_Mux_32bit_2_1
      port map (D0=>in1(23),
                D1=>in2(23),
                S0=>OP,
                O=>S(23));
   
   XLXI_10 : M2_1_HXILINX_Mux_32bit_2_1
      port map (D0=>in1(22),
                D1=>in2(22),
                S0=>OP,
                O=>S(22));
   
   XLXI_11 : M2_1_HXILINX_Mux_32bit_2_1
      port map (D0=>in1(21),
                D1=>in2(21),
                S0=>OP,
                O=>S(21));
   
   XLXI_12 : M2_1_HXILINX_Mux_32bit_2_1
      port map (D0=>in1(20),
                D1=>in2(20),
                S0=>OP,
                O=>S(20));
   
   XLXI_13 : M2_1_HXILINX_Mux_32bit_2_1
      port map (D0=>in1(19),
                D1=>in2(19),
                S0=>OP,
                O=>S(19));
   
   XLXI_14 : M2_1_HXILINX_Mux_32bit_2_1
      port map (D0=>in1(18),
                D1=>in2(18),
                S0=>OP,
                O=>S(18));
   
   XLXI_15 : M2_1_HXILINX_Mux_32bit_2_1
      port map (D0=>in1(17),
                D1=>in2(17),
                S0=>OP,
                O=>S(17));
   
   XLXI_16 : M2_1_HXILINX_Mux_32bit_2_1
      port map (D0=>in1(16),
                D1=>in2(16),
                S0=>OP,
                O=>S(16));
   
   XLXI_17 : M2_1_HXILINX_Mux_32bit_2_1
      port map (D0=>in1(15),
                D1=>in2(15),
                S0=>OP,
                O=>S(15));
   
   XLXI_18 : M2_1_HXILINX_Mux_32bit_2_1
      port map (D0=>in1(14),
                D1=>in2(14),
                S0=>OP,
                O=>S(14));
   
   XLXI_19 : M2_1_HXILINX_Mux_32bit_2_1
      port map (D0=>in1(13),
                D1=>in2(13),
                S0=>OP,
                O=>S(13));
   
   XLXI_20 : M2_1_HXILINX_Mux_32bit_2_1
      port map (D0=>in1(12),
                D1=>in2(12),
                S0=>OP,
                O=>S(12));
   
   XLXI_21 : M2_1_HXILINX_Mux_32bit_2_1
      port map (D0=>in1(11),
                D1=>in2(11),
                S0=>OP,
                O=>S(11));
   
   XLXI_22 : M2_1_HXILINX_Mux_32bit_2_1
      port map (D0=>in1(10),
                D1=>in2(10),
                S0=>OP,
                O=>S(10));
   
   XLXI_23 : M2_1_HXILINX_Mux_32bit_2_1
      port map (D0=>in1(9),
                D1=>in2(9),
                S0=>OP,
                O=>S(9));
   
   XLXI_24 : M2_1_HXILINX_Mux_32bit_2_1
      port map (D0=>in1(8),
                D1=>in2(8),
                S0=>OP,
                O=>S(8));
   
   XLXI_25 : M2_1_HXILINX_Mux_32bit_2_1
      port map (D0=>in1(7),
                D1=>in2(7),
                S0=>OP,
                O=>S(7));
   
   XLXI_26 : M2_1_HXILINX_Mux_32bit_2_1
      port map (D0=>in1(6),
                D1=>in2(6),
                S0=>OP,
                O=>S(6));
   
   XLXI_27 : M2_1_HXILINX_Mux_32bit_2_1
      port map (D0=>in1(5),
                D1=>in2(5),
                S0=>OP,
                O=>S(5));
   
   XLXI_28 : M2_1_HXILINX_Mux_32bit_2_1
      port map (D0=>in1(4),
                D1=>in2(4),
                S0=>OP,
                O=>S(4));
   
   XLXI_29 : M2_1_HXILINX_Mux_32bit_2_1
      port map (D0=>in1(3),
                D1=>in2(3),
                S0=>OP,
                O=>S(3));
   
   XLXI_30 : M2_1_HXILINX_Mux_32bit_2_1
      port map (D0=>in1(2),
                D1=>in2(2),
                S0=>OP,
                O=>S(2));
   
   XLXI_31 : M2_1_HXILINX_Mux_32bit_2_1
      port map (D0=>in1(1),
                D1=>in2(1),
                S0=>OP,
                O=>S(1));
   
   XLXI_32 : M2_1_HXILINX_Mux_32bit_2_1
      port map (D0=>in1(0),
                D1=>in2(0),
                S0=>OP,
                O=>S(0));
   
end BEHAVIORAL;


