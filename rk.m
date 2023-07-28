%REDLICH KWONG

function V = rk(P, T, Pc, Tc)
V = fzero(@(x) myf(x, P, T, Pc, Tc), 22);
function y = myf(x, P, T, Pc, Tc)
R = 0.08206;
a = 0.4275*R^2 * Tc^(5/2)/Pc;
b = 0.08664*R*Tc/Pc;
y = P - R*T/(x-b) - a/(sqrt(T)*x*(x+b));