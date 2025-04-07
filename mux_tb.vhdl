library ieee;
use ieee.std_logic_1164.all;
entity mux_tb is
end mux_tb;
architecture test of mux_tb is 
component mux
port
(
	i0,i1,i2,i3,s0,s1:in bit; 
	o: out bit 
);
end component;
signal i0,i1,i2,i3,s0,s1,o:bit;
begin
	multiplexer4to1:mux port map(
	i0=>i0,i1=>i1,i2=>i2,i3=>i3,
	s0=>s0,s1=>s1,o=>o);
	process begin
		s0<='0';
		s1<='0';
		i0<='1';
		i1<='0';
		i2<='0';
		i3<='0';
		wait for 1 ns;
		s0<='0';
		s1<='1';
		i0<='0';
		i1<='1';
		i2<='0';
		i3<='0';
		wait for 1 ns;
		s0<='1';
		s1<='0';
		i0<='0';
		i1<='0';
		i2<='1';
		i3<='0';
		wait for 1 ns;
		s0<='1';
		s1<='1';
		i0<='0';
		i1<='0';
		i2<='0';
		i3<='1';
		wait for 1 ns;
		assert false report "Reached end of test";
		wait;
	end process;
end test;