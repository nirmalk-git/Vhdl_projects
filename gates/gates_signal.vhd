-- gate code using the signals 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nand_nor_top is
    Port ( A1 : in  STD_LOGIC;      -- NAND gate input 1
           A2 : in  STD_LOGIC;      -- NAND gate input 2
           X1 : out  STD_LOGIC;     -- NAND gate output
           B1 : in  STD_LOGIC;      -- NOR gate input 1
           B2 : in  STD_LOGIC;      -- NOR gate input 2
           Y1 : out  STD_LOGIC);    -- NOR gate output
end nand_nor_top;

architecture Behavioral of nand_nor_top is
begin
X1 <= A1 nand A2;    -- 2 input NAND gate
Y1 <= B1 nor B2;     -- 2 input NOR gate
end Behavioral;


------ Compensation for the  inverting operation in the switches.


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nand_nor_top is
    Port ( IN1 : in  STD_LOGIC;
           IN2 : in  STD_LOGIC;
           IN3 : in  STD_LOGIC;
           IN4 : in  STD_LOGIC;
           OUT1 : out  STD_LOGIC;
           OUT2 : out  STD_LOGIC);
end nand_nor_top;

architecture Behavioral of nand_nor_top is
    signal A1 : STD_LOGIC;
    signal A2 : STD_LOGIC;
    signal X1 : STD_LOGIC;
    signal B1 : STD_LOGIC;
    signal B2 : STD_LOGIC;
    signal Y1 : STD_LOGIC;
begin

X1 <= A1 nand A2;
Y1 <= B1 nor B2;

-- compensation for inverting inputs and outputs
A1   <= not IN1;
A2   <= not IN2;
OUT1 <= not X1;
B1   <= not IN3;
B2   <= not IN4;
OUT2 <= not Y1;

end Behavioral;