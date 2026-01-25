--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : INV_32bit.vhf
-- /___/   /\     Timestamp : 01/24/2026 19:49:42
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family spartan3a -flat -suppress -w "C:/Documents and Settings/student/EE533-lab2/INV_32bit.sch" INV_32bit.vhf
--Design Name: INV_32bit
--Device: spartan3a
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesis and simulted, but it should not be modified. 
--
----- CELL INV16_HXILINX_INV_32bit -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity INV16_HXILINX_INV_32bit is
port(
    O  : out std_logic_vector(15 downto 0);

    I  : in std_logic_vector(15 downto 0)
  );
end INV16_HXILINX_INV_32bit;

architecture INV16_HXILINX_INV_32bit_V of INV16_HXILINX_INV_32bit is
begin
  O <= not I ;
end INV16_HXILINX_INV_32bit_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity INV_32bit is
   port ( Cin  : in    std_logic_vector (31 downto 0); 
          Cout : out   std_logic_vector (31 downto 0));
end INV_32bit;

architecture BEHAVIORAL of INV_32bit is
   attribute HU_SET     : string ;
   component INV16_HXILINX_INV_32bit
      port ( I : in    std_logic_vector (15 downto 0); 
             O : out   std_logic_vector (15 downto 0));
   end component;
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_0";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_1";
begin
   XLXI_1 : INV16_HXILINX_INV_32bit
      port map (I(15 downto 0)=>Cin(31 downto 16),
                O(15 downto 0)=>Cout(31 downto 16));
   
   XLXI_2 : INV16_HXILINX_INV_32bit
      port map (I(15 downto 0)=>Cin(15 downto 0),
                O(15 downto 0)=>Cout(15 downto 0));
   
end BEHAVIORAL;


