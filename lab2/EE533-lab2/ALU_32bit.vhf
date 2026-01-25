--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : ALU_32bit.vhf
-- /___/   /\     Timestamp : 01/24/2026 19:49:41
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family spartan3a -flat -suppress -w "C:/Documents and Settings/student/EE533-lab2/ALU_32bit.sch" ALU_32bit.vhf
--Design Name: ALU_32bit
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

entity ALU_32bit is
   port ( ADD_SUB : in    std_logic; 
          Cin     : in    std_logic; 
          CLK     : in    std_logic; 
          EN      : in    std_logic; 
          in1     : in    std_logic_vector (31 downto 0); 
          in2     : in    std_logic_vector (31 downto 0); 
          LRshift : in    std_logic; 
          OPcode  : in    std_logic_vector (1 downto 0); 
          RST     : in    std_logic; 
          ANS     : out   std_logic_vector (31 downto 0); 
          Cout    : out   std_logic);
end ALU_32bit;

architecture BEHAVIORAL of ALU_32bit is
   attribute INIT       : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_31  : std_logic_vector (31 downto 0);
   signal XLXN_32  : std_logic_vector (31 downto 0);
   signal XLXN_42  : std_logic_vector (31 downto 0);
   signal XLXN_43  : std_logic_vector (31 downto 0);
   signal XLXN_174 : std_logic_vector (31 downto 0);
   signal XLXN_177 : std_logic_vector (31 downto 0);
   signal XLXN_178 : std_logic;
   signal XLXN_179 : std_logic;
   signal XLXN_180 : std_logic;
   signal XLXN_183 : std_logic_vector (1 downto 0);
   signal XLXN_186 : std_logic_vector (31 downto 0);
   signal XLXN_187 : std_logic;
   component FullAdder_32bit
      port ( Cin     : in    std_logic; 
             A       : in    std_logic_vector (31 downto 0); 
             B_ini   : in    std_logic_vector (31 downto 0); 
             ADD_SUB : in    std_logic; 
             Cout    : out   std_logic; 
             S       : out   std_logic_vector (31 downto 0));
   end component;
   
   component Shift_32bit
      port ( in1 : in    std_logic_vector (31 downto 0); 
             CE  : in    std_logic; 
             S   : out   std_logic_vector (31 downto 0));
   end component;
   
   component ORGate_32bit
      port ( A : in    std_logic_vector (31 downto 0); 
             B : in    std_logic_vector (31 downto 0); 
             S : out   std_logic_vector (31 downto 0));
   end component;
   
   component AndGate_32bit
      port ( A : in    std_logic_vector (31 downto 0); 
             B : in    std_logic_vector (31 downto 0); 
             S : out   std_logic_vector (31 downto 0));
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
   
   component DFF_2bit
      port ( RST      : in    std_logic; 
             Data     : in    std_logic_vector (1 downto 0); 
             EN       : in    std_logic; 
             CLK      : in    std_logic; 
             Data_CLK : out   std_logic_vector (1 downto 0));
   end component;
   
   component DFF_32bit
      port ( RST      : in    std_logic; 
             CLK      : in    std_logic; 
             EN       : in    std_logic; 
             Data     : in    std_logic_vector (31 downto 0); 
             Data_CLK : out   std_logic_vector (31 downto 0));
   end component;
   
   component Mux_32bit_4_1
      port ( A  : in    std_logic_vector (31 downto 0); 
             B  : in    std_logic_vector (31 downto 0); 
             C  : in    std_logic_vector (31 downto 0); 
             D  : in    std_logic_vector (31 downto 0); 
             OP : in    std_logic_vector (1 downto 0); 
             S  : out   std_logic_vector (31 downto 0));
   end component;
   
begin
   XLXI_2 : FullAdder_32bit
      port map (A(31 downto 0)=>XLXN_174(31 downto 0),
                ADD_SUB=>XLXN_179,
                B_ini(31 downto 0)=>XLXN_177(31 downto 0),
                Cin=>XLXN_178,
                Cout=>XLXN_187,
                S(31 downto 0)=>XLXN_31(31 downto 0));
   
   XLXI_3 : Shift_32bit
      port map (CE=>XLXN_180,
                in1(31 downto 0)=>XLXN_174(31 downto 0),
                S(31 downto 0)=>XLXN_32(31 downto 0));
   
   XLXI_4 : ORGate_32bit
      port map (A(31 downto 0)=>XLXN_174(31 downto 0),
                B(31 downto 0)=>XLXN_177(31 downto 0),
                S(31 downto 0)=>XLXN_43(31 downto 0));
   
   XLXI_5 : AndGate_32bit
      port map (A(31 downto 0)=>XLXN_174(31 downto 0),
                B(31 downto 0)=>XLXN_177(31 downto 0),
                S(31 downto 0)=>XLXN_42(31 downto 0));
   
   XLXI_30 : FDCE
      port map (C=>CLK,
                CE=>EN,
                CLR=>RST,
                D=>Cin,
                Q=>XLXN_178);
   
   XLXI_31 : FDCE
      port map (C=>CLK,
                CE=>EN,
                CLR=>RST,
                D=>ADD_SUB,
                Q=>XLXN_179);
   
   XLXI_32 : FDCE
      port map (C=>CLK,
                CE=>EN,
                CLR=>RST,
                D=>LRshift,
                Q=>XLXN_180);
   
   XLXI_36 : DFF_2bit
      port map (CLK=>CLK,
                Data(1 downto 0)=>OPcode(1 downto 0),
                EN=>EN,
                RST=>RST,
                Data_CLK(1 downto 0)=>XLXN_183(1 downto 0));
   
   XLXI_39 : DFF_32bit
      port map (CLK=>CLK,
                Data(31 downto 0)=>in2(31 downto 0),
                EN=>EN,
                RST=>RST,
                Data_CLK(31 downto 0)=>XLXN_177(31 downto 0));
   
   XLXI_40 : DFF_32bit
      port map (CLK=>CLK,
                Data(31 downto 0)=>in1(31 downto 0),
                EN=>EN,
                RST=>RST,
                Data_CLK(31 downto 0)=>XLXN_174(31 downto 0));
   
   XLXI_41 : Mux_32bit_4_1
      port map (A(31 downto 0)=>XLXN_31(31 downto 0),
                B(31 downto 0)=>XLXN_32(31 downto 0),
                C(31 downto 0)=>XLXN_42(31 downto 0),
                D(31 downto 0)=>XLXN_43(31 downto 0),
                OP(1 downto 0)=>XLXN_183(1 downto 0),
                S(31 downto 0)=>XLXN_186(31 downto 0));
   
   XLXI_42 : DFF_32bit
      port map (CLK=>CLK,
                Data(31 downto 0)=>XLXN_186(31 downto 0),
                EN=>EN,
                RST=>RST,
                Data_CLK(31 downto 0)=>ANS(31 downto 0));
   
   XLXI_43 : FDCE
      port map (C=>CLK,
                CE=>EN,
                CLR=>RST,
                D=>XLXN_187,
                Q=>Cout);
   
end BEHAVIORAL;


