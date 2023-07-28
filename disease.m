%Q_10_SSIR_Epidemiology
function population = disease(t0,tf,S0,I0,R0)
t_range = [t0 tf];
[t, y] = ode45(@ssir, t_range, [S0;I0;R0]);

plot(t,y, '-o')
xlabel('Time'), ylabel('Population S I R')
title('SSIR_Epidemiology')
legend('Susceptible', 'Infected', 'Recovered')
population = [t, y] %output assignment

function dy = ssir(t, y)
b = 0.001; %beta
v = 0.1;
dy = [-b*y(1)*y(2); b*y(1)*y(2)-v*y(2); v*y(2)];
% population = disease(0, 60, 700, 1, 0)