module tb;
  

logic clk ;
initial clk = 0;
always #5 clk = ~clk ;

  logic [7:0] in1,in2,o1;
  
  delayadd dut(in1,in2,o1);
  
// Blocking assignments
initial begin
  $dumpfile("dump.vcd");
  $dumpvars;

  repeat (2) @(posedge clk);
  
	in1 = 0;
  in2 = 0;
  
  #10;
  
  in1 = 3;
  in2 =4;
  
  #10
   in1 =3;
  
  
  repeat (10) @(posedge clk);


  $finish;
end
  
endmodule

