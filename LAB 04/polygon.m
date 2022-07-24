clc;
clear;

f = @(x,y) (2*y/x);

h = 0.25;
x = 1:h:2;
y(1) = 2;
n = length(x);

for i=1:n
    fprintf('Iteration: %d\n', i);
    m1= f(x(i), y(i));
    m2 = f(x(i) + h/2, y(i) +m1 * h/2);
    y(i+1) = y(i) + m2 * h;
    fprintf('for x=%4.4f,  y=%4.4f\n',x(i),y(i));
end

