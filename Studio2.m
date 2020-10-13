

%NaOH density 
d=52.3/1728; %lb/in^3 
%height of a drum 
h=33.5 ;%in
%radius of a drum
r=22.5/2; %in
%Volume of a drum NaOH
V_drum = pi*(r^2)*h %in^3
%mass of a drum of NaOH 
m_drum= 27.4; %lbs
%mass of NaOH in a drum 
m_NaOHdrum= V_drum *d + m_drum

%calc container volume
w_container= 8*12; %in
h_container=8.5*12; %in 
l_container=20*12 %in

height_max = h_container / h
total_height =floor(height_max);

width_max= w_container /22.5
total_width=floor (width_max);

length_max=l_container/22.5
total_length= floor(length_max);

%number of  drum hold
total= total_length * total_width* total_height;
disp('Total number of drums: ')
disp(total)

%total mass of the shipping container
total_mass=( m_NaOHdrum*total + 5000)*0.0005;



