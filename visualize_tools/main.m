
% clear variables and close figures
clc
clear
close all

%%% setup pathing
currentPath = pwd;
addpath('../processed_data')
%%%
withVid = 1;   % = 1 for video output

%%% select the examples to visualize - maximum number is size of data
%%% currently a list of integers from 1:1718 is available.
visList = 1:2;

for i=1:length(visList)
    trialNum = visList(i);
    fprintf('Processing video number %d of %d \n', i, length(visList));
    visualize_data( trialNum, withVid )
end