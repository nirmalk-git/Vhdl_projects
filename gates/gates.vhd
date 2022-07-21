library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and_or_top is
    Port ( INA1 : in  STD_LOGIC;    -- AND gate input
           INA2 : in  STD_LOGIC;    -- AND gate input
           OA   : out STD_LOGIC; ):   -- AND gate output
end and_or_top;

architecture Behavioral of and_or_top is
begin
    OA <= INA1 and INA2;    -- 2 input AND gate
end Behavioral;




-- how to control many lines through the gate

library IEEE;
use IEEE.STD_LOGIC_1164.all


entity and_or_top is 
	Port ( INA1 : in STD_LOGIC_VECTOR(7 downto 0);
	       INA2 : in STD_LOGIC_VECTOR(7 downto 0);
		   QA   : out STD_LOGIC_VECTOR(7 downto 0); ):
		   
	end and_or_top
	
	
architecture Behavioral of and_or_top is 
begin
	QA(0) <= INA1(0) and INA2(0);
	QA(1) <= INA1(1) or INA2(1);
	QA(2) <= INA1(2) nor INA2(2);
	QA(3) <= INA1(3) xor INA2(3);
	QA(4) <= INA1(4) xnor INA2(4);
	QA(5) <= INA1(5) nand INA2(5);
	QA(6) <= INA1(6) nor INA2(6);
	QA(7) <= INA1(7) not INA2(7);
end Behavioral;


