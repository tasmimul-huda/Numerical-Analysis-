clc;
clear;

%f = @(x) (sqrt(sin(x)));
%a = 0;
%b =  pi/2;

f = @(x) (1/x);
a = 1;
b =  2;
n = 3;
h = b-a;
 r = zeros(n,n);
sum = 0;
r(1,1)= Trap(f,a,b,h);
for kk=2:n
    h = h/2;
    x = a + h;
    sym x
    r(kk,1)=r(kk-1,1) /2+h*  symsys(f(x));
    close all
end
 %{
nn=0;

for kk=2:n
    for jj=2:n
        if jj+nn>n
            break
        end
        r(jj+nn,kk) = (4^(kk-1)*r(jj+nn,kk-1)-r(jj-1+nn,kk-1))/(4^(kk-1)-1);
    end
    nn=nn+1;
end

 r
 %}
