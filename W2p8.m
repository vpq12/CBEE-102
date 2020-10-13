%problem8
x=(-10*pi):0.1:(10*pi)
for idx=1:length(x)
    y(idx)=sin(x(idx))/x(idx)
end
plot(x,y,'k','linewidth',2)
title('cardinal sine function')
xlabel('x')
ylabel('y)')
