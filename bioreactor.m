%Q_6,7_bioreactor
function reaction = bioreactor(t0, tf, N0, S0)

t_range = t0:0.1:tf;
[t, y] = ode15s(@bacnut, t_range, [N0;S0]);
plot(t,y, '-ok')
xlabel('Time hour'), ylabel('bac_N and nut_S')
title('Bioreactor, Bacteria and Nutrient')
reaction = [t, y] %output assignment

function dy = bacnut(t, y)
r = 1.35;
a = 0.004;
D = 0.25;
g = 0.23;
R = 6;
dy = [y(1)*((r*y(2)/(a + y(2)))- D); 
    D*(R-y(2))-(1/g)*y(1)*((r*y(2)/(a + y(2))))];
 % reaction = bioreactor(0,10,0.1,6)  is graph correct? 