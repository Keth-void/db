library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity pgen is
    Port ( 
           A,B,C:in bit;
           Pe,Po:out bit);
end pgen;

architecture Behavioral of pgen is
begin
    Pe <= A xor (B xor C);
    Po <= not(A xor(B xor C));
end Behavioral;
