library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity not_gate is
    Port (
        A : in bit;
        Y : out bit
    );
end not_gate;

architecture Behavioral of not_gate is
begin
    Y <= not A;
end Behavioral;
