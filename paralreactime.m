% Parallel reaction time
function t = paralreactime(A0, C,  k1, k2, x0)
t = fzero(@(x) kinetics(x, A0, C,  k1, k2), x0);
function f = kinetics(x, A0, C,  k1, k2)
f = -C + A0*k2/(k1+k2) * (1 - exp(-(k1+k2)*x));