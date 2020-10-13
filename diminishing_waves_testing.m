clear all; close all; clc;
% make arrays using variables for easy scaling
scale = 2;
incr = 0.05;
x = [-scale*pi:incr:scale*pi];
y = [-scale*pi:incr:scale*pi];

%loop thru y
for i=1:length(y)
    %loop thru x 
    for idx=1:length(x)
        z(i,idx)=diminishing_waves(x(i),y(i));
    end
end

% plot surface and save handle
s = surf(x,y,z);
% use handle to set edge color
s.EdgeColor = 'None';

