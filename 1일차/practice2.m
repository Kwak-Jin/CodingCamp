% About: MATLAB CAMP DAY 1 (Taylor Series)
% Author: Jin Kwak/21900031
% Created: 24.07.23
clc; clear all; close all;
x   = 45 * pi / 180; % [rad]
tol = 1e-30        ;
new_term = 100000  ;
k   = 0;
sum = 0;
while (abs(new_term) > tol)
    new_term = (-1)^k * x^(2 * k + 1)/(factorial(2 * k +1));
    sum = sum + new_term;
    k   = k + 1 ;
end
error = sin(x) - sum;
%%
% Make&Use function Rect2Polar()
[mag, phs] = rect2polar(50, 50);
% my_sin
sin30 = my_sin(30*pi/180);
