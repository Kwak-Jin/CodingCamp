clc; clear all; close all;

% Parameters
V    = 240.0;
angle = deg2rad(50);
TIME.Ts =1e-3;   % [s]

VEH.X = 0.0;
VEH.Y = 0.0;
VEH.Vx = V*cos(angle);
VEH.Vy = V*sin(angle);
Ax    = 0.0;
Ay    = -9.81; % [m/s^2]
TIME.Final = 2 * VEH.Vy/abs(Ay);
TIME.Start  = 0.0;
TIME.time  = TIME.Start :TIME.Ts: TIME.Final;
TIME.idx = 1;
TIME.Ntime = length(TIME.time);
bf.X(TIME.idx) = VEH.X;
bf.Y(TIME.idx) = VEH.Y;
bf.Vy(TIME.idx) = VEH.Vy;
while TIME.idx <TIME.Ntime
    TIME.idx = TIME.idx + 1;
    idx= TIME.idx;
    % 
    VEH.Vy = VEH.Vy + Ay *TIME.Ts;
    VEH.Vx = VEH.Vx + Ax *TIME.Ts;
    VEH.X = VEH.X + VEH.Vx * TIME.Ts + 0.5 * Ax * TIME.Ts^2;
    VEH.Y = VEH.Y + VEH.Vy * TIME.Ts + 0.5 * Ay * TIME.Ts^2;
    % Save urrent index value 
    bf.X(TIME.idx) = VEH.X;
    bf.Y(TIME.idx) = VEH.Y;
    bf.Vy(TIME.idx) = VEH.Vy;
end
%%
close all;
figure, plot(bf.X, bf.Y);
axis equal;