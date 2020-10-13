%preamble 
clear all; close all; clc; 

%load data 
load('noisy.mat')

%call function plot best fit line 
[M,B,R_2]=my_least_square(x,y)

%For loop for the fit line 
for idx=1:length(x)
    y_hat(idx)=M*x(idx)+B;
    %end for loop
end
plot(x,y_hat,'r')
