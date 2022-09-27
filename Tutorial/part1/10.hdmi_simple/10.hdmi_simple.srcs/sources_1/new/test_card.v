module test_card_simple #(H_RES=640) (
    input wire signed [15:0] i_x,
    output wire [7:0] o_red,
    output wire [7:0] o_green,
    output wire [7:0] o_blue
    );

    localparam HW = H_RES >> 3; // horizontal colour width = H_RES / 8

    // Bands
    wire b0 = (i_x >= 0     ) & (i_x < HW    );
    wire b1 = (i_x >= HW    ) & (i_x < HW * 2);
    wire b2 = (i_x >= HW * 2) & (i_x < HW * 3);
    wire b3 = (i_x >= HW * 3) & (i_x < HW * 4);
    wire b4 = (i_x >= HW * 4) & (i_x < HW * 5);
    wire b5 = (i_x >= HW * 5) & (i_x < HW * 6);
    wire b6 = (i_x >= HW * 6) & (i_x < HW * 7);
    wire b7 = (i_x >= HW * 7) & (i_x < HW * 8);

    // Colour Output
    assign o_red    = {8{b0 | b1 | b5}} + {2'b0,{6{b6}}} + {b7, 7'b0};
    assign o_green  = {8{b1 | b2 | b3}} + {2'b0,{6{b6}}} + {b7, 7'b0};
    assign o_blue   = {8{b3 | b4 | b5}} + {2'b0,{6{b6}}} + {b7, 7'b0};
endmodule

module test_card_gradient (
    input wire [5:0] i_x,
    input wire [7:0] i_y,
    output wire [7:0] o_red,
    output wire [7:0] o_green,
    output wire [7:0] o_blue
    );

    localparam base_red     = 8'h00;
    localparam base_green   = 8'h10;
    localparam base_blue    = 8'h4C;

    assign o_red    = base_red + i_y + {2'b0, i_x};
    assign o_green  = base_green + i_y;
    assign o_blue   = base_blue + i_y;
endmodule

module test_card_squares #(
    H_RES=640,
    V_RES=480
    ) (
    input wire signed [15:0] i_x,
    input wire signed [15:0] i_y,
    output wire [7:0] o_red,
    output wire [7:0] o_green,
    output wire [7:0] o_blue
    );

    localparam HR = H_RES;              // horizontal resolution (pixels)
    localparam VR = V_RES;              // vertical resolution (lines)
    localparam BW = 16;                 // border width
    localparam SQ = VR >> 4;            // square unit
    localparam SX = (HR >> 1) - 5*SQ;   // square start horizontal
    localparam SY = (VR >> 1) - 5*SQ;   // square start vertical
    localparam LS = 2;                  // line spacing

    // Borders
    wire top = (i_x >=     0) & (i_y >=     0) & (i_x < HR) & (i_y < BW);
    wire btm = (i_x >=     0) & (i_y >= VR-BW) & (i_x < HR) & (i_y < VR);
    wire lft = (i_x >=     0) & (i_y >=     0) & (i_x < BW) & (i_y < VR);
    wire rgt = (i_x >= HR-BW) & (i_y >=     0) & (i_x < HR) & (i_y < VR);

    // Squares
    wire sq_a = (i_x >= SX)        & (i_y >= SY       ) & (i_x < SX +  4*SQ) & (i_y < SY +  4*SQ);
    wire sq_b = (i_x >= SX + 2*SQ) & (i_y >= SY + 2*SQ) & (i_x < SX +  6*SQ) & (i_y < SY +  6*SQ);
    wire sq_c = (i_x >= SX + 4*SQ) & (i_y >= SY + 4*SQ) & (i_x < SX +  8*SQ) & (i_y < SY +  8*SQ);
    wire sq_d = (i_x >= SX + 6*SQ) & (i_y >= SY + 6*SQ) & (i_x < SX + 10*SQ) & (i_y < SY + 10*SQ);
    wire sq_e = (i_x >= SX)        & (i_y >= SY + 8*SQ) & (i_x < SX +  2*SQ) & (i_y < SY + 10*SQ);

    // Lines
    wire lns_1 = (i_x >= SX + 8*SQ) & (i_x <= SX + 10*SQ) & ((i_y == SY + 0*LS       ) | (i_y == SY +  2*SQ - 0*LS));
    wire lns_2 = (i_x >= SX + 8*SQ) & (i_x <= SX + 10*SQ) & ((i_y == SY + 1*LS       ) | (i_y == SY +  2*SQ - 1*LS));
    wire lns_3 = (i_x >= SX + 8*SQ) & (i_x <= SX + 10*SQ) & ((i_y == SY + 2*LS       ) | (i_y == SY +  2*SQ - 2*LS));
    wire lns_4 = (i_x >= SX + 8*SQ) & (i_x <= SX + 10*SQ) & ((i_y == SY + 3*LS       ) | (i_y == SY +  2*SQ - 3*LS));
    wire lns_5 = (i_y >=        SY) & (i_y <= SY +  2*SQ) & ((i_x == SX + 8*SQ + 0*LS) | (i_x == SX + 10*SQ - 0*LS));
    wire lns_6 = (i_y >=        SY) & (i_y <= SY +  2*SQ) & ((i_x == SX + 8*SQ + 1*LS) | (i_x == SX + 10*SQ - 1*LS));
    wire lns_7 = (i_y >=        SY) & (i_y <= SY +  2*SQ) & ((i_x == SX + 8*SQ + 2*LS) | (i_x == SX + 10*SQ - 2*LS));
    wire lns_8 = (i_y >=        SY) & (i_y <= SY +  2*SQ) & ((i_x == SX + 8*SQ + 3*LS) | (i_x == SX + 10*SQ - 3*LS));

    // Colour Output
    assign o_red    = {8{ lft | top | lns_1 | lns_4 | lns_5 | lns_8 | sq_b | sq_e }};
    assign o_green  = {8{ btm | top | lns_2 | lns_4 | lns_6 | lns_8 | sq_a | sq_d | sq_e }};
    assign o_blue   = {8{ rgt | top | lns_3 | lns_4 | lns_7 | lns_8 | sq_c | sq_e }};
endmodule
