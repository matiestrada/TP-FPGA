library verilog;
use verilog.vl_types.all;
entity floodfill_para_simular_vlg_check_tst is
    port(
        Cout            : in     vl_logic;
        pos             : in     vl_logic_vector(1 downto 0);
        S               : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end floodfill_para_simular_vlg_check_tst;
