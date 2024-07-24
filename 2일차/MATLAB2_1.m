% About  : Coding Camp (MATLAB) read data
% Author : Jin Kwak/21900031
% Created: 24.07.24
clc; clear all; close all;

%read data using function readmatrix()
data = readmatrix("D:\coding_camp\MATLAB2일차\Modeling\SquarePulse5.txt");

TIME   = 1; %ENUMERATION
INPUT  = 2; %ENUMERATION
OUTPUT = 3; %ENUMERATION
VOLTAGE= 4; %ENUMERATION

time    = data(:,TIME);
input   = data(:,INPUT);
output  = data(:,OUTPUT);
voltage = data(:,VOLTAGE);

%Visualization
figure, hold on; grid on;
plot(time, input,'r-');
plot(time, output,'b-');

figure, grid on;
plot(time,voltage);