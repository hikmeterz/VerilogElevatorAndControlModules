`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////


module binary(

    input [3:0] kaynak_dugumu,
    input [1:0] yon,
    output [3:0] hedef_dugumu //0 sol 1 sag
    );
    
    
    wire k1,k2,k3,k4,k5,k6,k7,k8,k9;
    and(k1,kaynak_dugumu[1],yon[0]);
    not(k2,kaynak_dugumu[0]);
    and(k3,k2,yon[1]);
    and(k4,kaynak_dugumu[1],kaynak_dugumu[0]);
    not(k5,kaynak_dugumu[0]);
    and(k6,k5,yon[0]);
    not(k7,yon[1]);
    not(k8,yon[0]);
    and(k9,k7,k8,kaynak_dugumu[0]);
    or(hedef_dugumu[2],k1,k3,k4,k6,k9);
    
    
    wire k10,k11;
    
    and(k10,yon[0],kaynak_dugumu[0]);
    and(k11,yon[1],kaynak_dugumu[0]);
    or(hedef_dugumu[3],k10,k11);
    
    wire k12,k13,k14,k15,k16,k17,k18;
    
    not(k12,yon[1]);
    not(k13,yon[0]);
    and(k16,k12,k13);
    not(k14,kaynak_dugumu[1]);
    and(k17,k14,yon[1],yon[0]);
    not(k15,yon[1]);
    and(k18,k15,kaynak_dugumu[1],kaynak_dugumu[0]);
    or(hedef_dugumu[1],k16,k17,k18);
    
    
    wire k19,k20,k21,k22,k23,k24,k25,k26,k27;
    
    not(k19,yon[0]);
    not(k20,kaynak_dugumu[1]);
    and(k24,k19,k20);
    and(k25,yon[0],kaynak_dugumu[1],kaynak_dugumu[0]);
    
    not(k21,yon[1]);
    not(k23,kaynak_dugumu[0]);
    not(k22,yon[0]);
    and(k26,k21,k22,k23);
    and(k27,yon[1],kaynak_dugumu[1]);
    or(hedef_dugumu[0],k24,k25,k26,k27);
    
    
    
    
endmodule
