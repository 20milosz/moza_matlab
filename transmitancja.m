function [y]= transmitancja(R1, R2, R3, Rs1, Rs2,  C11, C12, C21, C22, C0, f)
    w=2*pi*f;
    Z1=1./(1i*w)./(1j*w*C11*C12*Rs1+C11+C12);
    Z2=1./(1i*w)./(1j*w*C21*C22*Rs2+C21+C22);
    Z3=1./(1i*w*C0);
    y = abs(1./(R1.*((R2.*R3 + R2.*Z2 + R2.*Z3 + R3.*Z2 + Z2.*Z3)./(R1.*Z2.*Z3) - ((R3 + Z3)./Z3 - (R2*R3 + R2.*Z2 + R2.*Z3 + R3.*Z2 + Z2.*Z3)./(Z2.*Z3))./R2 + (R2.*R3 + R2.*Z2 + R2.*Z3 + R3.*Z2 + Z2.*Z3)./(Z1.*Z2.*Z3))));
end




