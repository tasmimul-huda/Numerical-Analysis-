function y = r_k(f,h,y_1, X)

x = 1:h:X;
n = length(x);
y(1) = y_1;

for i = 1:n-1
    m1 = f(x(i), y(i));
    m2 = f(x(i)+h/2,y(i)+m1*h/2);
    m3 = f(x(i) +h/2, y(i) + m2*h/2);
    m4 = f(x(i) + h, y(i) + m3*h);
    
    y(i+1) = y(i) + h * (m1+2*m2+2*m3 + m4)/6;
    %fprintf('for x= %8.1f   m1= %6.1f   m2= %6.8f   m3= %6.8f  m4= %6.6f   y= %0.3f\n',x(i),m1,m2,m3,m4,y(i));
%     y(end-1)
end
end