clear all; clc; close all;


data_path = "D:\coding_camp\MATLAB2일차\Modeling";
data_name = "SquarePulse%d.txt";
for idx = 1:6
    file_name = sprintf(data_name,idx);
    fullfile_name = fullfile(data_path, file_name);
    data{idx} = readmatrix(fullfile_name);
end
idx    = 1;
N_idx  = 6;
TIME   = 1; %ENUMERATION
INPUT  = 2; %ENUMERATION
OUTPUT = 3; %ENUMERATION
VOLTAGE= 4; %ENUMERATION

time = data{idx}(:,TIME);
%Visualization
figure, hold on; grid on;
input= data{idx}(:,INPUT);
plot(time, input,'r-','LineWidth',2);
for idx = 1:N_idx
    time = data{idx}(:,TIME);
    output= data{idx}(:,OUTPUT);
    plot(time, output);
end
