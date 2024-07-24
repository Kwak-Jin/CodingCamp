% About   : MATLAB Coding Camp(2) MATLAB Plot
% Author  : Jin Kwak/21900031
% Created : 24.07.10 
% Modified: 24.07.24

clc; clear all; close all;
lidar_data = readmatrix("2D_data.txt");

angle = -90:0.25:90;
angle = deg2rad(angle);
idx = 110;

distance = lidar_data(idx,:);

polarplot(angle,distance);