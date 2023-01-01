module main(clock, StoB_REQ0_n, RtoB_ACK0_n, RtoB_ACK1_n, FULL_n, EMPTY_n, BtoS_ACK0_n, BtoR_REQ0_n, BtoR_REQ1_n, stateG7_0_n, stateG7_1_n, ENQ_n, DEQ_n, stateG12_n, SLC0_n, jx0_n);
  input clock;
  wire zero_value = 0;
  wire one_value = 1;
  wire v844f91;
  wire v844fad;
  wire v851c09;
  wire v851c29;
  wire v84dc61;
  wire v851bda;
  wire v851c35;
  wire v851c92;
  wire v8519a7;
  wire v84dfc3;
  wire v8519cc;
  wire v851e1c;
  wire v85158e;
  wire v844fa3;
  wire v851bd8;
  wire v851bbf;
  wire v851e1b;
  wire v84dd9c;
  wire v851cf0;
  wire v844f99;
  wire v84d960;
  wire v851c03;
  wire v851bc5;
  wire v8508a5;
  wire v844f97;
  wire v851cab;
  wire v851bfa;
  wire v851c72;
  wire v851be9;
  wire v851c9b;
  wire v851c18;
  wire v851df5;
  wire v851bd3;
  wire v84d894;
  wire v84d866;
  wire v851dba;
  wire v851c94;
  wire v8519ff;
  wire v8503d9;
  wire v851c3d;
  wire v851cba;
  wire v851bd7;
  wire v850d95;
  wire v851bf4;
  wire v851a2c;
  wire v8519b7;
  wire v851c65;
  wire v851c15;
  wire v851beb;
  wire v851dc9;
  wire v850d97;
  wire v851c0d;
  wire v844f9b;
  wire v851d4b;
  wire v851c1e;
  wire v851dd6;
  wire v851bde;
  wire v851df2;
  wire v851bb2;
  wire v851c40;
  wire v851be4;
  wire v851021;
  reg StoB_REQ0_p;
  input StoB_REQ0_n;
  reg RtoB_ACK0_p;
  input RtoB_ACK0_n;
  reg RtoB_ACK1_p;
  input RtoB_ACK1_n;
  reg FULL_p;
  input FULL_n;
  reg EMPTY_p;
  input EMPTY_n;
  reg BtoS_ACK0_p;
  output BtoS_ACK0_n;
  reg BtoR_REQ0_p;
  output BtoR_REQ0_n;
  reg BtoR_REQ1_p;
  output BtoR_REQ1_n;
  reg stateG7_0_p;
  output stateG7_0_n;
  reg stateG7_1_p;
  output stateG7_1_n;
  reg ENQ_p;
  output ENQ_n;
  reg DEQ_p;
  output DEQ_n;
  reg stateG12_p;
  output stateG12_n;
  reg SLC0_p;
  output SLC0_n;
  reg jx0_p;
  output jx0_n;
  wire ENQ_n;

