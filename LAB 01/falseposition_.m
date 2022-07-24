clc;
clear all;

x1=input('enter the value of x1=');
x2=input('enter the value of x2=');

%fx1=x1^2-4*x1-10;
%fx2=x2^2-4*x2-10;

fx1=x1^3-6*x1^2+11*x1-6;
fx2=x2^3-6*x2^2+11*x2-6;

if fx1*fx2>0
    disp('No root within x1 & x2');
else
    x3 = x1-(fx1*((x2-x1)/(fx2-fx1)));
    fx0=x3^3-6*x3^2+11*x3-6;
    while (((x2-x1)/x2)<0.000001)    
        if(fx0*fx1<0)
            x2=x1-(fx1*((x2-x1)/(fx2-fx1)));
        else
            x1=x1-(fx1*((x2-x1)/(fx2-fx1)));
        end
        
    end
    disp(x3)
end


    