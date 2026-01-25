--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : FullAdder_32bit_DFF.vhf
-- /___/   /\     Timestamp : 01/24/2026 21:03:44
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family spartan3a -flat -suppress -w "C:/Documents and Settings/student/EE533-lab2/FullAdder_32bit_DFF.sch" FullAdder_32bit_DFF.vhf
--Design Name: FullAdder_32bit_DFF
--Device: spartan3a
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesis and simulted, but it should not be modified. 
--
----- CELL M2_1_HXILINX_FullAdder_32bit_DFF -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M2_1_HXILINX_FullAdder_32bit_DFF is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    S0  : in std_logic
  );
end M2_1_HXILINX_FullAdder_32bit_DFF;

architecture M2_1_HXILINX_FullAdder_32bit_DFF_V of M2_1_HXILINX_FullAdder_32bit_DFF is
begin
  process (D0, D1, S0)
  begin
    case S0 is
    when '0' => O <= D0;
    when '1' => O <= D1;
    when others => NULL;
    end case;
    end process; 
end M2_1_HXILINX_FullAdder_32bit_DFF_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity FullAdder_32bit_DFF is
   port ( A       : in    std_logic_vector (31 downto 0); 
          ADD_SUB : in    std_logic; 
          B_ini   : in    std_logic_vector (31 downto 0); 
          Cin     : in    std_logic; 
          CLK     : in    std_logic; 
          EN      : in    std_logic; 
          RST     : in    std_logic; 
          Cout    : out   std_logic; 
          S       : out   std_logic_vector (31 downto 0));
end FullAdder_32bit_DFF;

architecture BEHAVIORAL of FullAdder_32bit_DFF is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   attribute INIT       : string ;
   signal A_CLK    : std_logic_vector (31 downto 0);
   signal B_CLK    : std_logic_vector (31 downto 0);
   signal B_inv    : std_logic_vector (31 downto 0);
   signal XLXN_40  : std_logic;
   signal XLXN_42  : std_logic;
   signal XLXN_45  : std_logic;
   signal XLXN_49  : std_logic;
   signal XLXN_52  : std_logic;
   signal XLXN_112 : std_logic;
   signal XLXN_113 : std_logic;
   signal XLXN_118 : std_logic_vector (31 downto 0);
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
   
   component M2_1_HXILINX_FullAdder_32bit_DFF
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
   
   component FDCE
      -- synopsys translate_off
      generic( INIT : bit :=  '0');
      -- synopsys translate_on
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute INIT of FDCE : component is "0";
   attribute BOX_TYPE of FDCE : component is "BLACK_BOX";
   
   component DFF_32bit
      port ( RST      : in    std_logic; 
             CLK      : in    std_logic; 
             EN       : in    std_logic; 
             Data     : in    std_logic_vector (31 downto 0); 
             Data_CLK : out   std_logic_vector (31 downto 0));
   end component;
   
   attribute HU_SET of XLXI_43 : label is "XLXI_43_0";
begin
   XLXI_17 : FullAdder_8bit
      port map (A(7 downto 0)=>A_CLK(31 downto 24),
                B(7 downto 0)=>B_CLK(31 downto 24),
                Cin=>XLXN_45,
                Cout=>Cout,
                S(7 downto 0)=>S(31 downto 24));
   
   XLXI_18 : FullAdder_8bit
      port map (A(7 downto 0)=>A_CLK(23 downto 16),
                B(7 downto 0)=>B_CLK(23 downto 16),
                Cin=>XLXN_42,
                Cout=>XLXN_45,
                S(7 downto 0)=>S(23 downto 16));
   
   XLXI_19 : FullAdder_8bit
      port map (A(7 downto 0)=>A_CLK(15 downto 8),
                B(7 downto 0)=>B_CLK(15 downto 8),
                Cin=>XLXN_40,
                Cout=>XLXN_42,
                S(7 downto 0)=>S(15 downto 8));
   
   XLXI_20 : FullAdder_8bit
      port map (A(7 downto 0)=>A_CLK(7 downto 0),
                B(7 downto 0)=>B_CLK(7 downto 0),
                Cin=>XLXN_113,
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
   
   XLXI_43 : M2_1_HXILINX_FullAdder_32bit_DFF
      port map (D0=>Cin,
                D1=>XLXN_52,
                S0=>ADD_SUB,
                O=>XLXN_112);
   
   XLXI_50 : Mux_32bit_2_1
      port map (in1(31 downto 0)=>B_ini(31 downto 0),
                in2(31 downto 0)=>B_inv(31 downto 0),
                OP=>ADD_SUB,
                S(31 downto 0)=>XLXN_118(31 downto 0));
   
   XLXI_58 : FDCE
      port map (C=>CLK,
                CE=>EN,
                CLR=>RST,
                D=>XLXN_112,
                Q=>XLXN_113);
   
   XLXI_59 : DFF_32bit
      port map (CLK=>CLK,
                Data(31 downto 0)=>XLXN_118(31 downto 0),
                EN=>EN,
                RST=>RST,
                Data_CLK(31 downto 0)=>B_CLK(31 downto 0));
   
   XLXI_60 : DFF_32bit
      port map (CLK=>CLK,
                Data(31 downto 0)=>A(31 downto 0),
                EN=>EN,
                RST=>RST,
                Data_CLK(31 downto 0)=>A_CLK(31 downto 0));
   
end BEHAVIORAL;


