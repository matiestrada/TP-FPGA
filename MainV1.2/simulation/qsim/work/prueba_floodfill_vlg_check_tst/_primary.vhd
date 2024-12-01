library verilog;
use verilog.vl_types.all;
entity prueba_floodfill_vlg_check_tst is
    port(
        dir_min         : in     vl_logic_vector(1 downto 0);
        Dir_Min2        : in     vl_logic_vector(1 downto 0);
        Dir_Min3        : in     vl_logic_vector(1 downto 0);
        Dir_Min4        : in     vl_logic_vector(1 downto 0);
        Dir_Min5        : in     vl_logic_vector(1 downto 0);
        Dir_Min6        : in     vl_logic_vector(1 downto 0);
        Dir_Min7        : in     vl_logic_vector(1 downto 0);
        Dir_Min8        : in     vl_logic_vector(1 downto 0);
        Dir_Min9        : in     vl_logic_vector(1 downto 0);
        Dir_Min12       : in     vl_logic_vector(1 downto 0);
        Dir_Min13       : in     vl_logic_vector(1 downto 0);
        Dir_Min14       : in     vl_logic_vector(1 downto 0);
        Dir_Min15       : in     vl_logic_vector(1 downto 0);
        \Dir_Min_1_\    : in     vl_logic_vector(1 downto 0);
        \Dir_Min_10_\   : in     vl_logic_vector(1 downto 0);
        \Dir_Min_11_\   : in     vl_logic_vector(1 downto 0);
        Mi_Peso2        : in     vl_logic_vector(3 downto 0);
        Mi_Peso3        : in     vl_logic_vector(3 downto 0);
        Mi_Peso4        : in     vl_logic_vector(3 downto 0);
        Mi_Peso5        : in     vl_logic_vector(3 downto 0);
        Mi_Peso6        : in     vl_logic_vector(3 downto 0);
        Mi_Peso7        : in     vl_logic_vector(3 downto 0);
        Mi_Peso8        : in     vl_logic_vector(3 downto 0);
        Mi_Peso9        : in     vl_logic_vector(3 downto 0);
        Mi_Peso12       : in     vl_logic_vector(3 downto 0);
        Mi_Peso13       : in     vl_logic_vector(3 downto 0);
        Mi_Peso14       : in     vl_logic_vector(3 downto 0);
        Mi_Peso15       : in     vl_logic_vector(3 downto 0);
        \Mi_Peso_0_\    : in     vl_logic_vector(3 downto 0);
        \Mi_Peso_1_\    : in     vl_logic_vector(3 downto 0);
        \Mi_Peso_10_\   : in     vl_logic_vector(3 downto 0);
        \Mi_Peso_11_\   : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end prueba_floodfill_vlg_check_tst;