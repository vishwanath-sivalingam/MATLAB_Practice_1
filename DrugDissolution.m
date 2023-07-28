%DrugDissolution
function t_DS_Blood=DrugDissolution(a,b,ts,tf,x0,y0)
t_range=[ts:0.15:0.9,1:0.5:2.5,3:tf];
[t,y]=ode15s(@Drug,t_range,[x0;y0],[],a,b);

t_plot=linspace(ts,tf);
y_plot=interp1(t,y,t_plot,'spline');
plot(t_plot,y_plot)
xlabel('Time, hour'),ylabel('X and Y concentrations, mg')
title('Drug concentrations in the DS and Blood')
legend('DS','Blood')
grid

t_DS_Blood=[t,y];

function dy=Drug(t,y,a,b)
if t-6*floor(t/6)<0.5
    D=4;
else
    D=0;
end

dy=[-a*y(1)+D ; a*y(1)-b*y(2)];

% t_GI_Blood=DrugDissolution(1.38,0.138,0,6,0,0)