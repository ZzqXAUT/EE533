
-- VHDL Instantiation Created from source file dualport9B.vhd -- 17:56:32 01/31/2026
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT dualport9B
	PORT(
		addra : IN std_logic_vector(7 downto 0);
		addrb : IN std_logic_vector(7 downto 0);
		clka : IN std_logic;
		clkb : IN std_logic;
		dina : IN std_logic_vector(71 downto 0);
		wea : IN std_logic;          
		doutb : OUT std_logic_vector(71 downto 0)
		);
	END COMPONENT;

	Inst_dualport9B: dualport9B PORT MAP(
		addra => ,
		addrb => ,
		clka => ,
		clkb => ,
		dina => ,
		doutb => ,
		wea => 
	);


