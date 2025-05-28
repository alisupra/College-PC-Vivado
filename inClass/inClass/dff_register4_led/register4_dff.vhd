library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity register4 is
    Port ( D : in STD_LOGIC;
           Clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           Q : out STD_LOGIC;
           Qb : out STD_LOGIC;
           led1: out STD_LOGIC;
           led2: out STD_LOGIC;
           led3: out STD_LOGIC;
           led4: out STD_LOGIC
           );
end register4;

architecture Structural of register4 is
component D_F_S is
    port(
        D : in STD_LOGIC;
        Clk : in STD_LOGIC;
        Q : out STD_LOGIC;
        Qb : out STD_LOGIC
    );
end component;

signal c: std_logic;
signal l1, l2, l3, l4 : std_logic;
signal q1, q2, q3, q4 : std_logic;


begin

D_F_S1 : D_F_S port map ( D => D, clk => clk, q=>q1);
D_F_S2 : D_F_S port map ( D => q1, clk => clk, q=>q2 );
D_F_S3 : D_F_S port map ( D => q2, clk => clk, q=>q3 );
D_F_S4 : D_F_S port map ( D => q3, clk => clk, q=>q4 );

Q <= q4;
Qb <= not q4;
led1 <= q1;
led2 <= q2;
led3 <= q3;
led4 <= q4;

end Structural;