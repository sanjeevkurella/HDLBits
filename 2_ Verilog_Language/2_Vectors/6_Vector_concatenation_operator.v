module top_module (
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z );//
    wire [31:0]d1;
    assign d1={a,b,c,d,e,f,1'b1,1'b1};
    assign{w,x,y,z}=d1;
    // assign { ... } = { ... };

endmodule

