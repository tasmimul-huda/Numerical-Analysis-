%newton interpolation
%The specific heat cp of aluminum depends on temperature T as follows2:
%find the 
clc;
%x = [0.2 0.4 0.6 0.8 1.0]; y = [1.150 0.855 0.377 -0.266 -1.049];

x = [-250 -200 -100  100 300];
y = [0.0163 0.318 0.699  0.941 1.04];

plot(x,y)
X = 0;


n = length(x);
D = zeros(n,n);
D(:,1) = y;

%(D(i+1,j-1) - D(i, j-1)) / x(i+j-1) - (x(i)
for j = 2:n
    for i = 1:(n-j+1)
        D(i,j) = (D(i+1,j-1) - D(i, j-1)) / (x(i+j-1) - (x(i)));
    end
end
disp("table"); disp(array2table(D));
for i = 1:n-1
    P(i) = prod(X-x(:,1:i)) * D(1, i+1);
end

Y = y(1) + sum(P);

disp('Y'); disp(Y);
