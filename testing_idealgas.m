% This script tests the ideal gas
% function for a single value of T.
clear all; close all; clc;
% number of mols
n = 1;
% gas constant (J/(mol*K))
R = 8.314;
% temperature (K)
T = 300;
% volume (mˆ3)
V = [0.01:0.01:0.1];
% function call
P = ideal_gas(n,R,T,V);
% plot results
plot(V,P)
xlabel('Volume (mˆ3)')
ylabel('Pressure (Pa)')