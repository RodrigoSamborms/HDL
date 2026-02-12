module half_adder
  (input  a,
   input  b,
   output sum,
   output carry);
  wire n2_o;
  wire n3_o;
  assign sum = n2_o;
  assign carry = n3_o;
  /* /home/rodrigo/GitHub/HDL/hdl_practice/half_adder.vhd:13:16  */
  assign n2_o = a ^ b;
  /* /home/rodrigo/GitHub/HDL/hdl_practice/half_adder.vhd:14:16  */
  assign n3_o = a & b;
endmodule

