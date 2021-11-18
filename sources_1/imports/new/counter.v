module counter (
    input i_clk,
    input i_rst_n,
    output [13:0] o_counter,
    output [4:0] o_LEDcnt
);
    reg [13:0] r_counter = 0;
    reg [4:0] r_LEDcnt=0;

    assign o_counter = r_counter;
    assign o_LEDcnt = r_LEDcnt;

    always @(posedge i_clk or negedge i_rst_n) begin
        if (!i_rst_n) begin
            r_counter <= 0;
            r_LEDcnt<=0;
        end
        else begin
            if (r_counter >= 10000-1) begin
                r_counter <= 0;
            end
            else if(r_LEDcnt >= 19)begin
                r_LEDcnt<=0;
            end
            else begin
                r_LEDcnt<= r_LEDcnt+1;
                r_counter <= r_counter + 1;
            end
        end
    end
endmodule