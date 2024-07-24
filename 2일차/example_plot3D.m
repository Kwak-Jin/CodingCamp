% About   : MATLAB Coding Camp(2) MATLAB Plot(3D)
% Author  : Jin Kwak/21900031
% Created : 24.07.10 
% Modified: 24.07.24
clc; clear all; close all;

data = readmatrix("3D_data.txt");

x = data(:,1);
y = data(:,2);
z = data(:,3);

plot3(x,y,z,'r.');