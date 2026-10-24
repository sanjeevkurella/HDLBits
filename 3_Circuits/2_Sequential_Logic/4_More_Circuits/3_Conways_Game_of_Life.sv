module top_module(
    input clk,
    input load,
    input [255:0] data,
    output reg [255:0] q
);

    reg [255:0] next_q;
    integer r, c;
    integer count;
    integer i, j;
    integer rr, cc;

    always @(*) begin
        next_q = 256'b0;
        count = 0;

        for (r = 0; r < 16; r = r + 1) begin
            for (c = 0; c < 16; c = c + 1) begin
                count = 0;

                for (i = -1; i <= 1; i = i + 1) begin
                    for (j = -1; j <= 1; j = j + 1) begin
                        if (i != 0 || j != 0) begin
                            rr = (r + i + 16) % 16;
                            cc = (c + j + 16) % 16;
                            count = count + q[rr*16 + cc];
                        end
                    end
                end

                if (count == 2)
                    next_q[r*16 + c] = q[r*16 + c];
                else if (count == 3)
                    next_q[r*16 + c] = 1'b1;
                else
                    next_q[r*16 + c] = 1'b0;
            end
        end
    end

    always @(posedge clk) begin
        if (load)
            q <= data;
        else
            q <= next_q;
    end

endmodule
