library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity or_gate is
    Port (
        A, B : in bit;
        Y : out bit
    );
end or_gate;

architecture Behavioral of or_gate is
begin
    Y <= A or B;
end Behavioral;
