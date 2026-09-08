module fa(input a,b,cin,output s,cout);
    assign s=a^b^cin;
    assign cout=a&b | b&cin | a&cin;
endmodule

module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
wire w1,w2,w3;
    fa u1(.a(x[0]),.b(y[0]),.cin(1'b0),.s(sum[0]),.cout(w1));
    fa u2(.a(x[1]),.b(y[1]),.cin(w1),.s(sum[1]),.cout(w2));
    fa u3(.a(x[2]),.b(y[2]),.cin(w2),.s(sum[2]),.cout(w3));
    fa u4(.a(x[3]),.b(y[3]),.cin(w3),.s(sum[3]),.cout(sum[4]));
endmodule

