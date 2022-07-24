clc;
clear all;

x1 = input("Enter initial value x1: ");
x2 = input("Enter initial value x2: ");

y1 = x1^2 - 4*x1 - 10;
y2 = x2^2 - 4*x2 - 10;

if (y1*y2)>0
    disp('No root within x1 & x2');
else
    x3 = (x1 + x2)/2;
    y3 =  x3^2 - 4*x3 - 10;
    
   while (abs(x2-x1)/x2)>0.00001
       if (y1*y3<0)
           x2 = x3;
           y2 = y3;
       else
           x1 = x3;
           y1 = y3;
       end
       x3 = (x1 + x2)/2;
       disp(x3)
       y3 = x3^2 - 4*x3 - 10;
   end 
   disp(x3);
end

    