


module lab2(output logic y,x,
    input logic a,b,c
    );
logic not_out;
logic or1_out;
logic or2_out;
logic nand_out;
logic xor1_out;
logic xor2_out;
logic and_out;
assign not_out = ~c; 
assign or1_out = a|b;
assign or2_out = a|b;
assign x = not_out^or1_out;
assign nand_out = ~(a&b);
assign xor2_out = nand_out^or2_out;
assign y = or1_out&xor2_out;
    
    
endmodule