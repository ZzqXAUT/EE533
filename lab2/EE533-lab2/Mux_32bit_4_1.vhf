--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : Mux_32bit_4_1.vhf
-- /___/   /\     Timestamp : 01/24/2026 19:55:41
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family spartan3a -flat -suppress -w "C:/Documents and Settings/student/EE533-lab2/Mux_32bit_4_1.sch" Mux_32bit_4_1.vhf
--Design Name: Mux_32bit_4_1
--Device: spartan3a
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesis and simulted, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Mux_32bit_4_1 is
   port ( A  : in    std_logic_vector (31 downto 0); 
          B  : in    std_logic_vector (31 downto 0); 
          C  : in    std_logic_vector (31 downto 0); 
          D  : in    std_logic_vector (31 downto 0); 
          OP : in    std_logic_vector (1 downto 0); 
          S  : out   std_logic_vector (31 downto 0));
end Mux_32bit_4_1;

architecture BEHAVIORAL of Mux_32bit_4_1 is
   signal XLXN_16 : std_logic_vector (31 downto 0);
   signal XLXN_17 : std_logic_vector (31 downto 0);
   component Mux_32bit_2_1
      port ( in1 : in    std_logic_vector (31 downto 0); 
             in2 : in    std_logic_vector (31 downto 0); 
             OP  : in    std_logic; 
             S   : out   std_logic_vector (31 downto 0));
   end component;
   
begin
   XLXI_10 : Mux_32bit_2_1
      port map (in1(31 downto 0)=>A(31 downto 0),
                in2(31 downto 0)=>B(31 downto 0),
                OP=>OP(0),
                S(31 downto 0)=>XLXN_16(31 downto 0));
   
   XLXI_11 : Mux_32bit_2_1
      port map (in1(31 downto 0)=>C(31 downto 0),
                in2(31 downto 0)=>D(31 downto 0),
                OP=>OP(0),
                S(31 downto 0)=>XLXN_17(31 downto 0));
   
   XLXI_12 : Mux_32bit_2_1
      port map (in1(31 downto 0)=>XLXN_16(31 downto 0),
                in2(31 downto 0)=>XLXN_17(31 downto 0),
                OP=>OP(1),
                S(31 downto 0)=>S(31 downto 0));
   
end BEHAVIORAL;


