%PredatorPrey
function ppmodel = PredatorPrey(k1, k2, k3, k4, k5, ts, tf, X0, Y0)
t_span= [ts tf];   
[t,y] = ode45(@PPM, t_span, [X0;Y0], [], k1, k2, k3, k4, k5);

subplot(1,2,1)
plot(t,y)
%axis square
xlabel('Time, year'),ylabel('Amount of x and y species, thousand')
title('Prey and predator amounts')
legend('Prey','Predator')
grid

subplot(1,2,2)
plot(y(:,1),y(:,2))
%axis square
xlabel('Prey'),ylabel('Predator')
title('Phase plane')
grid
ppmodel = [t,y];

function dy = PPM(t, y, k1, k2, k3, k4, k5)                     %~ OR t?
dy = [k1*y(1) - k2*y(1)*y(2) - k5*y(1)^2; 
    -k3*y(2) + k4*y(1)*y(2)];

%ppmodel = PredatorPrey(1.011, 1.002, -0.999, 1.006, 0.101, 0, 20, 3, 3)
%ppmodel = PredatorPrey(1.1, 1.0, -1.0, 1.0, 0.1, 0, 20, 2, 2)
