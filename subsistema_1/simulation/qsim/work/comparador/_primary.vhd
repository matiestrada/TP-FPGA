library verilog;
use verilog.vl_types.all;
entity comparador is
    port(
        CHI             : in     vl_logic_vector(11 downto 0);
        CHD             : in     vl_logic_vector(11 downto 0);
        Umbral          : in     vl_logic_vector(11 downto 0);
        Resultado       : out    vl_logic_vector(1 downto 0)
    );
end comparador;
