clear all; close all; clc;
%w2problem9
x=0:0.1:(10*pi)
for idx=1:length(x)
    y(idx)=((sin(x(idx)))^2)/x(idx)
end 
plot(x,y,'r','linewidth',2)
axis([0,ifn,0,ifn])