%SubsequentReaction
function t_A_B_C = SubsequentReaction(k1,k2,ts,tf,A0,B0,C0)
t_range=[ts tf];
[t,y]=ode45(@SR,t_range,[A0,B0,C0],[],k1,k2);

plot(t,y);
title('Subsequent reaction A->B->C')
xlabel('Time, min'),ylabel('A, B, C amounts, mol')
legend('A','B','C')
grid

t_disp=[ts 0.5 1:tf];% times for displaying
y_disp=interp1(t,y,t_disp,'spline');% y for displaying
t_A_B_C=[t_disp' y_disp];

function dy=SR(~,y,k1,k2)
dy=[-k1*y(1);
k1*y(1)-k2*y(2);
k2*y(2)];

% To run >>t_A_B_C=SubsequentReaction(2,6,0,6,2.5,0,0)