function FA_6_5_1a
Lambda=[0.589 0.577 0.579 0.560 0.5 0.46];
T=25:25:150;

Lambda_coeff=polyfit(T,Lambda,2); % quadratic fit
fprintf('Fit Equation: \nLambda=%11.6f*T^2+%7.5f*T%5.2f\n',Lambda_coeff)

T_fit=linspace(T(1),T(end),20); % T for the fit curve
Lambda_fit=polyval(Lambda_coeff,T_fit);% fitted lambda values

plot(T,Lambda,'o',T_fit,Lambda_fit,'-')
grid
xlabel('Temperature, ^oC'),
ylabel('\lambda, NaCl solution, W/(m^oC)')
legend('-Original Data','Second degree polynomial fit','location','best')
%To run: >> FA_6_5_1a