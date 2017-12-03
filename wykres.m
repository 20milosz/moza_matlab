f = [0:0.1:2e4];
R1=1e1;
R2=1e3;
R3=6.6e5;
Rs1=10;
Rs2=0;
C11=3e-6;
C12=C11;
C21=3e-8;
C22=C21;
C0=3e-10;
T = transmitancja(R1, R2, R3, Rs1, Rs2,  C11, C12, C21, C22, C0, f);
T = 20*log10(T);
plot(f, T)
grid on