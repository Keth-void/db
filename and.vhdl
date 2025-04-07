library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity and_gate is
    Port (
        A, B : in bit;
        Y : out bit
    );
end and_gate;

architecture Behavioral of and_gate is
begin
    Y <= A and B;
end Behavioral;
