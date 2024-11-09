library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comparador is
    Port ( 
        CHI 		: in  STD_LOGIC_VECTOR (11 downto 0);  -- Distancia en el lado izquierdo
        CHD   		: in  STD_LOGIC_VECTOR (11 downto 0);  -- Distancia en el lado derecho
        --Umbral		: in  STD_LOGIC_VECTOR (11 downto 0);  -- Valor umbral de comparación
		  Resultado	: out STD_LOGIC_VECTOR (1 downto 0) --Vector de 2 bits de salida
    );
end comparador;

architecture Behavioral of comparador is
	
	constant Umbral : std_LOGIC_VECTOR(11 downto 0) := "001001011000";

begin
    process(CHI, CHD)
    begin
		if((CHI > Umbral) and (CHD > Umbral)) then
			Resultado <= "00"; -- El auto va centrado.
		elsif((CHI > Umbral) and (CHD < Umbral)) then
			Resultado <= "01"; -- El auto se acerca a la pared derecha.
		elsif((CHI < Umbral) and (CHD > Umbral)) then
			Resultado <= "10";
		else
			Resultado <= "11";
		end if;
	end process;
end Behavioral;

