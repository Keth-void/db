library ieee;
use ieee.std_logic_1164.all;

entity andag is
    port(
        a:in bit;
        b:in bit;
        c:out bit
);
end andag;

architecture behave of andag is
begin
process(a,b)
begin
c<=a and b;
end process;
end behave;