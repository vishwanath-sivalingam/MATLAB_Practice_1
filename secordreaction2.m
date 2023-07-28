%secordreaction2
function t_A = secordreaction2(k,a,b,ts, tf, y0)        %changes here
t_range = [ts, tf];
[t, y] = ode45(@myfirstODE, t_range, y0, [], k, a, b);  %changes here

plot(t,y, '-ok')
xlabel('Time sec'), ylabel('Amount of C mol')
title('Second order reaction rate - Solution')
grid

t_A = [t y];
function dy = myfirstODE(~,y, k, a, b)                  %changes here
dy = [k*(a-y)*(b-y)];                                   %changes here