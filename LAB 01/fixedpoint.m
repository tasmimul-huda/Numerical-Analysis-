clc;
clear all;

x0=input('input x0=');
fx=((x0+5/x0)/2);
x1=fx;
error= 0.0000001;
for i=1:50
  x=x1;
  fx=((x+5/x)/2);
  x1=fx;
  err=abs(x1-x);
if err<error
break
end
  
end
disp(x1)
