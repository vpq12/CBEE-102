%preamble
clear all; close all; clc;
%wavenumber.m

%time variable
t=0:0.1:10*pi;

%wave number
k1=0.5;
k2=0.5;
k3=2;

%for-loop function 
for idx=1:length(t);
    y1(idx)=sin(10+k1*t(idx));
    y2(idx)=sin(k2*t(idx));
%     y3(idx)=sin(k3*t(idx));
end 
plot(t,y1,'b','linewidth',2)
title('wavenumbers')
 axis([-1,30,-1,1])
hold all
plot(t,y2,'g','linewidth',2)
% plot(t,y3,'r','linewidth',2)
legend('y1','y2')