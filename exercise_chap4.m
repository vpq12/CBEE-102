clear all; close all; clc; 

%exercise 1
for x= 1:5:25
disp(x)
end

clear all; clc;
for x=5:5:85
    disp(x)
end

clear all; clc;
%exercise 3 
A=[ 3, 4, 5, 6, 7 ];
A(1)
A(2)
A(3)
A(4)
clear all; clc

%excercise 4
A=[1,2,3,4,5,6,7,8,9,10];
a=length(A)

%exercise 5
x = [2, 4, 9, 5, 1, 6, 3, 2];
total=0;
for idx=1:length(x)
    total=(total + x(idx))
end
average=total/length(x)





clear all; close all; clc;
%exercise 6

%number of mole 
% n=42 %mol
% 
% %tempt
% T=300 %K
% 
% %volume
% V=100:500 %L
% 
% %calc pressure 
% for idx=1:length(V)
%     P(idx)=(n*0.082057*T)/V(idx) %atm
% end
% plot (V,P)
% title ('pressure vs volume')
% xlabel('vol')
% ylabel('press')


%exercise 7
 x=0:(10*pi)
 for index=1:length(x)
     y1(index)=sin(x(index))
     y2(index)=cos(x(index))
     y3(index)=tan(x(index))
 end
hold all
 plot (x,y1)
plot (x,y2)
 plot (x,y3)
 title('trig')
 legend('sine wave','cosine wave','tangent wave')

