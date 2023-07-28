% BMI
function mybmi = bmi(weight, height)
bmi_index = weight/(height^2)
if bmi_index <= 20
    fprintf('BMI = %5.2,', bmi_index)
    fprintf('\n Too thin')
elseif bmi_index >= 20 & bmi_index <= 25 
    fprintf('BMI = %5.2,', bmi_index)
    fprintf('\n Normal')
else bmi_index >= 20
    fprintf('BMI = %5.2,', bmi_index)
    fprintf('\n Too large')
end