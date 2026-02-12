library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder is
    Port ( a     : in  STD_LOGIC;
           b     : in  STD_LOGIC;
           sum   : out STD_LOGIC;
           carry : out STD_LOGIC);
end entity half_adder;

architecture Behavioral of half_adder is
begin
    sum   <= a xor b;
    carry <= a and b;
end architecture Behavioral;