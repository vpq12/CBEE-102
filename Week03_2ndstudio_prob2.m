%Week 03, studio 2, probem 2
%preamble 
clear all; close all; clc;

%x value 
x= rand(1,10);

%for-loop 
for i=1:length(x)
    %if-statement
    if x(i)<0.25 || x(i)>0.75
        x(i)=0;
        %end for-loop
    end
    %end if-statement
end
        

