LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY gate_tb IS
END gate_tb;

ARCHITECTURE behavior OF gate_tb IS
    -- Component declarations for the gates
    COMPONENT nand_gate
        PORT(
            A : IN std_logic;
            B : IN std_logic;
            Y : OUT std_logic
        );
    END COMPONENT;

    COMPONENT xor_gate
        PORT(
            A : IN std_logic;
            B : IN std_logic;
            Y : OUT std_logic
        );
    END COMPONENT;

    COMPONENT nor_gate
        PORT(
            A : IN std_logic;
            B : IN std_logic;
            Y : OUT std_logic
        );
    END COMPONENT;

    -- Signal declarations for inputs and outputs
    SIGNAL A, B : std_logic := '0';
    SIGNAL Y_nand, Y_xor, Y_nor : std_logic;

BEGIN
    -- Instantiate the NAND gate
    UUT_nand: nand_gate
        PORT MAP (
            A => A,
            B => B,
            Y => Y_nand
        );

    -- Instantiate the XOR gate
    UUT_xor: xor_gate
        PORT MAP (
            A => A,
            B => B,
            Y => Y_xor
        );

    -- Instantiate the NOR gate
    UUT_nor: nor_gate
        PORT MAP (
            A => A,
            B => B,
            Y => Y_nor
        );

    -- Stimulus process
    stim_proc: process
    BEGIN
        -- Test case 1: A = 0, B = 0
        A <= '0';
        B <= '0';
        WAIT FOR 10 ns;

        -- Test case 2: A = 0, B = 1
        A <= '0';
        B <= '1';
        WAIT FOR 10 ns;

        -- Test case 3: A = 1, B = 0
        A <= '1';
        B <= '0';
        WAIT FOR 10 ns;

        -- Test case 4: A = 1, B = 1
        A <= '1';
        B <= '1';
        WAIT FOR 10 ns;

        -- End of test
        WAIT;
    END PROCESS;
END behavior;
