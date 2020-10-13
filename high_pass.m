
function y = high_pass(A)
for i=1:length(A)
    if A(i)<5
        A(i)=0
    end
end 
y = A;
end