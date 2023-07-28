%Q_5_mmkinetics
function reaction = mmkinetics(k1, k1r, k2, t0, tf, S0, E0, ES0, P0)
t_range = t0:0.1:tf;
[t, y] = ode45(@enzyme, t_range, [S0;E0;ES0;P0], [], k1, k1r, k2);
plot(t,y, '-o')
xlabel('Time sec'), ylabel('Concentration mol')
title('Michaelis Menten kinetics')
reaction = [t y];

function dy = enzyme(t, y, k1, k1r, k2)
dy = [- k1*y(1)*y(2) + k1r*y(3); (k1r+k2)*y(3) - k1*y(1)*y(2); k1*y(1)*y(2) - (k1r+k2)*y(3); k2*y(3)]
 
 % reaction = mmkinetics(2,1,1.5,0,6,8,4,0,0)