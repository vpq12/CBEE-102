%Studio Week4, Tuesday, prob 1
%preamble
clear all; close all; clc; 

%number of quarters
q=3; %quarters

%number of nickles 
n=2; %nickles 

%number of pennies
p=4; %pennies

%number of combinations
combination=0;

%loop through coins and update combination 
for p=1:3
    for n=1:2
        for p=1:4
            combination=combination+1;
        end 
    end 
end
disp(combination)