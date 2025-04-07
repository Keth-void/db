library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ha is
    Port (
        A, B : in bit;
        Sum, Carry : out bit
    );
end ha;

architecture Behavioral of ha is
begin
    Sum <= A xor B;
    Carry <= A and B;
end Behavioral;
