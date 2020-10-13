% nested wavenumbers.m
% This script plots the wavenumber tutorial
% using a nested loop to change the value of k.
clear all; close all; format compact; clc;
% define wavenumbers
k = [0.5, 1, 2];
% define independent variable array
theta = [0:0.01:4*pi];
% loop through wavenumbers
for k_idx = 1:length(k)
% loop through theta
for t_idx = 1:length(theta)
% calculate the function
y(t_idx) = sin(k(k_idx)*theta(t_idx));
end % end theta loop
% plot the current line
plot(theta,y)
hold on;
end % end k loop
% format the plot
title('Wavenumbers')
xlabel('x-axis')
ylabel('y-axis')
legend('0.5', '1', '2')
