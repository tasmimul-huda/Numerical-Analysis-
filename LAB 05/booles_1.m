%booles for sqrt sinx

clc;
clear;

f = @(x) (sqrt(sin(x)));
a = 0;
b =  pi/2;
n = 4;

h = (b-a)/4;

Ib = (2 *h /45) * ( 7*f(a) + 32 *f(a+h) + 12 *f(a+2*h) + 32 * f(a+3*h) +7 * f(b));

disp(Ib)