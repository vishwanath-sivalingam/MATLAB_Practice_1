%consreactime

function t = consreactime(A0, B, k1, k2, x0)
t = fzero(@(x) kinetics(x, A0, B, k1, k2), x0);

function f = kinetics(x, A0, B, k1, k2)
f = -B + A0*(k1/(k2-k1))*(exp(-(k1)*x)- exp(-(k2)*x));

%A0 = 2.3 mol/L 
%B = 0.012 mol/L
%k1 = 2.6e-3
%k2 = 9.5e-3
%x0 = 3 (initial guess time)
% in command window
%t = consreactime(2.3, 0.012, 2.6e-3, 9.5e-3, 3)