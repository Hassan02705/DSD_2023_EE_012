module lab5_tb;
    logic [3:0] num;
    logic [2:0] sel;
    logic a, b, c, d, e, f, g;
    logic an0, an1, an2, an3, an4, an5, an6, an7;

    lab5 UUT (
        .num(num),
        .sel(sel),
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .e(e),
        .f(f),
        .g(g),
        .an0(an0),
        .an1(an1),
        .an2(an2),
        .an3(an3),
        .an4(an4),
        .an5(an5),
        .an6(an6),
        .an7(an7)
    );

    initial begin

        for (int i = 0; i < 16; i++) begin
            for (int j = 0; j < 8; j++) begin
                num = i;
                sel = j;
                #10;

                $display("num = %h | sel = %d || Segments = %b%b%b%b%b%b%b | Anodes = %b%b%b%b%b%b%b%b", 
                         num, sel, a, b, c, d, e, f, g, an7, an6, an5, an4, an3, an2, an1, an0);
            end
        end

        $display("Test Complete.");
        $stop;
    end

endmodule
