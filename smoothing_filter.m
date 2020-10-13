function [S_x,S_y]= smoothing_filter(x,y)



for i=3:length(y)-2
    
    S_y(i)=(y(i-2)+y(i-1)+y(i)+y(i+1)+y(i+2))/5;
end 

S_y = S_y(3:length(S_y));
% 
S_x = x(3:length(x)-2);

end

    