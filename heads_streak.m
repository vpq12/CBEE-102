function max_heads = heads_streak(n_flips)
% This function flips a virtual coin
% and counts the largest number of
% consecutive "heads" results.
% input variables
% n flips: number of flips in the trial
% output variables
% max heads: longest streak of heads in the trial
% initialize counter for consecutive results
n_heads = 0;
% initialize counter for max run
max_heads = 0;
for i = 1:n_flips
% flip the coin
flip = round(rand(1));
% if the flip is heads (0)
% increment heads count
if flip == 0
n_heads = n_heads + 1;
% check if longest run
if n_heads > max_heads
max_heads = n_heads;
end
% if the flip is heads
% reset heads count
else
n_heads = 0;
end
end
end