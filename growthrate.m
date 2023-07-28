%% growth rate

function v_required = growthrate(t_start, h, t_required)
t_end = t_required + h;
t = t_start:h:t_end;
p = 1e6 + 1e4*t - 1e3*t.^2;
v = diff(p)./h';
v_required = v(end);

subplot(2,1,1)
plot(t(1:end-1), p(1:end-1))
xlabel('Time hour'), ylabel('p unit')
title('Population growth')
grid

subplot(2,1,2)
plot(t(1:end-1),v)
xlabel('Time hour'), ylabel('dp/dt unit/hour')
title('Growth rate')
grid
