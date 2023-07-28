function Ea = C4_functions_2(k_A, R, T, T_T0, x_0)
Ea = fzero(@(x) myf(k_A, R, T, T_T0), x_0);
function f = myf(x,k_A, R,T,T_T0)
f = k_A - T0*exp(-x/(R*T));
%Ea = activation_energy(8.7e-14, 8.314, 310, 1.3, 1e4) in command window;