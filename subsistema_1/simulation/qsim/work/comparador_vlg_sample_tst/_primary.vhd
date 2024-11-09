library verilog;
use verilog.vl_types.all;
entity comparador_vlg_sample_tst is
    port(
        CH0             : in     vl_logic_vector(11 downto 0);
        CH1             : in     vl_logic_vector(11 downto 0);
        sampler_tx      : out    vl_logic
    );
end comparador_vlg_sample_tst;
