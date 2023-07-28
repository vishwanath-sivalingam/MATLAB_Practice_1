% Sterilization
T = 110:10:200;
t = 7.13*exp(-0.021*(T-170));

disp(['Temperature', 'Steril Time'])
disp([T',t'])

plot(T,t, '-ok')
xlabel('Temperature C'), ylabel('Time min')
title('Sterilization time v Temperature')
grid