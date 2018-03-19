module add3(a,s);
 input [3:0] a;
 output [3:0] s;
 reg [3:0] s;
 always @ (a)
 case (a)
 4'b0000: s <= 4'b0000; // 0
 4'b0001: s <= 4'b0001; // 1
 4'b0010: s <= 4'b0010; // 2
 4'b0011: s <= 4'b0011; // 3
 4'b0100: s <= 4'b0100; // 4
 4'b0101: s <= 4'b1000; // 5 to 8
 4'b0110: s <= 4'b1001; // 6 to 9
 4'b0111: s <= 4'b1010; // 7 to A
 4'b1000: s <= 4'b1011; // 8 to B
 4'b1001: s <= 4'b1100; // 9 to C
 default: s <= 4'b0000;
 endcase
endmodule
