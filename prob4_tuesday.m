%problem 4 and 5
%preamble
clear all; close all; clc;

%input data 
data= rand(1,10);
for i=1:length(data)
if data(i) >0.5
    fprintf('The number :%.2f ',data(i))
    display('is larger than 0.5')
else 
    fprintf('the number :%.2f ',data(i))
    display('is less than 0.5')
end
end