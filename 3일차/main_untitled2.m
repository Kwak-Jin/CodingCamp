% Simulink Simulation
% Jin Kwak/ 21900031
% 24.07.25
clc; clear all; close all;

TIME= struct('Ts', 1e-3, ...
              'Start', 0.0, ...
              'Final', 10.0);

num = 1; 
den = [1 0];
mag = 1.5;
bias = 1.5;
freq = 0.5;
omega = 2*pi*freq;
phs = deg2rad(15);
out = sim('untitled2.slx');
%%
time = TIME.Start:TIME.Ts:TIME.Final;

figure, grid on;
plot(time, out.output);