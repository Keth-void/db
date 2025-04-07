library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity pche is
    Port (
        A, B, C, D : in bit;
        even_parity : out bit;
        odd_parity : out bit
    );
end pche;

architecture Behavioral of pche is
begin
    even_parity <= A xor B xor C xor D;
    odd_parity <= not (A xor B xor C xor D);
end Behavioral;
