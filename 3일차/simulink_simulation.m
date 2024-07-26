% About   : MATLAB Coding Camp(3) Simulink Simulation
% Author  : Jin Kwak/21900031
% Created : 24.07.10 
% Modified: 24.07.25
% 모델링 
% 가변 스텝 X , 고정 스텝
% ODE Solver --> Runge Kutta
clc; clear all; close all;

TIME = struct('Start', 0.0  , ...
              'Final',30.0  , ...
              'Ts'   , 0.001, ...
              'time' , 0    , ...
              'Ntime', 0    , ...
              'idx'  , 1);
TIME.time = TIME.Start:TIME.Ts:TIME.Final;
TIME.Ntime= length(TIME.time);
K1 = 1.;
K2 = 0.6;
K3 = 0.05;
K4 = 1.5;
out = sim('Simulink_practice2.slx');

figure, hold on; grid on;
plot(TIME.time,out.output);
plot(TIME.time,out.input_step);
plot(TIME.time,out.input_sine);
