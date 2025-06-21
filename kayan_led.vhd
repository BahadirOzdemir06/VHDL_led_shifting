library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Kayan_Led is
    Port (
        clk      : in  std_logic;
        rst_n    : in  std_logic; 
        leds     : out std_logic_vector(7 downto 0)
    );
end Kayan_Led;

architecture Behavioral of Kayan_Led is
    signal counter      : unsigned(19 downto 0) := (others => '0'); -- 1 MHz 
    signal leds_r  : std_logic_vector(7 downto 0) := "10000000";
begin

    process(clk, rst_n)
    begin
        if rst_n = '0' then
            counter     <= (others => '0');
            leds_r <= "10000000";
        elsif rising_edge(clk) then
            if counter = 999_999 then
                counter <= (others => '0');
                
                if leds_r = "00000001" then
                    leds_r <= "10000000";
                else
                    leds_r <= std_logic_vector(shift_right(unsigned(leds_r), 1));
                end if;
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;

    leds <= leds_r;
end Behavioral;
