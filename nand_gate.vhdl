LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY nand_gate IS
    PORT(
        A : IN std_logic;
        B : IN std_logic;
        Y : OUT std_logic
    );
END nand_gate;

ARCHITECTURE behavior OF nand_gate IS
BEGIN
    -- Implement NAND gate behavior
    Y <= NOT (A AND B);
END behavior;
