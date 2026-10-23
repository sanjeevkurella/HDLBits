module top_module (
    input [3:0] SW,
    input [3:0] KEY,
    output reg [3:0] LEDR
);
    wire b1,b2,b3,b4,c1,c2,c3,c4;
    MUXDFF x1(LEDR[3],KEY[3],KEY[1],b1);
    MUXDFF y1(b1,SW[3],KEY[2],c1);
    MUXDFF x2(LEDR[2],LEDR[3],KEY[1],b2);
    MUXDFF y2(b2,SW[2],KEY[2],c2);
    MUXDFF x3(LEDR[1],LEDR[2],KEY[1],b3);
    MUXDFF y3(b3,SW[1],KEY[2],c3);
    MUXDFF x4(LEDR[0],LEDR[1],KEY[1],b4);
    MUXDFF y4(b4,SW[0],KEY[2],c4);
    always @ (posedge KEY[0])
        begin
            
            
            LEDR[3]<=c1;
            
            
            LEDR[2]<=c2;
            
            
            LEDR[1]<=c3;
            
            
            LEDR[0]<=c4;
        end
            

endmodule

module MUXDFF (input a,input b ,input s,output y);
    assign y=(~s&a)|(s&b);

endmodule

