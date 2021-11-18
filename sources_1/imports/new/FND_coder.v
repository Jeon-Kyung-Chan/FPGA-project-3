`timescale 1ns / 1ps

module FND_coder(
    input [1:0] i_fndDigit,
    input [13:0] i_fndCounter,
    output [3:0] o_fndData
    );

    reg [3:0] r_fndData;

    always @(i_fndDigit) begin
        case (i_fndDigit)
            0 : r_fndData <= i_fndCounter % 10; 
            1 : r_fndData <= i_fndCounter / 10 % 10; 
            2 : r_fndData <= i_fndCounter / 100 % 10; 
            3 : r_fndData <= i_fndCounter /1000 % 10; 
        endcase
    end

    assign o_fndData = r_fndData;

endmodule
