% About   : MATLAB Coding Camp(2) MATLAB Plot Types
% Author  : Jin Kwak/21900031
% Created : 24.07.10 
% Modified: 24.07.24
clc; clear all; close all;

% transfer function
K0 = 8;
Wn = 1;
zt = 0.707;
num = K0*Wn;
den =[1 2*zt*Wn Wn^2];
Gs = tf(num,den);
s  = tf('s');
Us = 1/s;
Ys = Us*Gs;
%%

figure, bode(Gs)   , grid on;

figure, pzmap(Gs)  , grid on;

figure, step(Gs)   , grid on; 

figure, impulse(Gs), grid on;

figure, nyquist(Gs), grid on;
