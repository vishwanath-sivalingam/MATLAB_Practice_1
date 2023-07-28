%lotka
function population = PredatorPrey2(k1,k2,k3,k4,t0,tf,X0,Y0)
t_range = [t0 tf];
[t, y] = ode45(@ppm, t_range, [X0;Y0], [], k1, k2, k3, k4);

plot(t,y, '-o')
xlabel('Time'), ylabel('Population Rabbits and Foxes')
title('Lotka-Voltera population model')
legend('Rabbits','Foxes')
population = [t, y] %output assignment

function dy = ppm(t, y, k1, k2, k3, k4)
dy = [k1*y(1)-k2*y(1)*y(2); -k3*y(2) + k4*y(1)*y(2)];
% population = PredatorPrey2(2, 0.01, 0.8, 0.0002, 1, 15, 5000, 100)