%problem 8

%preamble
clear all; close all; clc; 
Total_q=0;
Total_d=0;
Total_n=0;
Total_p=0;
%  q=input('input number of quarters');
%  d=input('imput number of dimes');
%  n=input('input number of nickles');
%  p=input('input number of pennies');
v_q=0.25;
v_d=0.1;
v_n=0.05;
v_p=0.01;
for q=0:3
    Total_q=(Total_q +1)*0.25;
for d=0:4
    Total_d=Total_q+(Total_d +1)*0.1;
for n=0:3
    Total_n=Total_q +Total_d +(Total_n+1)*0.05;
for p=0:2
    Total_p=Total_q +Total_d + Total_n+ (Total_p +1)*0.1;
fprintf('%.f Quarters + %.f dimes + %.f nickes + %.f pennies = %.6f \n',q,d,n,p,Total_p) 
end
end
end
end