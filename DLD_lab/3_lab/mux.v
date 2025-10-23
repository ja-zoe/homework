module mux_8_1(
                input a, 
                input b, 
                input c, 
                input d, 
                input e, 
                input f, 
                input g, 
                input h, 
                input [2:0]select, 
                output out
              )
  assign out =  (select == 3'd0) ? a :
                (select == 3'd1) ? b :
                (select == 3'd2) ? c :
                (select == 3'd3) ? d :
                (select == 3'd4) ? e :
                (select == 3'd5) ? f :
                (select == 3'd6) ? g :
                (select == 3'd7) ? h :
endmodule

module binary_to_gray(input [2:0] binary, output [2:0] gray)
  mux_8_1 gray2(
    .a(0),
    .b(0),
    .c(9),
    .d(0),
    .f(1),
    .g(1),
    .h(1)
  );

  mux_8_1 gray2(
    .a(0),
    .b(0),
    .c(9),
    .d(0),
    .f(1),
    .g(1),
    .h(1)
  );

  mux_8_1 gray2(
    .a(0),
    .b(0),
    .c(9),
    .d(0),
    .f(1),
    .g(1),
    .h(1)
  );
endmodule