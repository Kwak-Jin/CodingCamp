% Author : Jin Kwak /21900031
% Created: 24.07.25
% About  : RLC circuit Simulation using SIMULINK

clc; clear all; close all;

L = 45e-3;
C = 160e-6;
R = 200;
idx = 1;
for expo = 1: 0.2:5
    omega(idx) = 10^expo;
    W = omega(idx);
    amp(idx) = abs(R*(1-W^2*L*C))/sqrt((R-R*W^2*L*C)^2 + (W*L)^2);
    idx = idx +1;
end

figure, hold on; grid on;
plot(log10(omega),amp);
