function [N_cross] = buffons_needle(n)
%This function creates line segments 
%of equal length and plots them on a graph

%initialize counter for needles crossed
N_cross = 0;

%For loop to repeat for number of needles
for i = 1:n

%randomly generate an x and y coordinate 
%between 1 and 10
x = 10*rand;
y = 10*rand;

%Generate a random angle
theta = 2*pi*rand;

%Establish endpoints and starting points 
%for the line using sin and cos to keep
%length constant
x_values = [x,x + cos(theta)];
y_values = [y, y + sin(theta)];

%Check if the needle crossed one of the vertical
%lines using the floor function
if floor(x_values(1)) == floor(x_values(2))
line(x_values, y_values,'color','blue')
else
    line(x_values, y_values,'color','red')
    
    %if the needle crossed, add 1 to the counter 
    %for crossed needles
    N_cross = N_cross + 1; 
end

end
    
end