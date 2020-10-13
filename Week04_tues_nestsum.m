%nested sums 
%preamble
clear all; close all; clc; 

%input data
data =rand(8,5);


[n_rows,n_cols] = size(data)

total=zeros(1, n_cols)

%for loop to for ea

%for loop to sum the elements for each column 
for i=1:n_rows
    total(2)=total(2)+data(i,2)
end 

