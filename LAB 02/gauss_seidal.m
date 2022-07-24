clc;
clear;

A = [10 3 1; 3 10 2; 1 2 10];
B =  [19;29;35];
P = input("initial guess: ");
n = input("no of iter: ");
e = 0.000001; %% tolerence
N= length(B);
X = zeros(N,1);
Y = zeros(N,1); %% for stopping

for j = 1:n
    for i = 1:N
        X(i) = (B(i) /A(i,i)) - (A(i,[1:i-1,i+1:N]) * P([1:i-1, i+1:N])) / A(i,i);
        P(i) = X(i);
    end
    
    fprintf('Iteration no %d\n', j)
    disp(X) 
    
     if abs(X-P) <e
        break
     end
    Y = X;
end