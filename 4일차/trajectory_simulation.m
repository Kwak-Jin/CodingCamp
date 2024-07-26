clc; clear all; close all;

% Parameters
angle = 40*pi/180; % rad
vel   = 250.0    ; % m/s

gravity = -9.81;

pos0  = [0 0];
ENUM  = struct('X', 1, 'Y', 2);
VEH   = struct('X'      ,pos0(ENUM.X),...
               'Y'      ,pos0(ENUM.Y),...
               'angle'  ,angle       ,...
               'Vx'     , 0.0        ,...
               'Vy'     , 0.0  );
TIME = struct('Ts'   , 1e-3, ...
              'Start', 0.0 , ...
              'Final', 0.0 , ...
              'idx'   ,1   );
VEH.Vx = vel*cos(angle);
VEH.Vy = vel*sin(angle);
TIME.Final = 2 * VEH.Vy / abs(gravity);
TIME.time = TIME.Start:TIME.Ts:TIME.Final;
TIME.Ntime= length(TIME.time);
buffer.Vy(1) = VEH.Vy;
buffer.X(1)  = pos0(ENUM.X);
buffer.Y(1)  = pos0(ENUM.Y);
while TIME.idx< TIME.Ntime
    TIME.idx = TIME.idx + 1;
    idx= TIME.idx;
    % Integration
    VEH.Vy = VEH.Vy + gravity * TIME.Ts;
    VEH.X  = VEH.X  + VEH.Vx  * TIME.Ts;
    VEH.Y  = VEH.Y  + VEH.Vy  * TIME.Ts ...
            + 0.5* gravity * TIME.Ts^2;
    % Buffer
    buffer.Vy(idx) = VEH.Vy;
    buffer.X(idx)  = VEH.X;
    buffer.Y(idx)  = VEH.Y;

end

%%
close all;
figure, grid on;plot(buffer.X,buffer.Y);
axis equal;
figure, grid on;plot(TIME.time, buffer.Vy); 