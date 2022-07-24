clc;
x = [0  1   2  4 5 6];
y = [1 14 15 5 6 19];
X = 3;
n = length(x);
D = zeros(n,n);
%{
figure
grid on
plot(x,y,'o')
grid on
hold on
plot(x,y,'LineWidth', 4)
%%hold off
%}
D(:,1) = y;
%(DD(i+1,j-1) - DD(i, j-1)) / x(i+j-1) - (x(i)
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

%{
disp('x'); disp(x);
x = [0  1   2   3  4  5  6];
y = [1 14 15 10 5 6 19];
plot(x,y,'*', 'LineWidth', 2)
grid on
hold on
plot(x,y,'LineWidth', 1)
%}




