clc, clear; close all;

x = [45 5 55 60];
y = [0.7071 0.7660, 0.8192 0.8660];
n = length(x);
X = 52; %input();
D = zeros(n,n);
D(:, 1) = y;

%difference table
for j=2:n
    for i=1:n-j+1
        D(i,j) = D(i+1, j-1) - D(i,j-1);
    end
end
%D

h = x(2) - x(1);

u = (X-x(1)) /h;
A = y(1); G = u;
for k=1:n-1
    A = A+ G * D(1,k+1);
    G = (u-k) / (k+1) * G;
end

A