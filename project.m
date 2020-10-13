%preamble
close all; clear all; clc;

%initialize n_cross
n_cross=0;

y1 = [0,10];
for i = 1:10
    x1 = [i,i];
    line(x1,y1)
end

hold on

%define a line of a specified length
n = input('Number of Needles:\n');
for i = 1:n
x = 10*rand;
y = 10*rand;
theta = 2*pi*rand;
x_values = [x,x + cos(theta)];
y_values = [y, y + sin(theta)];
line(x_values, y_values)
end



axis([0, 10, 0, 10])

