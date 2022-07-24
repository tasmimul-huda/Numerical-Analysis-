clc;
clear;

f = @(x,y) (2*y/x); %(x^2 + y^2);

% h = 0.2;
% x = 0:h:0.4;
% n = length(x);
% y(1) = 0;


h = 0.25;
x = 1:h:2;
n = length(x);
y(1) = 2;

for i = 1:n
    fprintf('Iteration: %d\n', i);
    m1 = f(x(i), y(i));
    m2 = f(x(i)+h/2,y(i)+m1*h/2);
    m3 = f(x(i) +h/2, y(i) + m2*h/2);
    m4 = f(x(i) + h, y(i) + m3*h);
    
    y(i+1) = y(i) + h * (m1+2*m2+2*m3 + m4)/6;
    fprintf('for x= %8.3f   m1= %6.8f   m2= %6.8f   m3= %6.8f  m4= %6.6f   y= %8.9f\n',x(i),m1,m2,m3,m4,y(i));
end