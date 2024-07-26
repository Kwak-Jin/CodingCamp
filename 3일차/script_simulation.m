clc; clear all;close all;

TIME = struct('Start', 0.0  , ...
              'Final',30.0  , ...
              'Ts'   , 0.001, ...
              'time' , 0    , ...
              'Ntime', 0    , ...
              'idx'  , 1);
TIME.time = TIME.Start:TIME.Ts:TIME.Final;
TIME.Ntime= length(TIME.time);

buffer = struct('X', zeros(TIME.Ntime,1), ...
                'Y', zeros(TIME.Ntime,1), ...
                'att'  , zeros(TIME.Ntime,1));

VEH    = struct('X'    , 0.0, ...
                'Y'    , 0.0, ...
                'att'  ,25.0, ...
                'V'    , 1.0);
VEH.att= VEH.att *pi/180;
VEH.Vx = VEH.V*cos(VEH.att);
VEH.Vy = VEH.V*sin(VEH.att);
while(TIME.idx < TIME.Ntime)
    VEH.att = VEH.att + deg2rad(0.05) * TIME.idx;
    VEH.Vx  = VEH.V * cos(VEH.att);
    VEH.Vy  = VEH.V * sin(VEH.att);
    VEH.X   = VEH.X + TIME.Ts * VEH.Vx;
    VEH.Y   = VEH.Y + TIME.Ts * VEH.Vy;
    buffer.X(TIME.idx) = VEH.X;
    buffer.Y(TIME.idx) = VEH.Y;
    TIME.idx = TIME.idx + 1;
end

plot(buffer.X,buffer.Y,'r.');