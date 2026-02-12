library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder_tb is
-- Empty entity for testbench
end entity;

architecture sim of half_adder_tb is
    -- Signals to connect to the Half Adder
    signal a, b, sum, carry : std_logic;
begin
    -- 1. Instantiate the Unit Under Test (UUT)
    uut: entity work.half_adder
        port map (
            a => a,
            b => b,
            sum => sum,
            carry => carry
        );

    -- 2. Stimulus process
    process
    begin
        -- Test Case 1
        a <= '0'; b <= '0'; wait for 10 ns;
        -- Test Case 2
        a <= '0'; b <= '1'; wait for 10 ns;
        -- Test Case 3
        a <= '1'; b <= '0'; wait for 10 ns;
        -- Test Case 4
        a <= '1'; b <= '1'; wait for 10 ns;

        wait; -- Stop the process from looping forever
    end process;
end architecture;