assign v8519cc = BtoR_REQ0_p & v851bda | !BtoR_REQ0_p & v84dfc3;
assign BtoS_ACK0_n = v851021;
assign v851dc9 = StoB_REQ0_p & v851beb | !StoB_REQ0_p & v851bf4;
assign v851bda = stateG7_1_p & v851c09 | !stateG7_1_p & v844f91;
assign v851dd6 = RtoB_ACK0_p & v851c1e | !RtoB_ACK0_p & !v84dd9c;
assign v851c40 = BtoR_REQ0_p & v851dd6 | !BtoR_REQ0_p & !v851bb2;
assign v851dba = RtoB_ACK0_p & v844f91 | !RtoB_ACK0_p & v84d866;
assign v851c65 = RtoB_ACK1_p & v844f91 | !RtoB_ACK1_p & !v8519b7;
assign DEQ_n = !v8508a5;
assign v851cf0 = RtoB_ACK1_p & v84dd9c | !RtoB_ACK1_p & v844f91;
assign BtoR_REQ1_n = !v850d97;
assign v8508a5 = BtoS_ACK0_p & v851e1b | !BtoS_ACK0_p & v851bc5;
assign v851bbf = RtoB_ACK0_p & v844f91 | !RtoB_ACK0_p & !v851bd8;
assign v851beb = BtoR_REQ0_p & v844f91 | !BtoR_REQ0_p & !v851c15;
assign v851bc5 = StoB_REQ0_p & v851c03 | !StoB_REQ0_p & v851e1b;
assign v84d960 = RtoB_ACK0_p & v851cf0 | !RtoB_ACK0_p & !v844f99;
assign v851c0d = StoB_REQ0_p & v844f91 | !StoB_REQ0_p & v84dd9c;
assign v844fad = stateG12_p & v844f91 | !stateG12_p & !v844f91;
assign v851df5 = BtoR_REQ1_p & v844f91 | !BtoR_REQ1_p & !v84dd9c;
assign v851e1c = StoB_REQ0_p & v851c29 | !StoB_REQ0_p & v8519cc;
assign SLC0_n = !v844f91;
assign v851cab = DEQ_p & v844f91 | !DEQ_p & !v851c29;
assign v851c9b = RtoB_ACK0_p & v844f91 | !RtoB_ACK0_p & v851be9;
assign v851bb2 = RtoB_ACK0_p & v84dd9c | !RtoB_ACK0_p & !v851df2;
assign v851c09 = jx0_p & v844fad | !jx0_p & v844f91;
assign v851a2c = stateG7_1_p & v844f91 | !stateG7_1_p & !v84dd9c;
assign v84d894 = BtoR_REQ1_p & v844f91 | !BtoR_REQ1_p & !v851bd3;
assign v844fa3 = BtoR_REQ1_p & v844f91 | !BtoR_REQ1_p & !v844f91;
assign BtoR_REQ0_n = !v8503d9;
assign v851d4b = jx0_p & v844f9b | !jx0_p & !v844f91;
assign v8503d9 = BtoS_ACK0_p & v851c18 | !BtoS_ACK0_p & v8519ff;
assign v851df2 = RtoB_ACK1_p & v851bde | !RtoB_ACK1_p & !v84dd9c;
assign v851bf4 = BtoR_REQ0_p & v844f91 | !BtoR_REQ0_p & v850d95;
assign v851c03 = BtoR_REQ0_p & v84d960 | !BtoR_REQ0_p & !v851bbf;
assign v851c29 = jx0_p & v844fad | !jx0_p & !v844f91;
assign v851c1e = DEQ_p & v844f91 | !DEQ_p & !v851d4b;
assign v844f99 = RtoB_ACK1_p & v844f91 | !RtoB_ACK1_p & !v844f91;
assign v851e1b = BtoR_REQ0_p & v844f91 | !BtoR_REQ0_p & !v851bbf;
assign v851c15 = RtoB_ACK0_p & v844f91 | !RtoB_ACK0_p & !v851c65;
assign v851cba = BtoR_REQ1_p & v844f91 | !BtoR_REQ1_p & !v851c3d;
assign v844f97 = RtoB_ACK0_p & v844f91 | !RtoB_ACK0_p & !v844f91;
assign v851bd7 = RtoB_ACK1_p & v844f91 | !RtoB_ACK1_p & !v851cba;
assign v851be9 = RtoB_ACK1_p & v844f91 | !RtoB_ACK1_p & v851c72;
assign v851bd3 = stateG7_1_p & v84dd9c | !stateG7_1_p & !v844f91;
assign v850d97 = BtoS_ACK0_p & v851bf4 | !BtoS_ACK0_p & v851dc9;
assign v84dc61 = StoB_REQ0_p & v851c09 | !StoB_REQ0_p & v851c29;
assign v844f91 = 1;
assign v84dd9c = jx0_p & v844f91 | !jx0_p & !v844f91;
assign v851c72 = BtoR_REQ1_p & v844f91 | !BtoR_REQ1_p & v851bfa;
assign v8519b7 = BtoR_REQ1_p & v844f91 | !BtoR_REQ1_p & !v851a2c;
assign v84d866 = RtoB_ACK1_p & v851df5 | !RtoB_ACK1_p & v84d894;
assign v850d95 = RtoB_ACK0_p & v844f91 | !RtoB_ACK0_p & v851bd7;
assign v851c35 = stateG7_1_p & v844f91 | !stateG7_1_p & v851c09;
assign v851bfa = stateG7_1_p & v851cab | !stateG7_1_p & v844f91;
assign v851bd8 = RtoB_ACK1_p & v844fa3 | !RtoB_ACK1_p & v844f91;
assign v851c3d = stateG7_1_p & v844f91 | !stateG7_1_p & v851cab;
assign v851be4 = StoB_REQ0_p & v851c40 | !StoB_REQ0_p & !v844f91;
assign v851c18 = BtoR_REQ0_p & v844f97 | !BtoR_REQ0_p & v851c9b;
assign v851bde = BtoR_REQ1_p & v851c1e | !BtoR_REQ1_p & !v851d4b;
assign v851c94 = BtoR_REQ0_p & v844f97 | !BtoR_REQ0_p & v851dba;
assign v8519ff = StoB_REQ0_p & v851c94 | !StoB_REQ0_p & v851c18;
assign v84dfc3 = RtoB_ACK0_p & v844f91 | !RtoB_ACK0_p & v8519a7;
assign v85158e = BtoS_ACK0_p & v84dc61 | !BtoS_ACK0_p & v851e1c;
assign v851021 = BtoS_ACK0_p & v851c0d | !BtoS_ACK0_p & v851be4;
assign v851c92 = BtoR_REQ1_p & v851c35 | !BtoR_REQ1_p & v851c09;
assign v8519a7 = RtoB_ACK1_p & v844f91 | !RtoB_ACK1_p & v851c92;
assign jx0_n = v85158e;
assign v844f9b = FULL_p & v844f91 | !FULL_p & !v844f91;
assign ENQ_n = (StoB_REQ0_n & ((!SLC0_n & ((BtoS_ACK0_n)))));
    initial begin
  StoB_REQ0_p = 0;
  RtoB_ACK0_p = 0;
  RtoB_ACK1_p = 0;
  FULL_p = 0;
  EMPTY_p = 1;
  BtoS_ACK0_p = 0;
  BtoR_REQ0_p = 0;
  BtoR_REQ1_p = 0;
  stateG7_0_p = 0;
  stateG7_1_p = 1;
  ENQ_p = 0;
  DEQ_p = 0;
  stateG12_p = 0;
  SLC0_p = 0;
  jx0_p = 0;
    end
    always @(posedge clock) begin
  StoB_REQ0_p = StoB_REQ0_n;
  RtoB_ACK0_p = RtoB_ACK0_n;
  RtoB_ACK1_p = RtoB_ACK1_n;
  FULL_p = FULL_n;
  EMPTY_p = EMPTY_n;
  BtoS_ACK0_p = BtoS_ACK0_n;
  BtoR_REQ0_p = BtoR_REQ0_n;
  BtoR_REQ1_p = BtoR_REQ1_n;
  stateG7_0_p = stateG7_0_n;
  stateG7_1_p = stateG7_1_n;
  ENQ_p = ENQ_n;
  DEQ_p = DEQ_n;
  stateG12_p = stateG12_n;
  SLC0_p = SLC0_n;
  jx0_p = jx0_n;
    end


  DBW7 G7(stateG7_1_n, stateG7_0_n, stateG7_1_p, stateG7_0_p, BtoR_REQ0_p, BtoR_REQ1_p);
  DBW12 G12(stateG12_n, stateG12_p, EMPTY_p, DEQ_p);
