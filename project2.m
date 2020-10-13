%define a line of a specified length
n = input('Number of Needles:\n');
for i = 1:n
x = 10*rand;
y = 10*rand;
theta = 2*pi*rand;
x_values = [x,x + cos(theta)];
y_values = [y, y + sin(theta)];
line(x_values, y_values)
end
axis([0, 10, 0, 10])

% for j=1:n
% if floor(x_values(j,1))==floor(x_values(j,2))
%     n_cross= n_cross +1;
% end
% end