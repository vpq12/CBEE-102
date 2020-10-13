clear all; close all; clc
x = rand(1,10)
for i = 1:length(x)
if x(i) > 0.25 && x(i) < 0.75
disp(x(i))
end
end