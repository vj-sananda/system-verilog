module delayadd( input [7:0] in1, in2, 
                output wire [7:0] o1 );
 

   //Assign,
   //Intermediate values rejected but delay is
   //#25 from LAST change.
   assign  #25 o1 = in1 + in2 ;
  
  
endmodule


