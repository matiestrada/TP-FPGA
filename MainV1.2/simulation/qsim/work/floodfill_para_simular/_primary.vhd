library verilog;
use verilog.vl_types.all;
entity floodfill_para_simular is
    port(
        Dir_Min12       : out    vl_logic_vector(1 downto 0);
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        Dir_Min13       : out    vl_logic_vector(1 downto 0);
        Dir_Min14       : out    vl_logic_vector(1 downto 0);
        Dir_Min15       : out    vl_logic_vector(1 downto 0);
        Dir_Min2        : out    vl_logic_vector(1 downto 0);
        Dir_Min3        : out    vl_logic_vector(1 downto 0);
        Dir_Min4        : out    vl_logic_vector(1 downto 0);
        Dir_Min5        : out    vl_logic_vector(1 downto 0);
        Dir_Min6        : out    vl_logic_vector(1 downto 0);
        Dir_Min7        : out    vl_logic_vector(1 downto 0);
        Dir_Min8        : out    vl_logic_vector(1 downto 0);
        Dir_Min9        : out    vl_logic_vector(1 downto 0);
        \Dir_Min_10_\   : out    vl_logic_vector(1 downto 0);
        \Dir_Min_11_\   : out    vl_logic_vector(1 downto 0);
        \Dir_Min_1_\    : out    vl_logic_vector(1 downto 0);
        Mi_Peso115      : out    vl_logic_vector(3 downto 0);
        Mi_Peso12       : out    vl_logic_vector(3 downto 0);
        Mi_Peso13       : out    vl_logic_vector(3 downto 0);
        Mi_Peso14       : out    vl_logic_vector(3 downto 0);
        Mi_Peso15       : out    vl_logic_vector(3 downto 0);
        Mi_Peso2        : out    vl_logic_vector(3 downto 0);
        Mi_Peso3        : out    vl_logic_vector(3 downto 0);
        Mi_Peso4        : out    vl_logic_vector(3 downto 0);
        Mi_Peso5        : out    vl_logic_vector(3 downto 0);
        Mi_Peso6        : out    vl_logic_vector(3 downto 0);
        Mi_Peso7        : out    vl_logic_vector(3 downto 0);
        Mi_Peso8        : out    vl_logic_vector(3 downto 0);
        Mi_Peso9        : out    vl_logic_vector(3 downto 0);
        \Mi_Peso_10_\   : out    vl_logic_vector(3 downto 0);
        \Mi_Peso_11_\   : out    vl_logic_vector(3 downto 0);
        \Mi_Peso_1_\    : out    vl_logic_vector(3 downto 0)
    );
end floodfill_para_simular;
