clc;
clear all;
A = [2 4 -6; 1 5 3; 1 3 2];
B =  [-4;10;5];
disp("A = "); disp(A)
disp("B = "); disp(B)
N = length(A);
L = zeros(N,N);
U = zeros(N,N);


%%set diagonal of L to 1
for a = 1:N
    L(a,a) = 1;
end
U(1, :) = A(1,:) ;
L(:,1) = A(:,1) / U(1,1);
for i = 2:N  
    for j = i:N
        U(i,j) = A(i,j) - L(i,1:i-1) * U(1:i-1,j);
    end
    for k = i+1:N 
        L(k,i) = (A(k,i) - L(k,1:i-1) * U(1:i-1,i))  / U(i,i) ;
    end
end
disp("L = "); disp(L)
disp("U = "); disp(U)
Y = zeros(N,1);

Y(1) = B(1) / L(1,1);

for k = 2:N
    Y(k) = (B(k) - L(k, 1:k-1) * Y(1:k-1))/ L(k,k);
end
disp("Y = "); disp(Y)
X = zeros(N,1);
X(N) = Y(N) / U(N,N);
for k = N-1: -1:1
    X(k) = (Y(k) - U(k,k+1:N) * X(k+1:N)) / U(k,k);
end
disp("X = "); disp(X)