%WEEK 3 2ND STUDIO, BONUS ROUND
%preamble
clear all; close all; clc; 

%Initial Concentration 
C_A0=10;   %mg/L

%k-constant
k=0.1; %hr^-1

%time variable
t=0:0.01:50;

%for-loop to calculate concentration of A
for i=1:length(t)
    C_A(i)=C_A0*exp(-k*t(i));
end

%set up half index
half_index = 1;

%set up half concentration
half_C = C_A(1);

%For-loop to find the half life value
for i=2:length(C_A)
if C_A(i)< 5 &&C_A(i)>4.99
    half_C=C_A(i);
    half_index=i;
end
end

%display half life to Command Window
disp('HALF LIFE IS')
disp(t(half_index))
