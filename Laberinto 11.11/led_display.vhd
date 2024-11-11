library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity led_display is
    Port (
        clk : in std_logic;               -- Reloj de entrada
        reset : in std_logic;             -- Reset
        channel1 : in std_logic_vector(11 downto 0); -- Primer canal de 12 bits
        channel2 : in std_logic_vector(11 downto 0); -- Segundo canal de 12 bits
        leds : out std_logic_vector(7 downto 0) -- LEDs de salida
    );
end led_display;

architecture Behavioral of led_display is
    signal counter : integer := 0;                  -- Contador para los 2 segundos
    signal select_channel : std_logic := '0';       -- Señal para alternar entre canales
    constant TIME_LIMIT : integer := 100000000;     -- Tiempo límite (2 segundos con reloj de 50 MHz)
begin
    process(clk, reset)
    begin
        if reset = '1' then
            counter <= 0;
            select_channel <= '0';
        elsif rising_edge(clk) then
            if counter = TIME_LIMIT then
                counter <= 0;
                select_channel <= not select_channel; -- Cambia de canal cada 2 segundos
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;

    -- Muestra los 8 bits más significativos del canal correspondiente en los LEDs
    leds <= channel1(11 downto 4) when select_channel = '0' else channel2(11 downto 4);
    
end Behavioral;
