module LED_CNT(
    input [4:0]i_LEDcnt,
    output [7:0]o_upcLED
);
    reg [7:0] r_upcLED;

    assign o_upcLED = r_upcLED;

     always @(i_LEDcnt)begin
        case(i_LEDcnt)
            0,1,2: r_upcLED <= 8'b00000000;
            3,4: r_upcLED <= 8'b00000001;
            5,6: r_upcLED <= 8'b00000011;
            7,8: r_upcLED <= 8'b00000111;
            9,10: r_upcLED <= 8'b00001111;
            11,12: r_upcLED <= 8'b00011111;
            13,14: r_upcLED <= 8'b00111111;
            15,16: r_upcLED <= 8'b01111111;
            17,18: r_upcLED <= 8'b11111111;
        endcase
    end
endmodule