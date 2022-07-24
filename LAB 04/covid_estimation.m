clc;
clear;
beta = 0.0845;
S = 3 * 10 ^ 6;
I = 100;
R = 0;
t=1;
gama = 0.07;
f1 = @(beta,S, I) (- beta * S * I);
f2 = @(beta,S, I, gama) (beta * S * I - gama * I) ;
f3 = @(gama, I) (gama*I);

K1 = f1(beta,S, I);
L1 = f2(beta,S, I, gama);
M1 = f3(gama, I);
    
K2 = f1(x(i)+h/2,y(i)+m1*h/2);
L2 = f2(x(i)+h/2,y(i)+m1*h/2);
M2 = f3(x(i)+h/2,y(i)+m1*h/2);
    
K3 = f1(x(i) +h/2, y(i) + m2*h/2);
L3 = f2(x(i) +h/2, y(i) + m2*h/2);
M3 = f3(x(i) +h/2, y(i) + m2*h/2);
    
K4 = f(x(i) + h, y(i) + m3*h);
L4 = f(x(i) + h, y(i) + m3*h);
M4 = f(x(i) + h, y(i) + m3*h);