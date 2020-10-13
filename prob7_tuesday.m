%problem 7

%preamble
clear all;close all; clc; 

data=rand(1,13); 
total= sum(data);
average=sum(data)/13
fprintf('The average of 13 elements is :%.2f' ,average)  