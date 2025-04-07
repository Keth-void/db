library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 

entity pa is
    port (
        A    : in STD_LOGIC_VECTOR(3 downto 0); 
        B    : in STD_LOGIC_VECTOR(3 downto 0); 
        Cin  : in STD_LOGIC; 
        S    : out STD_LOGIC_VECTOR(3 downto 0); 
        Cout : out STD_LOGIC
    ); 
end pa; 

architecture behave of pa is 
begin 
    process (A, B, Cin) 
        variable t: STD_LOGIC; 
    begin 
        t := Cin; 
        for i in 0 to 3 loop 
            S(i) <= A(i) XOR B(i) XOR t; 
            t := (A(i) and B(i)) or ((t and A(i)) or (t and B(i))); 
        end loop; 
        Cout <= t; 
    end process; 
end behave;
