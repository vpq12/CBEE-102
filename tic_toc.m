%preamble
clear all; close all; clc; 

load('noisy.mat')

%starter time
tic 

%call function 
[M,B,R2]= least_square(x,y);

%stop time 
toc