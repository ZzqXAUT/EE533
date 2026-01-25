--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : FullAdder_8bit_DFF.vhf
-- /___/   /\     Timestamp : 01/24/2026 21:02:41
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family spartan3a -flat -suppress -w "C:/Documents and Settings/student/EE533-lab2/FullAdder_8bit_DFF.sch" FullAdder_8bit_DFF.vhf
--Design Name: FullAdder_8bit_DFF
--Device: spartan3a
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesis and simulted, but it should not be modified. 
--
----- CELL FD8CE_HXILINX_FullAdder_8bit_DFF -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FD8CE_HXILINX_FullAdder_8bit_DFF is
port (
    Q   : out STD_LOGIC_VECTOR(7 downto 0);

    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC;
    D   : in STD_LOGIC_VECTOR(7 downto 0)
    );
end FD8CE_HXILINX_FullAdder_8bit_DFF;

architecture Behavioral of FD8CE_HXILINX_FullAdder_8bit_DFF is

begin

process(C, CLR)
begin
  if (CLR='1') then
    Q <= (others => '0');
  elsif (C'event and C = '1') then
    if (CE='1') then 
      Q <= D;
    end if;
  end if;
end process;


end Behavioral;


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity FullAdder_8bit_DFF is
   port ( A    : in    std_logic_vector (7 downto 0); 
          B    : in    std_logic_vector (7 downto 0); 
          Cin  : in    std_logic; 
          CLK  : in    std_logic; 
          EN   : in    std_logic; 
          RST  : in    std_logic; 
          Cout : out   std_logic; 
          S    : out   std_logic_vector (7 downto 0));
end FullAdder_8bit_DFF;

architecture BEHAVIORAL of FullAdder_8bit_DFF is
   attribute HU_SET     : string ;
   signal A_CLK   : std_logic_vector (7 downto 0);
   signal B_CLK   : std_logic_vector (7 downto 0);
   signal XLXN_8  : std_logic;
   signal XLXN_11 : std_logic;
   signal XLXN_16 : std_logic;
   signal XLXN_19 : std_logic;
   signal XLXN_22 : std_logic;
   signal XLXN_25 : std_logic;
   signal XLXN_26 : std_logic;
   component FullAdder_1bit
      port ( A  : in    std_logic; 
             B  : in    std_logic; 
             C  : in    std_logic; 
             S  : out   std_logic; 
             CO : out   std_logic);
   end component;
   
   component FD8CE_HXILINX_FullAdder_8bit_DFF
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic_vector (7 downto 0); 
             Q   : out   std_logic_vector (7 downto 0));
   end component;
   
   attribute HU_SET of XLXI_16 : label is "XLXI_16_0";
   attribute HU_SET of XLXI_17 : label is "XLXI_17_1";
begin
   U0 : FullAdder_1bit
      port map (A=>A_CLK(0),
                B=>B_CLK(0),
                C=>Cin,
                CO=>XLXN_8,
                S=>S(0));
   
   U1 : FullAdder_1bit
      port map (A=>A_CLK(1),
                B=>B_CLK(1),
                C=>XLXN_8,
                CO=>XLXN_11,
                S=>S(1));
   
   U2 : FullAdder_1bit
      port map (A=>A_CLK(2),
                B=>B_CLK(2),
                C=>XLXN_11,
                CO=>XLXN_26,
                S=>S(2));
   
   XLXI_11 : FullAdder_1bit
      port map (A=>A_CLK(3),
                B=>B_CLK(3),
                C=>XLXN_26,
                CO=>XLXN_16,
                S=>S(3));
   
   XLXI_12 : FullAdder_1bit
      port map (A=>A_CLK(4),
                B=>B_CLK(4),
                C=>XLXN_16,
                CO=>XLXN_19,
                S=>S(4));
   
   XLXI_13 : FullAdder_1bit
      port map (A=>A_CLK(5),
                B=>B_CLK(5),
                C=>XLXN_19,
                CO=>XLXN_22,
                S=>S(5));
   
   XLXI_14 : FullAdder_1bit
      port map (A=>A_CLK(6),
                B=>B_CLK(6),
                C=>XLXN_22,
                CO=>XLXN_25,
                S=>S(6));
   
   XLXI_15 : FullAdder_1bit
      port map (A=>A_CLK(7),
                B=>B_CLK(7),
                C=>XLXN_25,
                CO=>Cout,
                S=>S(7));
   
   XLXI_16 : FD8CE_HXILINX_FullAdder_8bit_DFF
      port map (C=>CLK,
                CE=>EN,
                CLR=>RST,
                D(7 downto 0)=>A(7 downto 0),
                Q(7 downto 0)=>A_CLK(7 downto 0));
   
   XLXI_17 : FD8CE_HXILINX_FullAdder_8bit_DFF
      port map (C=>CLK,
                CE=>EN,
                CLR=>RST,
                D(7 downto 0)=>B(7 downto 0),
                Q(7 downto 0)=>B_CLK(7 downto 0));
   
end BEHAVIORAL;


