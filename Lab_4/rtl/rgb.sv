module rgb(input logic [1:0] a,
           input logic [1:0] b,
           output logic r,g,b_out
);

    always_comb begin
        r = (a>b) || (a==b);
        g = (a==b) || (a<b);
        b_out = (a>b) || (a<b);
    end
endmodule