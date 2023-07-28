%BatchReactor
function t_A_P_U = BatchReactor(k1,k2,ts,tf,A0,P0,U0)
t_range = [ts:0.01:tf];
[t,y] = ode45(@BR, t_range,[A0,P0,U0],[], k1, k2);

plot(t,y,'-o')
xlabel('Time'),ylabel('A, P, U -species amount')
title('Isotermal Batch Reactor')
legend('A','P','U')
grid

%t_A_P_U=[t,y]

function dy = BR(~,y,k1,k2)  %~ here (does t work?)
dy = [-k1*y(1)-k2*y(1)^2; k1*y(1);k2*y(1)^2]

%t_A_P_U=BatchReactor(2, 1, 0, 2, 2 ,0 ,0)