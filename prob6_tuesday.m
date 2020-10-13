%problem 6
%preamble
clear all; close all; clc; 

data=rand(1,10); 

for i=1:length(data)
    if data(i)<0.3
        fprintf('The number :%.2f ',data(i))
        disp('is small')
    elseif data(i)>0.3 && data(i)<0.6
        fprintf('The number :%.2f ',data(i))
        disp('is average')
    else
        fprintf('WARNNG! The number :%.2f ',data(i))
        disp('is too large')
    end
end