library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity fa is
    Port (
        A, B, Cin : in bit;
        Sum, Cout : out bit
    );
end fa;

architecture Behavioral of fa is
begin
    Sum <= A xor B xor Cin;
    Cout <= (A and B) or (Cin and (A xor B));
end Behavioral;
