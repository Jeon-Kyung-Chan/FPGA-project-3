`timescale 1ns / 1ps

module LED_MUX(
    input [7:0]i_upcLED,
    input [7:0]i_tcLED,
    input i_mode,
    output [7:0]o_LED
    );

    reg [7:0]r_LED;

    assign o_LED = r_LED;

    always @(i_mode)begin
        case(i_mode)
            0: r_LED<=i_tcLED;
            1: r_LED<=i_upcLED;
        endcase
    end
endmodule
