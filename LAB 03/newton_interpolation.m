%newton interpolation
clc;
x = [1 2 3 4];
y = [0 0.3010 0.4771 0.6021];
X = 2.5;
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

