library verilog;
use verilog.vl_types.all;
entity comp_prueba is
    port(
        chip_sel        : out    vl_logic;
        clk             : in     vl_logic;
        dout            : in     vl_logic;
        sclk            : out    vl_logic;
        din             : out    vl_logic;
        LEDS            : out    vl_logic_vector(1 downto 0)
    );
end comp_prueba;
