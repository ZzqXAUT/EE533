--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : FullAdder_32bit.vhf
-- /___/   /\     Timestamp : 01/24/2026 19:49:42
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family spartan3a -flat -suppress -w "C:/Documents and Settings/student/EE533-lab2/FullAdder_32bit.sch" FullAdder_32bit.vhf
--Design Name: FullAdder_32bit
--Device: spartan3a
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesis and simulted, but it should not be modified. 
--
----- CELL M2_1_HXILINX_FullAdder_32bit -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M2_1_HXILINX_FullAdder_32bit is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    S0  : in std_logic
  );
end M2_1_HXILINX_FullAdder_32bit;

architecture M2_1_HXILINX_FullAdder_32bit_V of M2_1_HXILINX_FullAdder_32bit is
begin
  process (D0, D1, S0)
  begin
    case S0 is
    when '0' => O <= D0;
    when '1' => O <= D1;
    when others => NULL;
    end case;
    end process; 
end M2_1_HXILINX_FullAdder_32bit_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity FullAdder_32bit is
   port ( A       : in    std_logic_vector (31 downto 0); 
          ADD_SUB : in    std_logic; 
          B_ini   : in    std_logic_vector (31 downto 0); 
          Cin     : in    std_logic; 
          Cout    : out   std_logic; 
          S       : out   std_logic_vector (31 downto 0));
end FullAdder_32bit;

architecture BEHAVIORAL of FullAdder_32bit is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal B       : std_logic_vector (31 downto 0);
   signal B_inv   : std_logic_vector (31 downto 0);
   signal XLXN_40 : std_logic;
   signal XLXN_42 : std_logic;
   signal XLXN_45 : std_logic;
   signal XLXN_49 : std_logic;
   signal XLXN_52 : std_logic;
   signal XLXN_93 : std_logic;
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
   
   component M2_1_HXILINX_FullAdder_32bit
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component Mux_32bit_2_1
      port ( in1 : in    std_logic_vector (31 downto 0); 
             in2 : in    std_logic_vector (31 downto 0); 
             OP  : in    std_logic; 
             S   : out   std_logic_vector (31 downto 0));
   end component;
   
   attribute HU_SET of XLXI_43 : label is "XLXI_43_0";
begin
   XLXI_17 : FullAdder_8bit
      port map (A(7 downto 0)=>A(31 downto 24),
                B(7 downto 0)=>B(31 downto 24),
                Cin=>XLXN_45,
                Cout=>Cout,
                S(7 downto 0)=>S(31 downto 24));
   
   XLXI_18 : FullAdder_8bit
      port map (A(7 downto 0)=>A(23 downto 16),
                B(7 downto 0)=>B(23 downto 16),
                Cin=>XLXN_42,
                Cout=>XLXN_45,
                S(7 downto 0)=>S(23 downto 16));
   
   XLXI_19 : FullAdder_8bit
      port map (A(7 downto 0)=>A(15 downto 8),
                B(7 downto 0)=>B(15 downto 8),
                Cin=>XLXN_40,
                Cout=>XLXN_42,
                S(7 downto 0)=>S(15 downto 8));
   
   XLXI_20 : FullAdder_8bit
      port map (A(7 downto 0)=>A(7 downto 0),
                B(7 downto 0)=>B(7 downto 0),
                Cin=>XLXN_93,
                Cout=>XLXN_40,
                S(7 downto 0)=>S(7 downto 0));
   
   XLXI_21 : INV_32bit
      port map (Cin(31 downto 0)=>B_ini(31 downto 0),
                Cout(31 downto 0)=>B_inv(31 downto 0));
   
   XLXI_23 : GND
      port map (G=>XLXN_49);
   
   XLXI_24 : INV
      port map (I=>XLXN_49,
                O=>XLXN_52);
   
   XLXI_43 : M2_1_HXILINX_FullAdder_32bit
      port map (D0=>Cin,
                D1=>XLXN_52,
                S0=>ADD_SUB,
                O=>XLXN_93);
   
   XLXI_50 : Mux_32bit_2_1
      port map (in1(31 downto 0)=>B_ini(31 downto 0),
                in2(31 downto 0)=>B_inv(31 downto 0),
                OP=>ADD_SUB,
                S(31 downto 0)=>B(31 downto 0));
   
end BEHAVIORAL;


