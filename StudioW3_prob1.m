%week_3
%problem 1

%preamble
clear all; close all; clc

%value of Array A 
A=0:10;
A(1)=0;
A(2)=1;
%for-loop 
for i=3:length(A)
    A(i)=A(i-1)+A(i-2)
end
