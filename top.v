module top(
    input [15:0]sw,
    input btnC, btnL, btnU, btnR, btnD,
    output [15:0]led
);

wire[3:0] local_ceo, local_me, local_lib, local_ribs;
assign local_ceo = sw[3:0];
assign local_me = sw[7:4];
assign local_lib = sw[11:8];
assign local_ribs = sw[15:12];

wire [1:0] mux_sel;
assign mux_sel = {btnU, btnL};

wire [3:0] mux;
multiplexer mux1(
    .Select(mux_sel),
    .Enable(btnC),
    .A(local_ceo),
    .B(local_me),
    .C(local_lib),
    .D(local_ribs),
    .MUX(mux)
);

wire [1:0] Sel2;
assign Sel2 = {btnR, btnD};
demultiplexer demux1(
    .Select(Sel2),
    .Enable(btnC),
    .MUX(mux),
    .A(led[3:0]),
    .B(led[7:4]),
    .C(led[11:8]),
    .D(led[15:12])
);


endmodule
