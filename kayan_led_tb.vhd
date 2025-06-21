library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity Kayan_Led_tb is
end Kayan_Led_tb;

architecture Behavioral of Kayan_Led_tb is

component Kayan_Led
   Port (
        clk      : in  std_logic;
        rst_n    : in  std_logic; 
        leds     : out std_logic_vector(7 downto 0)
    );
end component;

signal clk  : std_logic;
signal rst_n: std_logic;
signal leds : std_logic_vector(7 downto 0);
constant clk_period : time := 1 us;
begin
uut: Kayan_Led 
     port map(
            clk   => clk,
            rst_n =>  rst_n,
            leds  => leds 
             );
             
  
  clock : process
   begin 
   clk <= '0';
   wait for clk_period/2;
   clk <= '1';
    wait for clk_period/2;
   end process;
   
   stimuli_proc: process
   begin 
   rst_n <= '0';
   wait for 1 sec;
   rst_n <= '1';
   wait for 19 sec;
   rst_n <= '0'; -- işlem sırasında reset atılarak resetin doğru şekilde çalıştığından emin olunmuştur
   wait for 500 ms;
   rst_n <= '1';
   wait for 10 sec;
   wait;
   end process;
   
    

end Behavioral;
