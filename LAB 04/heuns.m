clc;
clear;
h =0.25;
x1 = 1;
y1 = 2;
value = 2;

while x1<value
    m1 = 2 *y1 /x1;
    x2 = x1 +h;
    y2 = y1 + h* m1;
    m2 = 2*y2 /x2;
    y2 = y1 + h * (m1+m2)/2;
    x1 = x2;
    y1 = y2;
end

disp(y2);