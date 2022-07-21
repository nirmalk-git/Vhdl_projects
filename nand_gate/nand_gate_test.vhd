library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity invert_top is
    Port ( PB : in  STD_LOGIC;
           LED : out  STD_LOGIC);
end invert_top;

architecture Behavioral of invert_top is
begin
    -- invert the signal from the push button switch and route it to the LED
    LED <= not PB;
end Behavioral;




library IEEE 
use IEEE.STD_LOGIC_1164.ALL;


entity invert_top is 
	Port ( PB : in STD_LOGIC;
		   LED: out STC_LOGIC);
		   
end invert_top;



architecture Behavioral of invert_top is
begin 
	----- invert the signal from the push button switch and route it to LED
	LED <= not PB
end Behavioral




--- to connect many leds to many switches
--- have to change the STC_LOGIC into STD_LOGIC_VECTOR
Port ( SW  : in  STD_LOGIC_VECTOR (7 downto 0);
       LED : out STD_LOGIC_VECTOR (7 downto 0));
	   
