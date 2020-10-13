function y=exponential_decay(y_0,k,t)
for i=1:length(t)
    y=y_0*exp(-k*t(i))
end 
end 