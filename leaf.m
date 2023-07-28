%Q_12 leaf growth rate
function surface = leaf(k1, k2, t0,tf, S0)
t_range = [t0 tf];
[t, y] = ode45(@growth, t_range, S0, [], k1, k2 );

plot(t,y, '-ok')
xlabel('Time'), ylabel('Leaf surface area')
title('leaf growth rate')
surface = [t, y]; %output assignment

function dy = growth(t, y, k1, k2)
dy = [k1*y(1)^(3/2)*cos(k2*t- pi)];
% surface = leaf(0.001309, 0.2618, 6, 18, 1600)