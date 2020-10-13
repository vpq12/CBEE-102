%preamble 
clear all; close all; clc;

tic 
%define number of data points 
% (max value of 10^8)
n= 10^6;

%make a linear data set of 
%n points between 5 and 15 
y1 = linspace(5,15,n);

%make a normally distributed 
%random data set with n ponts 
y2= rand (1,n); 

%combine arrays to create 
%linear noisy data 
y= y1 +y2; 

%generate x-array from 0 to 10 
x=linspace (0.10,n);
toc