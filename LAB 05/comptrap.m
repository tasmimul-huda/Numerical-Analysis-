a = -1;
b = 1;
n = 4;

h  = (b-a) /n;

sum = h * (exp(a) + exp(b)) /2;

for i=1:n-1
    sum = sum + h * exp(a + i*h);
end

display(sum)