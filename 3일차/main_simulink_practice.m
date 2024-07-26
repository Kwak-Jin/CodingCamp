% About   : MATLAB Coding Camp(3) Simulink Simulation
% Author  : Jin Kwak/21900031
% Created : 24.07.25
clc; clear all; close all;

TIME = struct('Start', 0.0, ...
              'Ts'   , 1e-3, ...
              'Final', 30);
TIME.time = TIME.Start: TIME.Ts: TIME.Final;
signal1 = [TIME.time' rectpuls(TIME.time, 30)'];
mag = 2.0;
offset = -2.5;
freq   = 3.0;
w0     = freq*2*pi;
phs    = 20*pi/180.0;

num = 3;
den = [1 2*sqrt(3)*sqrt(2) 3];
Kp  = 2.5;
Ki  = 1.5;
Kd  = 0.3;

out = sim('Simulink_practice.slx');
time =TIME.time;
figure, hold on; grid on;
plot(time ,out.out);
plot(time ,out.input);
% plot(time ,out.simout1);
xlabel('time [sec]','fontweight','bold');
ylabel('signal[-]' ,'fontweight','bold');
