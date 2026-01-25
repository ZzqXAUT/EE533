--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : Subtractor_32bit.vhf
-- /___/   /\     Timestamp : 01/24/2026 19:49:43
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family spartan3a -flat -suppress -w "C:/Documents and Settings/student/EE533-lab2/Subtractor_32bit.sch" Subtractor_32bit.vhf
--Design Name: Subtractor_32bit
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

entity Subtractor_32bit is
   port ( A    : in    std_logic_vector (31 downto 0); 
          B    : in    std_logic_vector (31 downto 0); 
          Cout : out   std_logic; 
          S    : out   std_logic_vector (31 downto 0));
end Subtractor_32bit;

architecture BEHAVIORAL of Subtractor_32bit is
   attribute BOX_TYPE   : string ;
   signal B_inv   : std_logic_vector (31 downto 0);
   signal XLXN_40 : std_logic;
   signal XLXN_42 : std_logic;
   signal XLXN_45 : std_logic;
   signal XLXN_49 : std_logic;
   signal XLXN_52 : std_logic;
   component FullAdder_8bit
      port ( A    : in    std_logic_vector (7 downto 0); 
             B    : in    std_logic_vector (7 downto 0); 
             Cin  : in    std_logic; 
             S    : out   std_logic_vector (7 downto 0); 
             Cout : out   std_logic);
   end component;
   
   component INV_32bit
      port ( Cin  : in    std_logic_vector (31 downto 0); 
             Cout : out   std_logic_vector (31 downto 0));
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
begin
   XLXI_17 : FullAdder_8bit
      port map (A(7 downto 0)=>A(31 downto 24),
                B(7 downto 0)=>B_inv(31 downto 24),
                Cin=>XLXN_45,
                Cout=>Cout,
                S(7 downto 0)=>S(31 downto 24));
   
   XLXI_18 : FullAdder_8bit
      port map (A(7 downto 0)=>A(23 downto 16),
                B(7 downto 0)=>B_inv(23 downto 16),
                Cin=>XLXN_42,
                Cout=>XLXN_45,
                S(7 downto 0)=>S(23 downto 16));
   
   XLXI_19 : FullAdder_8bit
      port map (A(7 downto 0)=>A(15 downto 8),
                B(7 downto 0)=>B_inv(15 downto 8),
                Cin=>XLXN_40,
                Cout=>XLXN_42,
                S(7 downto 0)=>S(15 downto 8));
   
   XLXI_20 : FullAdder_8bit
      port map (A(7 downto 0)=>A(7 downto 0),
                B(7 downto 0)=>B_inv(7 downto 0),
                Cin=>XLXN_52,
                Cout=>XLXN_40,
                S(7 downto 0)=>S(7 downto 0));
   
   XLXI_21 : INV_32bit
      port map (Cin(31 downto 0)=>B(31 downto 0),
                Cout(31 downto 0)=>B_inv(31 downto 0));
   
   XLXI_23 : GND
      port map (G=>XLXN_49);
   
   XLXI_24 : INV
      port map (I=>XLXN_49,
                O=>XLXN_52);
   
end BEHAVIORAL;


