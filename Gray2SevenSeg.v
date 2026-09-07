module Gray2SevenSeg (
    input  wire [3:0] In_Gray,
    output wire [6:0] seg_out
);
    wire [3:0] binary_wire;

    Gray2Binary u1 (
        .In_Gray(In_Gray),
        .Out_Binary(binary_wire)
    );

    Hex2SevenSeg u2 (
        .hex_in(binary_wire),
        .seg_out(seg_out)
    );

endmodule