% bounce 3D.m
% This script utilizes a nested for-loop
% to plot an interesting 3D surface.
clear all; close all; format compact; clc;
% make arrays using variables for easy scaling
scale = 6;
incr = 0.5;
x = [-scale*pi:incr:scale*pi];
y = [-scale*pi:incr:scale*pi];
% loop through the columns
for y_idx = 1:length(y)
% loop through the rows
for x_idx = 1:length(x)
% calculate the function
z(x_idx,y_idx) = sin(sqrt(x(x_idx)^2 + y(y_idx)^2))/sqrt(x(x_idx)^2 + y(y_idx)^2);
end
end
% plot surface and save handle
s = surf(z);
% use handle to set edge color
s.EdgeColor = 'None';