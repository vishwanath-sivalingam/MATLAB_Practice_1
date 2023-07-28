year = [1973, 1975, 1980, 1985, 1990, 1995:2008];
energy = [4.410, 4.687, 5.428, 6.084, 6.040, 6.560, 6.600, 6.610, 6.490, 6.520, 6.100, 6.260, 6.430, 6.380, 6.270, 6.229, 6.608, 6.540, 7.221];

a=polyfit(year, energy, 3)
x_pol=linspace(min(year),max(year)); % vector with 100 (default) X-AXIS

% x values for plotting
y_fit =polyval(a,x_pol); % vector of y values calculated at x_pol Y DATAFIT
plot(year, energy,'o', x_pol, y_fit) % plots polynomial and data points
xlabel('year'), ylabel('energy consumption'),grid
legend('original data','cubic polynomial fit')

