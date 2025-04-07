library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 

entity pa_tb is 
end pa_tb; 

architecture test of pa_tb is 
    component pa 
        port ( 
            A    : in STD_LOGIC_VECTOR(3 downto 0); 
            B    : in STD_LOGIC_VECTOR(3 downto 0); 
            Cin  : in STD_LOGIC; 
            S    : out STD_LOGIC_VECTOR(3 downto 0); 
            Cout : out STD_LOGIC
        ); 
    end component; 

    -- input signals
    signal A, B : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal Cin  : STD_LOGIC := '0';

    -- output signals
    signal S    : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal Cout : STD_LOGIC;

begin 
    -- Instantiate the Unit Under Test (UUT)
    UUT: pa port map(
        A    => A, 
        B    => B, 
        Cin  => Cin, 
        S    => S, 
        Cout => Cout
    ); 

    -- Stimulus process
    process 
    begin 
        -- Test 1
        A <= "0101"; 
        B <= "0100"; 
        Cin <= '0'; 
        wait for 20 ns; 
        
        -- Test 2
        A <= "1101"; 
        B <= "0011"; 
        Cin <= '1'; 
        wait for 20 ns; 
        
        -- Test 3
        A <= "1100"; 
        B <= "1001"; 
        Cin <= '1'; 
        wait for 20 ns; 
        
        -- Test 4
        A <= "1010"; 
        B <= "1001"; 
        Cin <= '1'; 
        wait for 20 ns; 
        
        -- End the test
        wait; 
    end process; 
end test;
