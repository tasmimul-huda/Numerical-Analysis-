%Lagrange Interpolation
clc;
clear variables;

%x = [0 1 2 3] ;
%y = [0 1.7183 6.3891 19.0855];

x = [2 3 4] ;
y = [1.4142 1.7321 2];

n = length(x);
k=2.5; %input('enter the value of x which the interpolation required');

sum=0;
for i=1:n
    l=1;
   for j=1:n
       if i~=j
           l=l*(k-x(j))/(x(i)-x(j));
           disp(l);
       end
   end
       sum=sum+l*y(i);
end
a= sum;
disp('interpolated funtion value=');
disp(a)