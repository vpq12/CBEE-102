%Multicomponen rxn
%preamble 
clear all; close all; clc;

%initial concentration
C_A0= 10; %mg/L

%rate constatnt 
k=0.1; %hr^-1

%time variable 
t=0:0.1:48; %hr 

%for-loop to calc concentration of A and B overtime
for idx=1:length(t)
   C_A(idx)= C_A0*exp(-k*t(idx));
%    C_B(idx)=C_A0-C_A(idx);
end
% plot(t,C_B,'b','linewidth',2)
title('multicomponent rxn')
xlabel('time')
ylabel('concentration')
hold on
plot(t,C_A,'r','linewidth',2)
% legend('species A','species B')