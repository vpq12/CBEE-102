%This is a script for Langmuir Adsorption 
%01/03/19, Thur, problem 2 

%preamble 
clear all; close all; clc; 

%lower boundary for partial pressure 
lower=input('input lower boundary') 

%upper boundary for partial pressure 
upper=input('input upper boundary')

%input increment for partial pressure 
incr=('input increment')

%value of partial pressure of species A 
P=lower:incr:upper; 

%value of constant K_a
k=lower:incr:upper ;

%for loop for partial pressure Pa to calculate 
%theta
for i=1:length(P)
    theta(i)= (k*P)/(1+k*p);
end