endmodule

//Note that the DBW for G7 works only for two receivers.
module DBW7(stateG7_1_n, stateG7_0_n, stateG7_1_p, stateG7_0_p, BtoR_REQ0_p, BtoR_REQ1_p);
	input  stateG7_1_p, stateG7_0_p, BtoR_REQ0_p, BtoR_REQ1_p;
	output stateG7_1_n, stateG7_0_n;
	wire    stateG7_1_p, stateG7_0_p, BtoR_REQ0_p, BtoR_REQ1_p;
	wire    stateG7_1_n, stateG7_0_n;

	assign  stateG7_1_n = (!stateG7_1_p && !BtoR_REQ0_p &&  BtoR_REQ1_p)||
	                      ( stateG7_1_p && !BtoR_REQ0_p && !BtoR_REQ1_p)||
	                      ( stateG7_1_p && !stateG7_0_p && !BtoR_REQ0_p && BtoR_REQ1_p);
	assign  stateG7_0_n = (!stateG7_1_p && !BtoR_REQ0_p && !BtoR_REQ1_p);
endmodule
module DBW12(stateG12_n, stateG12_p, EMPTY_p, DEQ_p);
	input  stateG12_p, EMPTY_p, DEQ_p;
	output stateG12_n;
	wire    stateG12_n, stateG12_p, EMPTY_p, DEQ_p;

	assign  stateG12_n = (!stateG12_p && !DEQ_p && !EMPTY_p)||
	                     ( stateG12_p && !DEQ_p);
endmodule