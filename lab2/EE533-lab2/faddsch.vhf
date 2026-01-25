--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : faddsch.vhf
-- /___/   /\     Timestamp : 01/23/2026 16:01:13
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family spartan3a -flat -suppress -w "C:/Documents and Settings/student/EE533-lab2/faddsch.sch" faddsch.vhf
--Design Name: faddsch
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

entity faddsch is
   port ( A  : in    std_logic; 
          B  : in    std_logic; 
          C  : in    std_logic; 
          CO : out   std_logic; 
          S  : out   std_logic);
end faddsch;

architecture BEHAVIORAL of faddsch is
   attribute BOX_TYPE   : string ;
   signal XLXN_8  : std_logic;
   signal XLXN_10 : std_logic;
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
                O=>XLXN_8);
   
   U2 : XOR2
      port map (I0=>C,
                I1=>XLXN_8,
                O=>S);
   
   U3 : AND2
      port map (I0=>B,
                I1=>A,
                O=>XLXN_10);
   
   U4 : AND2
      port map (I0=>C,
                I1=>A,
                O=>XLXN_12);
   
   U5 : AND2
      port map (I0=>C,
                I1=>B,
                O=>XLXN_13);
   
   XLXI_14 : OR3
      port map (I0=>XLXN_13,
                I1=>XLXN_12,
                I2=>XLXN_10,
                O=>CO);
   
end BEHAVIORAL;


