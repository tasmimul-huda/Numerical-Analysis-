clc;
close all;

A = [10 3 1; 3 10 2; 1 2 10];
B =  [19;29;35];

N = length(B);
X =zeros(N,1); 
Aug = [A B];

for j  =1:N-1 %% for column
    for i = j+1:N  %% for row
        m = Aug(i, j) / Aug(j,j);
        Aug(i, :) = Aug(i, :) - m*Aug(j, :);
    end
end

X(N) = Aug(N,N+1) / Aug(N,N);
for k = N-1:-1:1
    X(k) = (Aug(k,N+1) - Aug(k,k+1:N) * X(k+1:N)) / Aug(k,k);
end
%Aug
X