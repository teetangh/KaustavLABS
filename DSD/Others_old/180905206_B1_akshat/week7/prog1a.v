module mux8to1(w,s,f);
input [7:0]w;
input [2:0]s;
output f;
reg f;
always @ (w or s)
begin
case(s)
0:f=w[0];
1:f=w[1];
2:f=w[2];
3:f=w[3];
4:f=w[4];
5:f=w[5];
6:f=w[6];
7:f=w[7];
endcase
end
endmodule
module prog1a(x,f);
input [3:0] x;
output f;
wire [7:0] w;
assign w = {~x[0],1'b1,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0};
mux8to1 st0(w,x[3:1],f);
endmodule