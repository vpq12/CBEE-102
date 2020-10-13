clear all; close all; clc; 
%define value of 1st order
n1=1;
%define value for 2nd order 
n2=2;
% define number of points
n_pts = 500;
% make the x array for y
x = linspace(0,12,n_pts);
% make the y array for y
y = linspace(2,7,n_pts);
% make the normally distributed noise for y
level = 2*sin(x/2);
noise = level.*rand(1,n_pts);

% add noise to y
y = y + noise;  

%plot best fit line for y1 1st order 
p1=polyfit (x,y,n1);
y_fit1= polyval(p1,x);

%plot best fit curve for y1 in second order 
p2=polyfit(x,y,n2);
y_fit2=polyval(p2,x)


% make the A array for z
A = linspace(0,12,n_pts);
% make the Z array for z 
z1 = p1(1)*A+ p1(2);
z2=p2(1)*(A^2) +p2(2)*(A)+p2(3);

% make the normally distributed noise for z
level_z = 2*sin(A/2);
noise_z = level.*rand(1,n_pts);

%add noise to z
z1=z1+noise_z;
z2=z2+noise_z;

%plot best fit line for z 1st order 
p_z1=polyfit (A,z1,n1);
z_fit1= polyval(p_z1,A);

%plot best fit curve for z in second order 
p_z2=polyfit(A,z2,n2);
z_fit2=polyval(p_z2,A);


% %Calculate MSE value for y and z 
MSE_y1 =(1/n1)*sum((y-y_fit1))
MSE_y2 =(1/n2)*sum((y-y_fit2))
MSE_z1=(1/n1)*sum((z-z_fit2))
MSE_z2 =(1/n2)*sum((z-z_fit2))

%plot graph of x vs y
figure (1)
plot(x,y)
hold on
plot(x,y_fit1)
plot(x,y_fit2)
grid

%plot graph of A vs z
figure (2)
plot(A,z)
hold on 
plot(A,z_fit1)
plot(A,z_fit2)
grid

% calculate bounds
percent = 0.2;
xborder = percent*max(y);
yborder = percent*max(y);
xmin = min(x) - xborder;
xmax = max(x) + xborder;
ymin = min(y) - yborder;
ymax = max(y) + yborder;
% scale the axes
axis([xmin, xmax, ymin, ymax])

