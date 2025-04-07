library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity fa_tb is
end fa_tb;

architecture Behavioral of fa_tb is

    -- Component Declaration
    component fa
        Port (
            A, B, Cin : in bit;
            Sum, Cout : out bit
        );
    end component;

    -- Signals for connecting to the unit under test (UUT)
    signal A, B, Cin, Sum, Cout : bit;

begin

    -- Instantiate the Full Adder
    fadder: fa
        Port map (
            A => A,
            B => B,
            Cin => Cin,
            Sum => Sum,
            Cout => Cout
        );

    -- Test vectors
    process
    begin
        A <= '0'; B <= '0'; Cin <= '0';
        wait for 10 ns;

        A <= '0'; B <= '0'; Cin <= '1';
        wait for 10 ns;

        A <= '0'; B <= '1'; Cin <= '0';
        wait for 10 ns;

        A <= '0'; B <= '1'; Cin <= '1';
        wait for 10 ns;

        A <= '1'; B <= '0'; Cin <= '0';
        wait for 10 ns;

        A <= '1'; B <= '0'; Cin <= '1';
        wait for 10 ns;

        A <= '1'; B <= '1'; Cin <= '0';
        wait for 10 ns;

        A <= '1'; B <= '1'; Cin <= '1';
        wait for 10 ns;

        wait;
    end process;

end Behavioral;
