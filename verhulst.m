%Q_8_verhulst
function population = verhulst(N0)
t_range = 1790:20:2050;
t_scaled = (t_range-1890)/62.5
[t, y] = ode45(@popratio, t_scaled, N0);
plot(t,y, '-ok')
xlabel('Time years'), ylabel('Poulation millions')
title('Malthus-Verhulst population model')
population = [t, y] %output assignment

function dy = popratio(t, y)
r = 1.413;  %growth rate
k = 387.7;  %carrying capacity
dy = r*y(1)*(1- y(1)/k);
% population = verhulst(10)