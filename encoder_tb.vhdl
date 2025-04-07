library ieee;
use ieee.std_logic_1164.all;

entity encoder_tb is
end encoder_tb;

architecture test of encoder_tb is
    component encoder
        port(
            i0, i1, i2, i3, i4, i5, i6, i7 : in bit;
            o0, o1, o2 : out bit
        );
    end component;
    
    signal i0, i1, i2, i3, i4, i5, i6, i7, o0, o1, o2 : bit;
begin
    encoder8t03: encoder port map(
        i0 => i0, i1 => i1, i2 => i2, i3 => i3, i4 => i4, i5 => i5, i6 => i6, i7 => i7,
        o0 => o0, o1 => o1, o2 => o2
    );
    
    process begin
        i0 <= '1'; i1 <= '0'; i2 <= '0'; i3 <= '0'; i4 <= '0'; i5 <= '0'; i6 <= '0'; i7 <= '0'; wait for 1 ns;
        i0 <= '0'; i1 <= '1'; i2 <= '0'; i3 <= '0'; i4 <= '0'; i5 <= '0'; i6 <= '0'; i7 <= '0'; wait for 1 ns;
        i0 <= '0'; i1 <= '0'; i2 <= '1'; i3 <= '0'; i4 <= '0'; i5 <= '0'; i6 <= '0'; i7 <= '0'; wait for 1 ns;
        i0 <= '0'; i1 <= '0'; i2 <= '0'; i3 <= '1'; i4 <= '0'; i5 <= '0'; i6 <= '0'; i7 <= '0'; wait for 1 ns;
        i0 <= '0'; i1 <= '0'; i2 <= '0'; i3 <= '0'; i4 <= '1'; i5 <= '0'; i6 <= '0'; i7 <= '0'; wait for 1 ns;
        i0 <= '0'; i1 <= '0'; i2 <= '0'; i3 <= '0'; i4 <= '0'; i5 <= '1'; i6 <= '0'; i7 <= '0'; wait for 1 ns;
        i0 <= '0'; i1 <= '0'; i2 <= '0'; i3 <= '0'; i4 <= '0'; i5 <= '0'; i6 <= '1'; i7 <= '0'; wait for 1 ns;
        i0 <= '0'; i1 <= '0'; i2 <= '0'; i3 <= '0'; i4 <= '0'; i5 <= '0'; i6 <= '0'; i7 <= '1'; wait for 1 ns;
        assert false report "Reached end";
        wait;
    end process;
end test;
