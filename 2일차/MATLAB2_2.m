% About  : Coding Camp (MATLAB) read data
% Author : Jin Kwak/21900031
% Created: 24.07.24
clc; clear all; close all;

% File Directory and File Name
file_dir = "D:\coding_camp\MATLAB2일차\Modeling";
file_name = "SquarePulse%d.txt";                  
N_idx    = 6; %Number of Files
% Using Cell type data and functions(sprintf, fullfile), 
% data can be read automatically
for idx = 1:N_idx
    file_curr= sprintf(file_name,idx);
    abs_path = fullfile(file_dir,file_curr);
    data{idx}= readmatrix(abs_path);
end

TIME   = 1; %ENUMERATION
INPUT  = 2; %ENUMERATION
OUTPUT = 3; %ENUMERATION
VOLTAGE= 4; %ENUMERATION
%Visualization
figure, hold on; grid on;
for idx = 1:N_idx
    time = data{idx}(:,TIME);
    output= data{idx}(:,OUTPUT);
    plot(time, output);
end
    