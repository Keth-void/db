library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity pche_tb is
end pche_tb;

architecture Behavioral of pche_tb is

    -- Component Declaration
    component pche
        Port (
            A, B, C, D : in bit;
            even_parity : out bit;
            odd_parity : out bit
        );
    end component;

    -- Signals for connecting to the unit under test (UUT)
    signal A, B, C, D, even_parity, odd_parity : bit;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: pche
        Port map (
            A => A, 
            B => B, 
            C => C, 
            D => D, 
            even_parity => even_parity, 
            odd_parity => odd_parity
        );

    -- Stimulus process
    stim_proc: process
    begin
        -- Test case 1: A=0, B=0, C=0, D=0, even_parity=0, odd_parity=1
        A <= '0'; B <= '0'; C <= '0'; D <= '0';
        wait for 10 ns;

        -- Test case 2: A=0, B=0, C=0, D=1, even_parity=1, odd_parity=0
        A <= '0'; B <= '0'; C <= '0'; D <= '1';
        wait for 10 ns;

        -- Test case 3: A=0, B=0, C=1, D=0, even_parity=1, odd_parity=0
        A <= '0'; B <= '0'; C <= '1'; D <= '0';
        wait for 10 ns;

        -- Test case 4: A=0, B=1, C=0, D=0, even_parity=1, odd_parity=0
        A <= '0'; B <= '1'; C <= '0'; D <= '0';
        wait for 10 ns;

        -- Test case 5: A=1, B=0, C=0, D=0, even_parity=1, odd_parity=0
        A <= '1'; B <= '0'; C <= '0'; D <= '0';
        wait for 10 ns;

        -- Test case 6: A=1, B=1, C=1, D=0, even_parity=1, odd_parity=0
        A <= '1'; B <= '1'; C <= '1'; D <= '0';
        wait for 10 ns;

        -- Test case 7: A=1, B=1, C=1, D=1, even_parity=0, odd_parity=1
        A <= '1'; B <= '1'; C <= '1'; D <= '1';
        wait for 10 ns;

        assert false report "Reached end of test.";
        wait;
    end process;

end Behavioral;
