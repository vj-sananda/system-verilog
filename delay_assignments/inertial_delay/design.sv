module delayadd( input [7:0] in1, in2, 
                output logic [7:0] o1 );
 

  //Models transport delays
  //#25 delay after LAST change of in1 or in2.
  always @*
     o1 <= #25 in1 + in2 ;
  
  
endmodule


