%this script calculates the area 
% of the part given in Figure 2.9
%calculate area of the square 
L =1.5; %cm
W=1.5; % cm
A_square =L*W % cm^2;
%area of triangle
B=1.05; %cm
H=0.9; %cm
A_triagle = 0.5*B*H;
%circle
R=0.3; %cm
A_circle =pi*(R^2);
%total
A_total = A_square + A_triangle -A_circle
