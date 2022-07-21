---- how does a decoder works 
-- decoders will have n input and 2^n output
-- for 2:4 decoder this is how it works. 
-- his 2 to 4 decoder will switch on one of the four active low outputs, 
--There will be also an enable pin which enable the decoder.
-- depending on the binary value of the two inputs and if the enable input is high.


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- pins are input, enable and output
entity decode_2to4_top is
    Port ( A  : in  STD_LOGIC_VECTOR (1 downto 0);  -- 2-bit input
           X  : out STD_LOGIC_VECTOR (3 downto 0);  -- 4-bit output
           EN : in  STD_LOGIC);                     -- enable input
end decode_2to4_top;


--- this is the architecture of the program.
architecture Behavioral of decode_2to4_top is

begin
process (A, EN)
begin
    X <= "1111";        -- default output value
    if (EN = '1') then  -- active high enable pin
        case A is
            when "00" => X(0) <= '0';
            when "01" => X(1) <= '0';
            when "10" => X(2) <= '0';
            when "11" => X(3) <= '0';
            when others => X <= "1111";
        end case;
    end if;
end process;
end Behavioral;

----------------------------------------------------------------------------------------------
---- This code uses with the not operation ---------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decode_2to4_top is
    Port ( A  : in  STD_LOGIC_VECTOR (1 downto 0);  -- 2-bit input
           X  : out STD_LOGIC_VECTOR (3 downto 0);  -- 4-bit output
           EN : in  STD_LOGIC);                     -- enable input
end decode_2to4_top;

architecture Behavioral of decode_2to4_top is
signal B : STD_LOGIC_VECTOR(1 downto 0);
begin

B <= not A;

process (B, EN)
begin
    X <= "1111";        -- default output value
    if (EN = '1') then  -- active high enable pin
        case B is
            when "00" => X(0) <= '0';
            when "01" => X(1) <= '0';
            when "10" => X(2) <= '0';
            when "11" => X(3) <= '0';
            when others => X <= "1111";
        end case;
    end if;
end process;
end Behavioral;


---------------------------------------------------------------------------------------------
---------- here the code used the Process statement. Inside the process statement the code runs 
-- sequentially. In the paranthesis of the process there are sensitivity list which enables 
-- process contains a sensitivity list also. If any of the input in the sensitivity list changes 
-- the code is executed but sequentially.


--- VHDL if statement. 
-- it is same as the python one. If the statement inside the paranthesis is bolean 1 the 
-- below statement in the if is executed. 

