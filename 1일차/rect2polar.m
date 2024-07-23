function [rho, theta] = rect2polar(x, y)
% This function returns magnitude and phase
% INPUT
% x [-]
% y [-]
% OUTPUT
% rho   : length of x, y from (0,0) [-]
% theta : angle from x-axis         [rad]
    rho = sqrt(x^2 + y^2);
    theta = atan2(y,x); 
end