library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity contador_2000 is
    Port ( clk : in STD_LOGIC;             -- Señal de reloj
           rst : in STD_LOGIC;             -- Señal de reset (para reiniciar el contador)
           count_max_reached : out STD_LOGIC );  -- Indica si se ha alcanzado el valor máximo
end contador_2000;

architecture Behavioral of contador_2000 is
    signal count : STD_LOGIC_VECTOR(11 downto 0) := (others => '0'); -- Registro para el contador
begin

    process(clk, rst)
    begin
        if rst = '1' then
            count <= (others => '0');  -- Reset: pone el contador en 0
        elsif rising_edge(clk) then
            if count = "111110100000" then  -- 4000 en binario (12 bits)
                count <= (others => '0');  -- Reset el contador a 0 cuando llega a 2000
                count_max_reached <= '1';  -- Indicamos que el contador ha alcanzado el valor máximo
            else
                count <= count + 1;  -- Incrementamos el contador
                count_max_reached <= '0';  -- Mientras no llegue a 2000, seguimos sin indicar el máximo
            end if;
        end if;
    end process;

   

end Behavioral;