library verilog;
use verilog.vl_types.all;
entity floodfill_para_simular_vlg_sample_tst is
    port(
        B               : in     vl_logic_vector(3 downto 0);
        d0              : in     vl_logic_vector(3 downto 0);
        d1              : in     vl_logic_vector(3 downto 0);
        d2              : in     vl_logic_vector(3 downto 0);
        d3              : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end floodfill_para_simular_vlg_sample_tst;
