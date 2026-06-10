module nand_gate(input a, input b, output reg y);
    always @(*) begin
        y = ~(a & b);
    end
endmodule

module xor_using_nand(input a, input b, output y);
    wire w1, w2, w3;
    nand_gate G1 (.a(a),  .b(b),  .y(w1));
    nand_gate G2 (.a(a),  .b(w1), .y(w2));
    nand_gate G3 (.a(w1), .b(b),  .y(w3));
    nand_gate G4 (.a(w2), .b(w3), .y(y));
endmodule
