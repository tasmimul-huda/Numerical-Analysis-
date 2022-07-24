tspan = [1:0.25:2];
y0 = 2;
[t,y] = ode45(@(x,y) (2*y/x), tspan, y0);

disp(y)
