clc;
clear all;

x0=input('input x0=');
fx=x0^2-3*x0+2;
fx1=2*x0-3;

x1=x0-(fx/fx1);

while abs(x1-x0/x1) >= 0.00001
    
   x0=x1;
   fx=x0^2-3*x0+2;
   fx1=2*x0-3;
   x1=x0-(fx/fx1);
   disp(x1)
    
end
disp(x1)

  