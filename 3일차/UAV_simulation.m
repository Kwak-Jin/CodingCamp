% About   : MATLAB Coding Camp(3) UAV Simulation
% Author  : Jin Kwak/21900031
% Created : 24.07.25
% Modified: 24.07.25

clc; clear all; close all;

TIME = struct('Ts'   , 1e-3, ...% [s]
              'Start', 0.0 , ...
              'Final',20.0 , ...% Unknown
              'stage', 0.15, ...% Acceleration stop 
              'time' , 0   , ...
              'Ntime', 0   );

TIME.time = TIME.Start:TIME.Ts:TIME.Final;
TIME.idx  = 1;
TIME.Ntime= length(TIME.time);
pos0 = 0.0;      % [m]
vel0 = 0.0;      % [m/s]
gravity = -9.81; % [m/s^2]
Force   = 16   ; % [N]
VEH       = struct('pos' , pos0, ...
                   'vel' , vel0, ...
                   'mass', 0.05); % [kg]

acc     = (Force+VEH.mass*gravity)/VEH.mass; % [m/s^2]
min_vel = - 20.0;
stage   = [1 2 3];
state   = stage(1);
buffer.pos(TIME.idx) = VEH.pos;
buffer.vel(TIME.idx) = VEH.vel;

while 1
    TIME.idx = TIME.idx + 1;
    switch state
        case stage(1)
            if TIME.time(TIME.idx) == TIME.stage
                state = stage(2);
            end
        case stage(2)
            acc = gravity;
            if VEH.vel < min_vel
                VEH.vel = min_vel;
                acc   = 0;
                state = stage(3);
            end
        case stage(3)
            if(VEH.pos <= 0)
                break;
            end
    end % of switch
    % Integration
    VEH.vel = VEH.vel + acc * TIME.Ts;
    VEH.pos = VEH.pos + VEH.vel * TIME.Ts + 0.5 * acc * TIME.Ts^2;
    % Save buffer
    buffer.pos(TIME.idx) = VEH.pos;
    buffer.vel(TIME.idx) = VEH.vel;
end % of simulation loop

figure, grid on;
plot(TIME.time(1:TIME.idx-1), buffer.pos)
xlabel('time [sec]','FontWeight','bold');
ylabel('Height [m]','FontWeight','bold');
figure, grid on;
plot(TIME.time(1:TIME.idx-1), buffer.vel);
xlabel('time [sec]'    ,'FontWeight','bold');
ylabel('Velocity [m/s]','FontWeight','bold');