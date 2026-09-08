module top_module (
    input clk,
    input reset,
    input [31:0] in,
    output reg [31:0] out
);

    reg [31:0] temp;

    always @(posedge clk) begin
        if(reset)
            out <= 32'b0;
        else
            out <= out | (temp & ~in);

        temp <= in;
    end

endmodule
