clc; clear all; %close all;

R = 200  ;
L = 45e-3;
C = 160e-6;
idx = 1;
for N = 1:0.1:4
    omega = 10^N; % [rad/s] 
    
    amplitude = abs(R*(1-omega^2*L*C)) ...
             /sqrt((R-R*omega^2*L*C)^2 + (omega*L)^2);
    mag(idx) = amplitude;
    W(idx)   = omega;
    idx = idx + 1;
end

figure, hold on; grid on;
plot(log10(W), mag);
xlabel('log_{10}|\omega| [rad/s]');
ylabel('|V_{1} / V_{0} |[-]');