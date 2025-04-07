LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY nor_gate IS
    PORT(
        A : IN std_logic;
        B : IN std_logic;
        Y : OUT std_logic
    );
END nor_gate;

ARCHITECTURE behavior OF nor_gate IS
BEGIN
    -- Implement NOR gate behavior
    Y <= NOT (A OR B);
END behavior;
