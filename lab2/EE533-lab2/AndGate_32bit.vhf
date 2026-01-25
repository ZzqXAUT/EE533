--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : AndGate_32bit.vhf
-- /___/   /\     Timestamp : 01/24/2026 19:49:41
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family spartan3a -flat -suppress -w "C:/Documents and Settings/student/EE533-lab2/AndGate_32bit.sch" AndGate_32bit.vhf
--Design Name: AndGate_32bit
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

entity AndGate_32bit is
   port ( A : in    std_logic_vector (31 downto 0); 
          B : in    std_logic_vector (31 downto 0); 
          S : out   std_logic_vector (31 downto 0));
end AndGate_32bit;

architecture BEHAVIORAL of AndGate_32bit is
   attribute BOX_TYPE   : string ;
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
begin
   XLXI_1 : AND2
      port map (I0=>B(23),
                I1=>A(23),
                O=>S(23));
   
   XLXI_2 : AND2
      port map (I0=>B(22),
                I1=>A(22),
                O=>S(22));
   
   XLXI_3 : AND2
      port map (I0=>B(21),
                I1=>A(21),
                O=>S(21));
   
   XLXI_4 : AND2
      port map (I0=>B(20),
                I1=>A(20),
                O=>S(20));
   
   XLXI_5 : AND2
      port map (I0=>B(19),
                I1=>A(19),
                O=>S(19));
   
   XLXI_6 : AND2
      port map (I0=>B(18),
                I1=>A(18),
                O=>S(18));
   
   XLXI_7 : AND2
      port map (I0=>B(17),
                I1=>A(17),
                O=>S(17));
   
   XLXI_8 : AND2
      port map (I0=>B(16),
                I1=>A(16),
                O=>S(16));
   
   XLXI_9 : AND2
      port map (I0=>B(31),
                I1=>A(31),
                O=>S(31));
   
   XLXI_10 : AND2
      port map (I0=>B(30),
                I1=>A(30),
                O=>S(30));
   
   XLXI_11 : AND2
      port map (I0=>B(29),
                I1=>A(29),
                O=>S(29));
   
   XLXI_12 : AND2
      port map (I0=>B(28),
                I1=>A(28),
                O=>S(28));
   
   XLXI_13 : AND2
      port map (I0=>B(27),
                I1=>A(27),
                O=>S(27));
   
   XLXI_14 : AND2
      port map (I0=>B(26),
                I1=>A(26),
                O=>S(26));
   
   XLXI_15 : AND2
      port map (I0=>B(25),
                I1=>A(25),
                O=>S(25));
   
   XLXI_16 : AND2
      port map (I0=>B(24),
                I1=>A(24),
                O=>S(24));
   
   XLXI_17 : AND2
      port map (I0=>B(15),
                I1=>A(15),
                O=>S(15));
   
   XLXI_18 : AND2
      port map (I0=>B(14),
                I1=>A(14),
                O=>S(14));
   
   XLXI_19 : AND2
      port map (I0=>B(13),
                I1=>A(13),
                O=>S(13));
   
   XLXI_20 : AND2
      port map (I0=>B(12),
                I1=>A(12),
                O=>S(12));
   
   XLXI_21 : AND2
      port map (I0=>B(11),
                I1=>A(11),
                O=>S(11));
   
   XLXI_22 : AND2
      port map (I0=>B(10),
                I1=>A(10),
                O=>S(10));
   
   XLXI_23 : AND2
      port map (I0=>B(9),
                I1=>A(9),
                O=>S(9));
   
   XLXI_24 : AND2
      port map (I0=>B(8),
                I1=>A(8),
                O=>S(8));
   
   XLXI_25 : AND2
      port map (I0=>B(7),
                I1=>A(7),
                O=>S(7));
   
   XLXI_26 : AND2
      port map (I0=>B(6),
                I1=>A(6),
                O=>S(6));
   
   XLXI_27 : AND2
      port map (I0=>B(5),
                I1=>A(5),
                O=>S(5));
   
   XLXI_28 : AND2
      port map (I0=>B(4),
                I1=>A(4),
                O=>S(4));
   
   XLXI_29 : AND2
      port map (I0=>B(3),
                I1=>A(3),
                O=>S(3));
   
   XLXI_30 : AND2
      port map (I0=>B(2),
                I1=>A(2),
                O=>S(2));
   
   XLXI_32 : AND2
      port map (I0=>B(1),
                I1=>A(1),
                O=>S(1));
   
   XLXI_33 : AND2
      port map (I0=>B(0),
                I1=>A(0),
                O=>S(0));
   
end BEHAVIORAL;


