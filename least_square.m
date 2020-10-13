function [M,B,R_square] =least_square(x,y)

% %load data 
% load ('noisy.mat')

%Calculate the average of y
y_avg=sum(y)/length(y);

%Calculate the average of x
x_avg=sum(x)/length(x);

% use dot operator to find M_n and M_d
M_n=(x-x_avg).*(y-y_avg);
M_d=(x-x_avg).^2;

%Calculate value of M 
M=sum(M_n)/sum(M_d);

%Calculating B value 
B=y_avg- M*x_avg;

%calculate y_hat
    y_hat=M*x+B;
    
%find sum_total and sum_residv

    SS_totidv=(y-y_avg).^2;
    SS_residv=(y-y_hat).^2;
    
%Actual value of SS_tot 
SS_tot=sum(SS_totidv);

%Actual value of SS_res
SS_res=sum(SS_residv);

%Calculate coefficient of determination R^2
R_square=1-(SS_res/SS_tot);

end
