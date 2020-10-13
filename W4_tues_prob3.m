%week 04, Tuesday, prob3
%preamble
clear all; close all; clc; 

% input x value 
x=-6*pi:0.1:6*pi;

%input y value 
y=-6*pi:0.1:6*pi; 

%loop through y value 
for y_idx=1:length(y)
%loop through x value 
for x_idx=1:length(x)
    z(x_idx, y_idx)= sqrt((x(x_idx)^2)+(y(y_idx)^2));
end 
end

%plot z 
s=surf(z);
s.EdgeColor ='None';