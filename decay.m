clear all
% decay.m 

%rate constant 
k=0.1;

%initial concenttration 
y_0 =10;

% %time varieble
 t= 0:5:50;
% 
% %cal y
% y(idx) = y_0*exp(-k*t(idx))

%for loop 
for idx = 1:length(t)
    y(idx)=y_0*exp(-k*t(idx));
end

plot (t,y)