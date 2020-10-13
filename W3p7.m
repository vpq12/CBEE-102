%week 3 problem 7
%preamble
clear all; close all; clc;
x=0:0.1:10*pi;

%for loop function
for i=1:length(x)
    y1(i)=sin(x(i));
    y2(i)=cos(x(i));
    
    %if function for sin
    if y1(i)>0
        y1(i)=y1(i)
    else y1(i)=0
    end
    
    %if function for cos 
    if y2(i)<0
        y2(i)=0
    end
    
    %end of for-loop
end 
plot (x,y1,'r', 'linewidth',2)
hold on
plot (x,y2,'b','linewidth',2)