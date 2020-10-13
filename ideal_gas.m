function P = ideal_gas(n,R,T,V)
% This function uses the ideal gas
% law to calculate pressure over a
% given volume array.
% Pay careful attention to units.
% Variables
% n: number of mols
% R: universal gas constant
% T: temperature
% V: volume (array)
% P: pressure (array)
% calculation
for i = 1:length(V)
P(i) = (n*R*T)/V(i);
end
end
