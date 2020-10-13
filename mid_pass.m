function y = mid_pass(A)
for i=1:length(A)
    if A(i)<3 ||A(i)>7
        A(i)=0
    end
end 
y = A;
end