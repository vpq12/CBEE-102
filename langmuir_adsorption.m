%This is a script for Langmuir Adsorption 
%01/03/19, Thur, problem 2 

%preamble 
clear all; close all; clc; 

%lower boundary for partial pressure 
lower=input('input lower boundary') ;

%upper boundary for partial pressure 
upper=input('input upper boundary');

%input increment for partial pressure 
incr=input('input increment');

%value of partial pressure of species A 
P=lower:incr : upper; 

%value of constant K_a
k=[0.01,0.025,0.05,0.1,0.2];

%for loop for constant k 
for idx= 1:length(k)

%for loop for partial pressure Pa to calculate 
%theta
for i=1:length(P)
    theta(i)= (k(idx)*P(i))/(1+k(idx)*P(i));
end %end theta loop
%plot tbeta loop
plot(theta,P)
hold all; %keep all lines on the same plot

%end k constant loop 
end

%format the plot 
title('Langmuir Adsorption')
xlabel('partial pressure (kPa)')
ylabel('Fractional Adsorption')
legend('0.01','0.025','0.05','0.1','0.2')

