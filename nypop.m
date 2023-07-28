% NY population
function nyi = nypop(yi, num)
y = [1920:20:2000 2010];
p = [5.620 7.455 7.781 7.072 8.008 8.175];
if num == 1
    method = 'linear';
elseif num == 2
    method = 'cubic';
else
    method = 'spline';
end
nyi = interp1(y, p, yi, method, 'extrap');