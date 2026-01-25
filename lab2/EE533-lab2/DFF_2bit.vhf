--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : DFF_2bit.vhf
-- /___/   /\     Timestamp : 01/24/2026 19:49:41
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family spartan3a -flat -suppress -w "C:/Documents and Settings/student/EE533-lab2/DFF_2bit.sch" DFF_2bit.vhf
--Design Name: DFF_2bit
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

entity DFF_2bit is
   port ( CLK      : in    std_logic; 
          Data     : in    std_logic_vector (1 downto 0); 
          EN       : in    std_logic; 
          RST      : in    std_logic; 
          Data_CLK : out   std_logic_vector (1 downto 0));
end DFF_2bit;

architecture BEHAVIORAL of DFF_2bit is
   attribute INIT       : string ;
   attribute BOX_TYPE   : string ;
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
   
begin
   XLXI_5 : FDCE
      port map (C=>CLK,
                CE=>EN,
                CLR=>RST,
                D=>Data(1),
                Q=>Data_CLK(1));
   
   XLXI_6 : FDCE
      port map (C=>CLK,
                CE=>EN,
                CLR=>RST,
                D=>Data(0),
                Q=>Data_CLK(0));
   
end BEHAVIORAL;


