clc;
clear all;

x1=input('enter the value of x1=');
x2=input('enter the value of x2=');

fx1=x1^2-4*x1-10;
fx2=x2^2-4*x2-10;

while (((x2-x1)/x2)<0.000001)    
    x3 = x1-(fx1*((x2-x1)/(fx2-fx1)));
    disp(x3)
    fx0=x3^2-4*x3-2;
        if(fx0*fx1<0)
            x2=x1-(fx1*((x2-x1)/(fx2-fx1)));
        else
            x1=x1-(fx1*((x2-x1)/(fx2-fx1)));
        end
        
end
 disp(x3)
    