A = [2     1     1;3     5     2; 2     1     4];;
B =[5;15;8];
P = input('Enter intial guess vector: ');
n = 100;%input('Enter no of iterations: ');
e = 0.000001;%input('Enter your tollerance: ');
N = length(B);
X = zeros(N,1);
for j= 1:n
    for i=1:N
        X(i) = (B(i)/A(i,i)) - (A(i,[1:i-1,i+1:N]))*P([1:i-1;i+1:N])/A(i,i);
        P(i) = X(i);
    end
    fprintf('Iterations no %d\n',j)
    X
end