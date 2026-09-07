module Gray2Binary #(parameter N = 4) (
    input  wire [N-1:0] In_Gray,
    output reg  [N-1:0] Out_Binary
);
    integer i;
    always @(*) begin
        Out_Binary[N-1] = In_Gray[N-1];
        for (i = N-2; i >= 0; i = i - 1) begin
            Out_Binary[i] = Out_Binary[i+1] ^ In_Gray[i];
        end
    end
endmodule