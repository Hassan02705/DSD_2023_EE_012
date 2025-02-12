module lab3task1(output logic x,
                output logic y,
                input  logic a,
                input  logic b,
                input  logic c
                );  
    logic orgate;
    logic nandgate;
    logic xorgate;                

    assign orgate   = a | b;             
    assign nandgate = ~(a & b);          
    assign xorgate  = nandgate ^ orgate;  
    assign x        = (~c) ^ orgate;     
    assign y        = xorgate & orgate;     
    
endmodule 
