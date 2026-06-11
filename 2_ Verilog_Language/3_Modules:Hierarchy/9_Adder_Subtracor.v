module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire x1,x2;
    wire [31:0]b1;
    assign b1=b^{32{sub}};
    add16 u1(a[15:0],
             b1[15:0],
             sub,
             sum[15:0],
             x1);
    add16 u2(a[31:16],
             b1[31:16],
             x1,
             sum[31:16],
             x2);
             
          

endmodule

