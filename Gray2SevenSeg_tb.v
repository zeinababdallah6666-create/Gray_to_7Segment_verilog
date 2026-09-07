`timescale 1ns / 1ps

module Gray2SevenSeg_tb;

    reg  [3:0] In_Gray;
    wire [6:0] seg_out;

    Gray2SevenSeg uut (
        .In_Gray(In_Gray),
        .seg_out(seg_out)
    );


    initial begin
    
        In_Gray = 4'b0000; #10;
        
        In_Gray = 4'b0001; #10;
        
        In_Gray = 4'b0011; #10;
        
        In_Gray = 4'b1000; #10;

        $stop; 
    end

endmodule