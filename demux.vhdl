library ieee;
use ieee.std_logic_1164.all;

entity demux is
    port(
        i, s0, s1 : in bit;
        o0, o1, o2, o3 : out bit
    );
end demux;

architecture behave of demux is
begin
    o0 <= (not s0) and (not s1) and i;
    o1 <= (not s0) and s1 and i;
    o2 <= s0 and (not s1) and i;
    o3 <= s0 and s1 and i;
end behave;
