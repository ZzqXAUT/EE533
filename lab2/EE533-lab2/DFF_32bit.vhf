--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : DFF_32bit.vhf
-- /___/   /\     Timestamp : 01/24/2026 19:49:41
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family spartan3a -flat -suppress -w "C:/Documents and Settings/student/EE533-lab2/DFF_32bit.sch" DFF_32bit.vhf
--Design Name: DFF_32bit
--Device: spartan3a
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesis and simulted, but it should not be modified. 
--
----- CELL FD16CE_HXILINX_DFF_32bit -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FD16CE_HXILINX_DFF_32bit is
port (
    Q   : out STD_LOGIC_VECTOR(15 downto 0);

    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC;
    D   : in STD_LOGIC_VECTOR(15 downto 0)
    );
end FD16CE_HXILINX_DFF_32bit;

architecture Behavioral of FD16CE_HXILINX_DFF_32bit is

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

entity DFF_32bit is
   port ( CLK      : in    std_logic; 
          Data     : in    std_logic_vector (31 downto 0); 
          EN       : in    std_logic; 
          RST      : in    std_logic; 
          Data_CLK : out   std_logic_vector (31 downto 0));
end DFF_32bit;

architecture BEHAVIORAL of DFF_32bit is
   attribute HU_SET     : string ;
   component FD16CE_HXILINX_DFF_32bit
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic_vector (15 downto 0); 
             Q   : out   std_logic_vector (15 downto 0));
   end component;
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_0";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_1";
begin
   XLXI_1 : FD16CE_HXILINX_DFF_32bit
      port map (C=>CLK,
                CE=>EN,
                CLR=>RST,
                D(15 downto 0)=>Data(31 downto 16),
                Q(15 downto 0)=>Data_CLK(31 downto 16));
   
   XLXI_2 : FD16CE_HXILINX_DFF_32bit
      port map (C=>CLK,
                CE=>EN,
                CLR=>RST,
                D(15 downto 0)=>Data(15 downto 0),
                Q(15 downto 0)=>Data_CLK(15 downto 0));
   
end BEHAVIORAL;


