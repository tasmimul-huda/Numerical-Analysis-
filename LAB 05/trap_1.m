clc;
clear;

a = 0;
b =  pi/2;
h = b-a;


f = @(x) (sqrt(sin(x)));

It = (h/2) * [f(a)+ f(b)] 