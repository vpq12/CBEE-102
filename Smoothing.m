%Probelm 3 
%Smoothing 
%01/31/19 Thurs

%preamble
clear all; close all ;clc; 

%load data 
load week_4_data.mat

%plot A versus time
plot(time,A,'+')

hold on

%for loop to average value of A 
for i=3:length(A)-2  %avoiding exceed elements 
    A_1(i)=(A(i-2)+A(i-1)+A(i)+A(i+1)+A(i+2))/5;
    %t_2(i)=(time(i-2)+time(i-1)+time(i)+time(i+1)+time(i+2))/5
end 

a_time = time(3:length(time))
plot(a_time,A_1)
%plot A versus time
%plot(A_1,t_2)
legend('noisy data','smooth data')