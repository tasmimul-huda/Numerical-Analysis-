clc;
clear;
format short
f =  @(x,y) (2*y/x);
h = 0.01;
y_1 = 2;
x = 1:h:2;
X = 2;
y = r_k(f,h,y_1, X);
% disp(x);
% disp(y);
f0 = f(x(1), y(1));
f1 = f(x(2), y(2));
f2 = f(x(3), y(3));
f3 = f(x(4), y(4));

y(4) ;
yp4 = y(4) + (h/24) * (55*f3 - 59*f2 + 37 *f1 - 9 *f0);

fp4 = f(X, yp4);

yc4 = y(3) + (h/24) * (f1 - 5*f2 +19*f3 + 9* fp4) 

