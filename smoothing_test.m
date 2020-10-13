clear all; close all; clc; 
load ('week_4_data.mat')
[t_filt,A_filt]=smoothing_filter(time,A);