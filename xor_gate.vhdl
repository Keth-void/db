LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY xor_gate IS
    PORT(
        A : IN std_logic;
        B : IN std_logic;
        Y : OUT std_logic
    );
END xor_gate;

ARCHITECTURE behavior OF xor_gate IS
BEGIN
    -- Implement XOR gate behavior
    Y <= A XOR B;
END behavior;
