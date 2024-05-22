`timescale 1ns / 1ps


module seviye(

    input [3:0] dugum,
    output [2:0] dugumun_seviyesi 

    );
    
    wire k1;
    and(dugumun_seviyesi[2],dugum[3],dugum[2],dugum[1]);
    
    
    wire k10,k2,k3,k4,k5,k6,k7,k8,k9;
    not(k2,dugum[2]);
    and(k7,dugum[3],k2);
    
    not(k3,dugum[1]);
    and(k8,dugum[2],k3);
    
    not(k4,dugum[3]);
    and(k9,dugum[1],dugum[0],k4);
    
    not(k5,dugum[3]);
    not(k6,dugum[2]);
    and(k10,k5,dugum[1],k6);
    or(dugumun_seviyesi[1],k7,k8,k9,k10);
    
    
    wire k11,k12,k13,k14,k15,k16,k17,k18,k19,k20,k21,k22;
    not(k11,dugum[2]);
    and(k18,dugum[3],k11);
    
    not(k12,dugum[1]);
    and(k19,dugum[3],k12);
    
    not(k13,dugum[0]);
    not(k14,dugum[2]);
    and(k20,k13,k14,dugum[1]);
    
    not(k15,dugum[2]);
    not(k16,dugum[1]);
    and(k21,k15,dugum[0],k16);
    
    not(k17,dugum[3]);
    and(k22,k17,dugum[2],dugum[1],dugum[0]);
    
    or(dugumun_seviyesi[0],k22,k21,k20,k19,k18);
    
    
    
    
endmodule
