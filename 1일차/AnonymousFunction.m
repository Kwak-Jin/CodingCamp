% About   : anonymous function example
% Author  : Jin Kwak/21900031
% Created : 24.07.24
clc; clear all; close all;

func = @(t, x) cos(2*pi*1.5*t) .* x;

time = 0:0.01:10;
x    = 0:0.01:10;
yt = func(time,x);
figure, clf, box on; hold on; grid on;
plot(time,yt);