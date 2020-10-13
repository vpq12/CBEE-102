%mol amount 
n=1; %mol
R=8.314 ;
%volume
V=1; %L
V=V/1000; 

%initial T
T_initial= input('input the initial tempterature (C);');
T_initial2= T_initial +273; %(k)
%Final T
T_final = input('input the final tempt (C);');
T_final2= T_final+273; %(K)
%calc change in pressure
Pressure_change = n*R *(T_final2-T_initial2)/V;
Pressure_change2= Pressure_change/1000
