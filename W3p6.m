%week 3 problem 6
%preamble 
clear all; close all; clc; 
%data value 
data = 10*rand(1,10);
for i=1:length(data)
    if data(i)>5
         disp (data(i))
    end
end 
        