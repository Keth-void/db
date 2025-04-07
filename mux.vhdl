library ieee;
use ieee.std_logic_1164.all;
entity mux is
port(
	s0, s1, i0, i1, i2, i3: in bit;
	o: out bit
);
end mux;

architecture behave of mux is
begin
o<=((not s0) and (not s1) and i0) or ((not s0) and s1 and i1) or (s0 and (not s1) and i2) or (s0 and s1 and i3);
end behave;