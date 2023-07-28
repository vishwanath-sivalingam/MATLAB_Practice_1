%secordreaction
function t_A = secordreaction(ts, tf, y0)
t_range = [ts, tf];
[t, y] = ode45(@myfirstODE, t_range, y0);
plot(t,y, '-ok')
xlabel('Time sec'), ylabel('Amount of C mol')
title('Second order reaction rate - Solution')
grid
t_A = [t y];
function dy = myfirstODE(~,y)
dy = [0.007]*(2-y)*(3-y)