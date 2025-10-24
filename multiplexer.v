module multiplexer(
    input [1:0] Select,
    input [3:0] A,B,C,D,
    input Enable,
    output [3:0] MUX
    );
    
assign MUX = Enable ? (Select == 0 ? A: Select == 1 ? B: Select == 2 ? C: Select == 3 ? D : 0) : 0;
    
endmodule
