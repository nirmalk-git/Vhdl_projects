--- A 2:1 mux give out only one input to output
--- this depend upon the selection line.
---- If sel = 0  , input 1
---- If sel = 1 , input 2, 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_2to1_top is
    Port ( SEL : in  STD_LOGIC;
           A   : in  STD_LOGIC_VECTOR (3 downto 0);
           B   : in  STD_LOGIC_VECTOR (3 downto 0);
           X   : out STD_LOGIC_VECTOR (3 downto 0));
end mux_2to1_top;

architecture Behavioral of mux_2to1_top is
begin
    X <= A when (SEL = '1') else B;
end Behavioral;



---- Another example is given here. 
---- 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_4to1_top is
    Port ( SEL : in  STD_LOGIC_VECTOR (1 downto 0);     -- select input
           A   : in  STD_LOGIC_VECTOR (3 downto 0);     -- inputs
           X   : out STD_LOGIC);                        -- output
end mux_4to1_top;

architecture Behavioral of mux_4to1_top is
begin
with SEL select
    X <= A(0) when "00",
         A(1) when "01",
         A(2) when "10",
         A(3) when "11",
         '0'  when others;
end Behavioral;



---- Another example is here
--- This one use when else.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_4to1_top is
    Port ( SEL : in  STD_LOGIC_VECTOR (1 downto 0);     -- select input
           A   : in  STD_LOGIC_VECTOR (3 downto 0);     -- inputs
           X   : out STD_LOGIC);                        -- output
end mux_4to1_top;

architecture Behavioral of mux_4to1_top is
begin
with SEL select
    X <= A(0) when "00",
         A(1) when "01",
         A(2) when "10",
         A(3) when "11",
         '0'  when others;
end Behavioral;

