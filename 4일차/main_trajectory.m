clc; clear all; close all;
% Design Parameter
V     = 240.0;
angle = deg2rad(45);

% Simulation Variables
TIME.Ts    = 1e-3;
TIME.Start = 0.0 ;
POS0  = [0, 0];
Vx0   = V*cos(angle);
Vy0   = V*sin(angle);
Ax    = 0.0  ;
Ay    = -9.81; % [m/s^2]
TIME.Final = 2 * Vy0/abs(Ay);
% Simulation
out = sim('trajectory_sim.slx');
%%
time = TIME.Start: TIME.Ts: TIME.Final;
figure, grid on;
plot(time, out.vertical_velocity);
figure, grid on;
plot(out.horizontal_pos,out.vertical_pos);