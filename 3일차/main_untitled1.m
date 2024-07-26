clc; clear all; close all;


TIME = struct('Ts', 1e-3, ...
              'Final',30, ...
              'Start',0.0);

mag = 1.5;
phs = 15*pi/180;
freq = 0.5;
omega = 2*pi*freq;
bias = -3.0;
time = (TIME.Start:TIME.Ts:TIME.Final)';
simin = [time rectpuls(time, 30)];
Wn  = 12;
zt  = 1/sqrt(2);
num = Wn^2;
den = [1 2*zt*Wn Wn^2];
out = sim('untitled1.slx');

%%
figure, hold on; grid on;
plot(time, out.input ,'r-');
plot(time, out.input1,'b-');
plot(time, out.output,'g-');