library verilog;
use verilog.vl_types.all;
entity contador_10_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        inicio_contador : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end contador_10_vlg_sample_tst;
