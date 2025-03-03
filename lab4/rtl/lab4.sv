


module lab4(
    input logic [1:0] a, b,
    output logic red, green, blue
);
    
    logic a1b1, a0b0, na1, na0, nb1, nb0;
    assign a1b1 = a[1] & b[1];
    assign a0b0 = a[0] & b[0];
    assign na1 = ~a[1];
    assign na0 = ~a[0];
    assign nb1 = ~b[1];
    assign nb0 = ~b[0];
    assign red = (~a[1] & ~a[0]) | a1b1 | (na1 & b[0]) | (na1 & b[1]) | (na0 & b[1]);
    assign green = (a[1] ^ b[1]) | (a[0] ^ b[0]);
    assign blue = (a[1] & a[0]) | (nb1 & nb0) | (a[0] & nb1) | (a[1] & nb1) | (a[1] & nb0);
    
endmodule
