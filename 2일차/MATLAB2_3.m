% About  : Coding Camp (MATLAB) write data
% Author : Jin Kwak/21900031
% Created: 24.07.24
clc; clear all; close all;

ENUM = struct('X', 1, 'Y', 2, 'Z', 3);
struct_var = struct('time', 0:0.1:10, ...
                    'enum', ENUM);
save("struct","struct_var");

data = readmatrix("data.txt");

writematrix(data, "data_copy.txt");

%%
func = load("func.mat");
func = func.time_cube;