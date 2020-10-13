function [M,B,R_square]=my_least_square(x,y)
%Calculate the average of y
y_avg=my_sum(y)/101;

%Calculate the average of x
x_avg=my_sum(x)/101;

%For loop to calculate M value 
for i=1:length(x)
    M_n(i)=(x(i)-x_avg)*(y(i)-y_avg);
    M_d(i)=(x(i)-x_avg)^2;
%end for loop
end

%Calculate value of M 
M=my_sum(M_n)/my_sum(M_d);
  
%Calculating B value 
B=y_avg- M*x_avg;


%For loop for the fit line 
for idx=1:length(x)
    y_hat(idx)=M*x(idx)+B;
    %end for loop
end
 

%For loop calculating total sum of the square(SS_tot),and residual sum of
%squares(SS_res)
for index=1:length(y)
    SS_totidv(index)=(y(index)-y_avg)^2;
    SS_residv(index)=(y(index)-y_hat(index))^2;
    %end for loop 
end

%Actual value of SS_tot 
SS_tot=my_sum(SS_totidv);

%Actual value of SS_res
SS_res=my_sum(SS_residv);

%Calculate coefficient of determination R^2
R_square=1-(SS_res/SS_tot);
end