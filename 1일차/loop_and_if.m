% About   : MATLAB Coding Camp(1) Basics of MATLAB
% Author  : Jin Kwak/21900031
% Created : 24.07.10 
% Modified: 24.07.23
% Loop & Condition Statement
for idx = 1:300
    disp('Iteration = ');
    disp(num2str(idx)  );
end

iteration = 1:300;
for idx = iteration
    disp('For Loop Index = ');
    disp(num2str(idx)  );
end

idx = 1;
while(1)
    disp('While Loop1 Index = ');
    disp(num2str(idx)  );
    idx = idx + 1;
    if(idx>300)
        break;
    end
end

idx = 1;
while(idx<= 300)
    disp('While Loop2 Index = ');
    disp(num2str(idx)  );
    idx = idx + 1;
end

idx = 1;
while(idx<= 300)
    if(not(rem(idx,2)))                 
        disp('While Loop2 Index = ');
        disp(num2str(idx)  );
    end
    idx = idx + 1;
end

%% Make Signal in MATLAB
clc; clear all; close all;
time = 0:0.001:10.0;

%sinusoidal wave
magnitude = 2.0;
freq      = 0.5;
w0        = 2*pi*freq;
phase     = 0.3*pi/180.0; % [rad]
offset    = 1.5;
sin_wave = magnitude*sin(w0*time+phase)+offset;
figure, plot(time,sin_wave);

%rectangular pulse
N_time    = length(time);
rect_pulse1= zeros(N_time,1); 
w0 = 2*pi*freq;
for idx = 1:N_time
    if (sin(w0*time(idx))>= 0)
        rect_pulse1(idx) = magnitude;
    else
        rect_pulse1(idx) = -magnitude;
    end
end
figure, plot(time,rect_pulse1);
rect_pulse2 = magnitude*square(time*pi) ;
figure, plot(time,rect_pulse2);


%% Tutorial (Sawtooth Signal)
clc; clear all; close all;
Ts        = 1e-3;
T         = 1.5 ;
time      = 0:Ts:10.0;
magnitude = 5.0;
out       = magnitude/T *rem(time,T) - magnitude/2;

plot(time,out);

