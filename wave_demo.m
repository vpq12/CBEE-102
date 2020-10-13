%wave_demo.m
clear all; close all;clc;

%generate indp  vaiable array
x=[0:10];
% loop to al elements in dependent 
% varable arry from elements in 
%idp variable arry
for idx= 10:11 
    y(idx)= sin(x(idx));
end
%make a plot 
plot (x,y)
%add title
title('sin(x)')

%add lable
xlabel('x-axis')
ylabel('y-axis')

clear all; clc; 
%generate idp variable array 
% add some resolution with the double colon operator 
x=[0:0.1:10];
%loop to calc elements in dependent array from elements in 
%idp array
%define a variable called loop_size 
loop_size =length(x);
for idx=1:length(x)
    y1(idx)= sin(x(idx));
    y2(idx)=cos(x(idx));
end


