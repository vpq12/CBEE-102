%preamble
clear all; close all; clc; 

%x-variable
x=[-2:0.2:2];

%for-loop func
for idx=[1:length(x)]
    y(idx)=(x(idx))^3-2*x(idx);
end
plot (x,y,'r','linewidth',3)

