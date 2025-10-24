module demultiplexer(
    input [1:0] Select,
    input [3:0] MUX,
    input Enable,
    output [3:0] A,B,C,D 
    );
    
//wire is_zero, is_one, is_two, is_three;

//assign is_zero = Select == 0;
//assign is_one = Select == 1;
//assign is_two = Select == 2;
//assign is_three = Select == 3;

//wire destination;
//assign destination = (is_zero ? 0: is_one ? 1: is_two ? 2: 3);
    
assign A = Enable ? ((Select == 2'b00) ? MUX : 0) : 0;
assign B = Enable ? ((Select == 2'b01) ? MUX : 0) : 0;
assign C = Enable ? ((Select == 2'b10) ? MUX : 0) : 0;
assign D = Enable ? ((Select == 2'b11) ? MUX : 0) : 0;
    
endmodule
