module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire x1,x3,x5;
    wire [15:0]x2,x4;
    add16 u1(a[15:0],
             b[15:0],
             1'b0,
             sum[15:0],
             x1);
    add16 u2(a[31:16],
           b[31:16],
           1'b0,
           x2,
           x3);
    add16 u3(a[31:16],
           b[31:16],
           1'b1,
           x4,
           x5);
    assign sum[31:16]= x1?x4:x2;
          

endmodule

