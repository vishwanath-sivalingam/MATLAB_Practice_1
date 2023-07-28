function r_required = reactrate(m0, k, tstart, t_required, h)
tend = t_required+h;
t = tstart:h:tend;
m = m0*exp(-k*t)
r = -(diff(m)./h)  %why -
r_required = r(end)

plot(t(1:end-1),m(1:end-1), '-ok')
xlabel('Time, hour')
grid
hold on
plot(t(1:end-1),r, '-ob')
xlabel('Time, hour'),ylabel('m and dm/dt')
hold off

%r_required = reactrate(5, 1.8, 0, 2, 0.2)
