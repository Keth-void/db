library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ha_tb is
end ha_tb;

architecture Behavioral of ha_tb is

    -- Component Declaration
    component ha
        Port (
            A, B : in bit;
            Sum, Carry : out bit
        );
    end component;

    -- Signals for connecting to the unit under test (UUT)
    signal A, B, Sum, Carry : bit;

begin

    -- Instantiate the Half Adder
    half_adder: ha
        Port map (
            A => A,
            B => B,
            Sum => Sum,
            Carry => Carry
        );

    -- Test vectors
    process
    begin
        A <= '0'; B <= '0';
        wait for 10 ns;

        A <= '0'; B <= '1';
        wait for 10 ns;

        A <= '1'; B <= '0';
        wait for 10 ns;

        A <= '1'; B <= '1';
        wait for 10 ns;

        wait;
    end process;

end Behavioral;
