a = 0;
b =  pi/2;
n = 2;

h  = (b-a) /n;

sum = h * (sqrt(sin(a)) + sqrt(sin(b))) /2;

for i=1:n-1
    sum = sum + h * (sqrt(sin(a + i*h)));
end

display(sum)