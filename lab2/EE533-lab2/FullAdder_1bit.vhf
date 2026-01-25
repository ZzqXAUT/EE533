--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : FullAdder_1bit.vhf
-- /___/   /\     Timestamp : 01/24/2026 19:49:42
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family spartan3a -flat -suppress -w "C:/Documents and Settings/student/EE533-lab2/FullAdder_1bit.sch" FullAdder_1bit.vhf
--Design Name: FullAdder_1bit
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

entity FullAdder_1bit is
   port ( A  : in    std_logic; 
          B  : in    std_logic; 
          C  : in    std_logic; 
          CO : out   std_logic; 
          S  : out   std_logic);
end FullAdder_1bit;

architecture BEHAVIORAL of FullAdder_1bit is
   attribute BOX_TYPE   : string ;
   signal XLXN_5  : std_logic;
   signal XLXN_7  : std_logic;
   signal XLXN_12 : std_logic;
   signal XLXN_13 : std_logic;
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component OR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR3 : component is "BLACK_BOX";
   
begin
   U1 : XOR2
      port map (I0=>B,
                I1=>A,
                O=>XLXN_5);
   
   U2 : XOR2
      port map (I0=>C,
                I1=>XLXN_5,
                O=>S);
   
   U3 : AND2
      port map (I0=>B,
                I1=>A,
                O=>XLXN_7);
   
   U4 : AND2
      port map (I0=>C,
                I1=>A,
                O=>XLXN_12);
   
   U5 : AND2
      port map (I0=>C,
                I1=>B,
                O=>XLXN_13);
   
   U6 : OR3
      port map (I0=>XLXN_13,
                I1=>XLXN_12,
                I2=>XLXN_7,
                O=>CO);
   
end BEHAVIORAL;


