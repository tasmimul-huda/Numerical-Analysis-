clc;
clear;
format short
f =  @(x,y) (2*y/x);
h = 0.25;
y_1 = 2;
x = 1:h:2;
X = 2;
y = r_k(f,h,y_1, X);
% disp(x);
disp(y);
f1 = f(x(2), y(2));
f2 = f(x(3), y(3));
f3 = f(x(4), y(4));

yp4 = y(1) + (4*h/3) * (2*f1 - f2+2*f3);
fp4 = f(x(5), yp4);

yc4 = y(3) + (h/3) * (f2+4*f3 + fp4)

f4 = f(X, yc4)

%yc = y(3) + (h/3) * (f2+4*f3 + f4)






