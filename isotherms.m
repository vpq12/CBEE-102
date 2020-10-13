% This script utilizes the
% ideal gas function to plot
% ideal gas law isotherms.
clear all; close all; clc;
% number of mols
n = 1;
% gas constant (J/(mol*K))
R = 8.314;
% temperature (K)
T = 300:100:700;
% volume (mˆ3)
V = [0.01:0.01:0.1];
% function call
% plot inside loop
for i = 1:length(T)
P = ideal_gas(n,R,T(i),V);
plot(V,P)
hold on;
end
% format plot
title('Ideal Gas Law Isotherms')
xlabel('Volume (mˆ3)')
ylabel('Pressure (Pa)')