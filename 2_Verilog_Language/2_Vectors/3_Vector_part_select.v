module top_module( 
    input [31:0] in,
    output [31:0] out );//
    wire [7:0]x1,x2,x3,x4;
    assign x1=in[31:24];
    assign x2=in[23:16];
    assign x3=in[15:8];
    assign x4=in[7:0];
    assign out={x4,x3,x2,x1};
endmodule

