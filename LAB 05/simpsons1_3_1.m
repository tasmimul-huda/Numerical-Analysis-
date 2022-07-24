clc;
clear;

a = 0;
b =  pi/2;
h =( b-a) /2;

x = (a+b)/2;
f = @(x) (sqrt(sin(x)));

Ist = (h/3) * [f(a)+4 * f(x) + f(b)] 