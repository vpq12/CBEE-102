% coin flip trials.m
% This script simulates a
% batch of trials using the
% heads streak function.
clear all; close all; clc;
% number of flips
n_flips = 10;
% number of trials
n_trials = 1000;
%initialize streak_6
streak_6=0;
% loop through trials
for i = 1:n_trials
max_heads(i) = heads_streak(n_flips);
% number of time hit greater than 6 streaks 
if max_heads(i) >6
    streak_6= streak_6+1;
end
end
%calculate Probability
P=streak_6/n_trials;
% plot the histogram
 histogram(max_heads)
 ylabel('Number of Trials')
 xlabel('Max Consecutive Heads')
 fprintf('the probability of getting 6 streaks or greater is %.3f \n',P)