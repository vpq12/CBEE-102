%week 3 prob 11
%preamble 
clear all; close all; clc; 

%data value 
data =6*rand(1,10);

%for-loop command
for i=1:length(data)
    
    %if command
    if data(i)<1
        disp(data(i))
        disp('SMALL')
        
        %elseif command
    elseif data(i)>1 && data(i)<2
        disp(data(i))
        disp('MEDIUM')
        
        %else command
    else 
        disp(data(i))
        disp('LARGE')
        
        %end of loop-for and if function 
    end
end

    

