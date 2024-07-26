% About   : Symbolic Math
% Created : 24.07.26
% Author  : Jin Kwak/21900031
clc; clear all; close all;

syms x

eqn    = (x+4)*(3*x-4)*(x+8)
% 1st derivative
eqn_1d = diff(eqn)

eqn2   = 3*exp(x^3) + cos(2*pi*15.0*x)
% 2nd derivative
eqn2_2d= diff(eqn2,2)
% integral
eqn2_1i =int(eqn2,x)
