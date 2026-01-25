--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : FullAdder_8bit.vhf
-- /___/   /\     Timestamp : 01/24/2026 19:49:42
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family spartan3a -flat -suppress -w "C:/Documents and Settings/student/EE533-lab2/FullAdder_8bit.sch" FullAdder_8bit.vhf
--Design Name: FullAdder_8bit
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

entity FullAdder_8bit is
   port ( A    : in    std_logic_vector (7 downto 0); 
          B    : in    std_logic_vector (7 downto 0); 
          Cin  : in    std_logic; 
          Cout : out   std_logic; 
          S    : out   std_logic_vector (7 downto 0));
end FullAdder_8bit;

architecture BEHAVIORAL of FullAdder_8bit is
   signal XLXN_8  : std_logic;
   signal XLXN_11 : std_logic;
   signal XLXN_20 : std_logic;
   signal XLXN_23 : std_logic;
   signal XLXN_26 : std_logic;
   signal XLXN_29 : std_logic;
   signal XLXN_34 : std_logic;
   component FullAdder_1bit
      port ( A  : in    std_logic; 
             B  : in    std_logic; 
             C  : in    std_logic; 
             S  : out   std_logic; 
             CO : out   std_logic);
   end component;
   
begin
   U0 : FullAdder_1bit
      port map (A=>A(0),
                B=>B(0),
                C=>Cin,
                CO=>XLXN_8,
                S=>S(0));
   
   U1 : FullAdder_1bit
      port map (A=>A(1),
                B=>B(1),
                C=>XLXN_8,
                CO=>XLXN_11,
                S=>S(1));
   
   U2 : FullAdder_1bit
      port map (A=>A(2),
                B=>B(2),
                C=>XLXN_11,
                CO=>XLXN_34,
                S=>S(2));
   
   XLXI_11 : FullAdder_1bit
      port map (A=>A(3),
                B=>B(3),
                C=>XLXN_34,
                CO=>XLXN_20,
                S=>S(3));
   
   XLXI_12 : FullAdder_1bit
      port map (A=>A(4),
                B=>B(4),
                C=>XLXN_20,
                CO=>XLXN_23,
                S=>S(4));
   
   XLXI_13 : FullAdder_1bit
      port map (A=>A(5),
                B=>B(5),
                C=>XLXN_23,
                CO=>XLXN_26,
                S=>S(5));
   
   XLXI_14 : FullAdder_1bit
      port map (A=>A(6),
                B=>B(6),
                C=>XLXN_26,
                CO=>XLXN_29,
                S=>S(6));
   
   XLXI_15 : FullAdder_1bit
      port map (A=>A(7),
                B=>B(7),
                C=>XLXN_29,
                CO=>Cout,
                S=>S(7));
   
end BEHAVIORAL;


