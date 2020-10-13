% define number of flips
n_flips = 10;
% initialize counter for heads
n_heads = 0;
% loop through n flips and
% count heads
for i = 1:n_flips
% flip the coin
flip = round(rand(1));
% check for heads and count
if flip == 1
n_heads = n_heads + 1;
end
end
% calculate probability
p = n_heads/n_flips;
% report results
fprintf('The probability of the coin landing on heads is: %.2f \n',p)