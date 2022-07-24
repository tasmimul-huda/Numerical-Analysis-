
%%composite simpsons 1/3
clc;
clear;

a = 0;
b =  pi/2;
n = 4;
f = @(x) (sqrt(sin(x)));
h  = (b-a) /n;
odd_sum = 0;
for i = 1:2:n-1
    odd_sum = odd_sum + f(a+i*h);
end
even_sum = 0;
for i = 2:2:n-2
    even_sum = even_sum + f(a+i*h);
end

Ics1 = (h/3) * (f(a) + 4 * odd_sum + 2 * even_sum +f(b))


