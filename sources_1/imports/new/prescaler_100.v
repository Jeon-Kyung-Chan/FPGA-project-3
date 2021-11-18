`timescale 1ns / 1ps

module prescaler_100(
    input sysclk,
    input i_rst_n,
    output o_100hz_clk
    );

    reg [31:0] counter = 0;
    reg r_100hz_clk = 0;

    always @(posedge sysclk or negedge i_rst_n) begin
        if(!i_rst_n)begin
            couter<=0;
        end
        else begin
            if (counter >= 60000-1) begin // 12_000_000 / 2 / 원하는주파수) -1
                counter <=0;
                r_100hz_clk <= ~r_100hz_clk;
            end
            else begin
                counter <= counter + 1;
            end
        end

    end

    assign o_1khz_clk = r_100hz_clk;

endmodule
