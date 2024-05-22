`timescale 1ns / 1ps


module asansor(
    input [1:0] bulundugu_kat,
    input [1:0] buton,
    
    output [1:0] durdugu_kat

    );
    
    wire k1,k2,k3,k5,k6,k7,k8;
    not(k1,buton[1]);
    and(k5,k1,buton[0]);
    
    not(k2,buton[1]);
    and(k6,bulundugu_kat[0],k2);
    
    not(k3,buton[1]);
    and(k7,bulundugu_kat[1],k3);
    
    and(k8,bulundugu_kat[1],bulundugu_kat[0],buton[0]);
    
    or(durdugu_kat[1],k8,k7,k6,k5);
    
    wire k9,k10,k11,k12,k13,k14,k15,k16,k17,k18;
    not(k9,buton[1]);
    and(k15,k9,buton[0]);
    
    not(k10,buton[1]);
    and(k16,bulundugu_kat[1],k10);
    
    not(k11,buton[1]);
    not(k12,bulundugu_kat[1]);
    not(k13,bulundugu_kat[0]);
    and(k17,k11,k12,k13);
    
    not(k14,buton[0]);
    and(k18,bulundugu_kat[1],k14);
    
    or(durdugu_kat[0],k18,k17,k16,k15);
    
    
endmodule
