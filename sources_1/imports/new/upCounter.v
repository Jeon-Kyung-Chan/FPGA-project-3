module upCounter(
    input sysclk,
    input i_rst_n,
    output [13:0] o_upCounter,
    output [7:0]o_upcLED
    );

    prescaler_100 scaler(
        .sysclk(sysclk),
        .i_rst_n(i_rst_n),
        .o_100hz_clk(w_100hz_clk)
    );

    wire w_100hz_clk;
    
    counter upcounter(
        .i_clk(w_100hz_clk),
        .i_rst_n(i_rst_n),
        .o_counter(o_upCounter),
        .o_LEDcnt(w_LEDcnt)
    );

    wire [4:0]w_LEDcnt;
    LED_CNT uLED_CNT(
        .i_LEDcnt(w_LEDcnt),
        .o_upcLED(o_upcLED)
    );

endmodule