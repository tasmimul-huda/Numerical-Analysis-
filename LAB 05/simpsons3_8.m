

a = 0;
b = pi/2;

h = (b-a)/3;

fa = sqrt(sin(a));
f1 = sqrt(sin(a+h));
f2 = sqrt(sin(a+2*h));
fb = sqrt(sin(b));

sum = fa + 3*f1 + 3*f2 + fb;

sum= sum *3*h /8;

display(sum)