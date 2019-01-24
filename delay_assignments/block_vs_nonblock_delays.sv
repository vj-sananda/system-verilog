module block_nonblock();
reg a, b, c, d , e, f ;
  
  /*
  
  
a=0,b=0,c=1; #1 a = c, #1 b = a
a<=0, b<=0,c<=1; #1 a<=c, #1 b<= a
a=0, b=0, c=1, a=#1 c , b = #1 a
a<=0, b<=0,c<=1, a <= #1 c, b <= #1 a

*/
  

// Blocking assignments
initial begin
  $dumpfile("dump.vcd");
  $dumpvars;
  a = 0;
  b=0;
  c=0;
  d=0;
  e=0;
  f=0;
  #100;
  a = #10 1'b1;// The simulator assigns 1 to a at time 10
  b = #20 1'b1;// The simulator assigns 0 to b at time 30
  c = #40 1'b1;// The simulator assigns 1 to c at time 70
end

// Nonblocking assignments
initial begin
  #200;
  d <= #10 1'b1;// The simulator assigns 1 to d at time 10
  e <= #20 1'b1;// The simulator assigns 0 to e at time 20
  f  <= #40 1'b1;// The simulator assigns 1 to f at time 40
  #4000;
  $finish;
end
  
endmodule


