% MOL

function conc = molconc(molwt, d, M)
M_H20 = 18;
molality = 1000*M/(1000*d - M*M_H20);
mol_fraction = molality/(molality + 1000*M_H20);

fprintf('\nMol wt = %5.2f g/mol', molwt)
fprintf('\nsoltion density = %5.2f g/L', d)
fprintf('\nMolarity = %5.2f M (or mol/L)', M)
fprintf('\nMolality = %10.5f Molal (or g/mol)', molality)
fprintf('\nMole Fraction X = %10.8f (dimensionless)', mol_fraction)
