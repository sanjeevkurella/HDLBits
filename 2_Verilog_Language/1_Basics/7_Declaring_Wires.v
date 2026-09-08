`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    wire x1,x2,y1;
    and and_0(x1,a,b);
    and and_1(x2,c,d);
    or or_0(out,x1,x2);
    not not_0(out_n,out);

endmodule

