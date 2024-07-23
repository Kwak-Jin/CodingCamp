% About: MATLAB CAMP DAY 1
% Author: Jin Kwak/21900031
% Created: 24.07.23

clc; clear all; close all;
%double type
variable = 3.0;
%3 ways to define col vector
col_vec1 = [1
            2
            3
            4
            5
            6
            3];
col_vec2 = [3;1;2;3];
col_vec3 = [1 2 3 4]';
% access index
col_vec2(2) = 5;
variable = col_vec2(1);
% row vector
row_vec = [1 2 3 4];
% matrix
matrix1 = [1, 2, 3, 4 , 5  ;
           4, 5, 6, 7 , 8  ;
           7, 8, 9, 10, 11];
% access matrix elements using :
row1 = matrix1(1,:);
row1 = matrix1(1,1:2:5);
col2 = matrix1(:,2);

variable1 = matrix1(3,2);

% struct
TIME = struct('Ts'   , 0.001                , ...
              'Start', 0.0                  , ...
              'Final',30.0                  , ...
              'idx'  , 1                    , ...
              'time' , 0                    , ...
              'Ntime', 0                    , ...
              'MAT'  , [1 2 3; 4 5 6; 7 8 9]);
% Struct Member --> Access by .
% 새로운 멤버 파일에서 만들 수 있다
TIME.time = TIME.Start:TIME.Ts:TIME.Final;
TIME.now  = TIME.time(TIME.idx);
% access matrix in struct variable
matrix_element = TIME.MAT(3,2);
matrix_col     = TIME.MAT(:,2);
TIME.MAT(3,2)  = 3.0;
% new struct variable
VEH.X = 20 ;
VEH.Y = 10 ;
VEH.V = 5.0;

%%
% example cell type
figure, clf, box on; hold on; grid on;
ENUM = struct('TIME',1,'SIGNAL',2);
for idx = 1:3
    Freq = idx*0.1;
    cell_type{idx} = [TIME.time' cos(2*pi*Freq*TIME.time)'];
    time   = cell_type{idx}(:,ENUM.TIME);
    signal = cell_type{idx}(:,ENUM.SIGNAL);
    plot(time,signal);
end
