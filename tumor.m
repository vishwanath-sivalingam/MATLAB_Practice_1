%Q_11 tumor mass growth
function mass = tumor(t0,tf,M0)
t_range = [t0 tf];
[t, y] = ode45(@growth, t_range, M0);

plot(t,y, '-ok')
xlabel('Time'), ylabel('Tumor mass')
title('Tumor mass')
mass = [t, y] %output assignment

function dy = growth(t, y)
a = 0.03;
b = 0.026; 
dy = [b*y(1)^(3/4)- a*y(1)];
% mass = tumor(0, 600, 0.001)