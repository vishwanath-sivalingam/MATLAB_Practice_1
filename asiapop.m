%asia population

function asia_i = asiapop(yi, num)
year = [1750 1800 1850 1900 1950 2000 2010];
pop = [502 635 809 947 1402 3634 3879];

if num == 1
    method = 'linear'
elseif num == 2
    method = 'cubic'
else
    method = 'spline'
end
asia_i = interp1(year, pop, yi, method, 'extrap');
plot(year, pop, '-ok')
fprintf('Population = %5.0f', asia_i)
