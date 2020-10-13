% This script flips a virtual coin
% and counts the largest number of
% consecutive "heads" results.
clear all; close all; clc;
% define number of flips
n_flips = 4;
% initialize counter for consecutive results
n_heads = 0;
% initialize counter for max run
max_heads = 0;
for i = 1:n_flips
% flip the coin (1=heads, 0=tails)
flip = round(rand(1));
% if the flip is heads
% increment heads count
if flip == 1
n_heads = n_heads + 1;
% check if longest run
if n_heads > max_heads
max_heads = n_heads;
end
% if the flip is tails
% reset heads count
else
n_heads = 0;
end
end
%report results
disp(max_heads)