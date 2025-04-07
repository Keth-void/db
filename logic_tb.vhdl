library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity tb_logic_gates is
end tb_logic_gates;

architecture Behavioral of tb_logic_gates is

    -- Component Declarations
    component and_gate
        Port (
            A, B : in bit;
            Y : out bit
        );
    end component;

    component or_gate
        Port (
            A, B : in bit;
            Y : out bit
        );
    end component;

    component not_gate
        Port (
            A : in bit;
            Y : out bit
        );
    end component;

    -- Signals for connecting to the units under test (UUTs)
    signal A, B, Y_and, Y_or, Y_not : bit;

begin

    -- Instantiate AND Gate
    and_gate_inst: and_gate
        Port map (
            A => A,
            B => B,
            Y => Y_and
        );

    -- Instantiate OR Gate
    or_gate_inst: or_gate
        Port map (
            A => A,
            B => B,
            Y => Y_or
        );

    -- Instantiate NOT Gate
    not_gate_inst: not_gate
        Port map (
            A => A,
            Y => Y_not
        );

    -- Test vectors
    process
    begin
        -- Test AND Gate
        A <= '0'; B <= '0';
        wait for 10 ns;
        A <= '0'; B <= '1';
        wait for 10 ns;
        A <= '1'; B <= '0';
        wait for 10 ns;
        A <= '1'; B <= '1';
        wait for 10 ns;

        -- Test OR Gate
        A <= '0'; B <= '0';
        wait for 10 ns;
        A <= '0'; B <= '1';
        wait for 10 ns;
        A <= '1'; B <= '0';
        wait for 10 ns;
        A <= '1'; B <= '1';
        wait for 10 ns;

        -- Test NOT Gate
        A <= '0';
        wait for 10 ns;
        A <= '1';
        wait for 10 ns;

        wait;
    end process;

end Behavioral;
