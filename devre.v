`timescale 1ns / 1ps


module devre(

    input A,B,C,
    output F

    );
    wire k1;
    and kapi1(k1,A,B);
    
    wire k2;
    and kapi2(k2,C,1);
    
    wire k3;
    nand kapi3(k3,k1,k2);
    
    wire k4;
    xor kapi4(k4,A,k1);
    
    wire k5;
    nor kapi5(k5,k2,k3);
    
    
    or kapi6(F,k4,k5);
    
endmodule
