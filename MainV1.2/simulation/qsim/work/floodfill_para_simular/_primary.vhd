library verilog;
use verilog.vl_types.all;
entity floodfill_para_simular is
    port(
        Cout            : out    vl_logic;
        d2              : in     vl_logic_vector(3 downto 0);
        d0              : in     vl_logic_vector(3 downto 0);
        d1              : in     vl_logic_vector(3 downto 0);
        d3              : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        pos             : out    vl_logic_vector(1 downto 0);
        S               : out    vl_logic_vector(3 downto 0)
    );
end floodfill_para_simular;
