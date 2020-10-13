%Week04, Tuesday, prob2
%preamble
clear all; close all; clc; 

%increament 
incr= input('input increment') 

%lower boundary
x_i= input('input lower boundary')

%uper boundary 
x_f= input('input upper boundary')

%value of x 
x=x_i:incr:x_f;

%value of y
y=x_i:incr:x_f; 

%loop through y 
for y_idx=1:length(y)
    
%loop through x 
for x_idx=1:length(x)
    
    %calculate z 
    z(x_idx,y_idx)=sin(x(x_idx))*cos(y(y_idx))/2 ; 
end 
end 

%plot surface and save handle
s=surf(z);

%use handle to set edge color 
s.EdgeColor= 'None';
