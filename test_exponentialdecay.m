clear all; close all; clc; 
y_0=3; 
k=[5,2,6,4,6];
t=0:0.1:10;
for i=1:length(k)
   y= exponential_decay(y_0,k(i),t(i));
end 