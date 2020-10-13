%This script generates needles on a graph
%and gives an estimate for pi
%preamble
close all; clear all; format compact; clc;

%start a timer for the function
tic

%define t as an input for the number of trials
t = input('Number of Trials:\n');

%define n as an input for the number of needles
n = input('Number of Needles:\n');
    
%start a for loop for the number of trials
for idx = 1:t 

%close the figures that are already open
close all;

%open a figure to plot the vertical lines and needles1
%and define the axis
figure
axis([0, 10, 0, 10])

%plot vertical lines from 0 to 10 on the figure
for i = 0:11
   xline(i,'Color','Black');
end

%call the function
[N_cross] = buffons_needle(n);

%get a pi estimate for the trial of needles
pi_est(idx) = (2*n)/(N_cross);

end

%find the average pi estimate
Av_Pi_Est = mean(pi_est);

%report the average pi estimate to the command window
fprintf('The average pi estimate for %.f trials of %.f needles is %.4f\n',t,n,Av_Pi_Est)

%create a new figure for the histogram
figure(2)

%set the edges for the bars of the histogram
edges = [3.00 3.05 3.10 3.15 3.20];

%create and label the histogram
histogram(pi_est,edges)
xlabel('Pi Estimate')
ylabel('Number of Trials')

%end the timer
toc
