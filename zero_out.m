function z=zero_out(A);
for i=1:length(A)
    if A(i)<0
        A(i)=0
    end
end
end