library ieee;
use ieee.std_logic_1164.all;
entity demux_tb is
end demux_tb;
architecture test of demux_tb is 
component demux
port
(
	i,s0,s1:in bit; 
	o0,o1,o2,o3: out bit 
);
end component;
signal i,s0,s1,o0,o1,o2,o3:bit;
begin
	demultiplexer1to4:demux port map(
	i=>i,o0=>o0,o1=>o1,o2=>o2,o3=>o3,
	s0=>s0,s1=>s1);
	process begin
		s0<='0';
		s1<='0';
		i<='1';
		wait for 1 ns;
		s0<='0';
		s1<='1';
		i<='1';
		wait for 1 ns;
		s0<='1';
		s1<='0';
		i<='1';
		wait for 1 ns;
		s0<='1';
		s1<='1';
		i<='1';
		wait for 1 ns;
		assert false report "Reached end of test";
		wait;
	end process;
end test;

