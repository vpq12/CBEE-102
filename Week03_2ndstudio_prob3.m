%week 3, 2nd studio, prob3
%preamble
clear all; close all; clc; 

%PART a

%Inital concentration of species A
C_A0=1.2; %mol/L;

%k constatnt of species A
k1=0.143; %sec^-1

%k constant of species B
k2=0.11; %sec^-1

%time value
t=0:0.1:50;

%for loop calculating the concentration of each species
for i=1:length(t)
    
%Concentration of species A
C_A(i)= C_A0* exp(-k1*t(i));

%Concentration of species B
C_B(i)=C_A0*(k1/(k2-k1))*(exp(-k1*t(i))-exp(-k2*t(i)));
        
%Concentration of species C
C_C(i)=C_A0 -(C_A(i)+C_B(i));
    %end of for loop
end

%plot Concentration over time
plot (t,C_A,'linewidth',2)

%naming title
title('Concentration vs time plot')

%naming x label
xlabel('time')

%naming y label
ylabel('Concentration')

hold all

%plot species B
plot (t,C_B,'linewidth',2)

%plot species C
plot(t,C_C,'linewidth',2)

%naming each plot 
legend('species A','species B', 'species C')

%PART B
%initial max value of B
max_B=C_B(1);
max_index = 1;
%finding maximum value of B 
for i=2:length(C_B)
    if C_B(i)>max_B
        max_B=C_B(i);
        max_index=i;
    
    end
end
    disp(max_B)
  
    disp(t(max_index))
    
  
