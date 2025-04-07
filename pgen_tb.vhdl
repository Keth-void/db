library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity pgen_tb is
end pgen_tb;

architecture test of pgen_tb is
    component pgen
        Port ( 
               A,B,C: in bit;
               Pe,Po:out bit);
    end component;

    signal A,B,C,Pe,Po:bit;

begin
    pgenerator:pgen port map(
        A=>A,B=>B,C=>C,Pe=>Pe,Po=>Po
    );
    process begin
    A<='0';
    B<='0';
    C<='0';
    wait for 1 ns;
    A<='0';
    B<='0';
    C<='1';
    wait for 1 ns;
    A<='0';
    B<='1';
    C<='0';
    wait for 1 ns;
    A<='0';
    B<='1';
    C<='1';
    wait for 1 ns;
    A<='1';
    B<='0';
    C<='0';
    wait for 1 ns;
    A<='1';
    B<='0';
    C<='1';
    wait for 1 ns;
    A<='1';
    B<='1';
    C<='0';
    wait for 1 ns;
    A<='1';
    B<='1';
    C<='1';
    wait for 1 ns;
    assert false report "reached enb of test";
    wait;
    end process;
end test;
