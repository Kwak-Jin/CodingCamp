clc; clear all; close all;

TIME = struct('Start', 0.0, ...
              'Final',30.0, ...
              'Ts'   ,1e-3, ...
              'time' , 0  , ...
              'Ntime', 1  );

TIME.time  = TIME.Start : TIME.Ts : TIME.Final;
TIME.Ntime = length(TIME.time);
TIME.idx   = 1;

freq = [0.3 0.5]; 
output.signal1 = cos(2*pi*freq(1)*TIME.time);
output.signal2 = sin(2*pi*freq(2)*TIME.time);

% Red --> 'r' Blue --> 'b' Black --> 'k'Green --> 'g'
% Straight Line --> '-' Dashed Line --> '--' Dot --> '.' Mix --> '-.'
figure, hold on, grid on;
plot(TIME.time, output.signal1,'r-', 'LineWidth', 2   ,'DisplayName','Signal1');
plot(TIME.time, output.signal2,'b-', 'LineWidth', 1.5 ,'DisplayName','Signal2');
xlabel('Time [sec]'   ,'FontWeight','bold');
ylabel('Amplitude [-]','FontWeight','bold');
legend('Location','northeast','FontWeight','bold');
%%
% Axis equal Practice
figure(33), hold on, grid on;
theta = -pi:0.001:pi;
R     = 3;
x0    = R * cos(theta);
x1    = R * cos(theta) + 20;
y     = R * sin(theta);
plot(x0,y,'LineWidth',2);
plot(x1,y,'LineWidth',2);
axis equal;
xlabel('X [m]','FontWeight','bold');
ylabel('Y [m]','FontWeight','bold');
