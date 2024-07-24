% About   : MATLAB Coding Camp(2) MATLAB Plot
% Author  : Jin Kwak/21900031
% Created : 24.07.10 
% Modified: 24.07.24
clc; clear all; close all;
Ts = 0.01;
vector_x = 0.0 : Ts : 30.0;

vector_y1 = 40*exp(-0.35*vector_x) - 1.4;
vector_y2 = vector_y1 - 3.0;
figure, clf, box on, hold on; grid on;
plot(vector_x,vector_y1,'LineWidth',1.0,'DisplayName','Vector1');
plot(vector_x,vector_y2,'LineWidth',1.5,'DisplayName','Vector2');
xlabel('Time [sec]'   ,'FontWeight','bold');
ylabel('Amplitude [V]','FontWeight','bold');
legend('Vector 1','Vector 2');

