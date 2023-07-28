% BMR
function mybmr = bmr(sex, w, h, a)
if sex == 'm'
    bmrdata = 65 + 13.7*w + 5*h - 6.8*a
    fprintf('Your BMR = %5.2f', bmrdata)
elseif sex == 'f'
    bmrdata = 665 + 9.6*w + 1.8*h - 4.7*a
    fprintf('Your BMR = %5.2f', bmrdata)
end