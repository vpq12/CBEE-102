%my first for loop
clear all; close all; clc;
% angle(rad)
theta= [0:(pi/8):(2*pi)];
%looop thru index 
for idx= 1:17
    %calc y
    y(idx) =sin(theta(idx));
end

    plot (theta,y)
    title('the sine func')
    xlabel ('theta(rads)')
    ylabel ('sin(theta)')
    