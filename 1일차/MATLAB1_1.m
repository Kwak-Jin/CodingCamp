% About   : MATLAB Coding Camp(1) Basics of MATLAB
% Author  : Jin Kwak/21900031
% Created : 24.07.10 
% Modified: 24.07.23
% Variables
clc; clear all; close all;

%%%% Variables
%%% double type
double_type_variable1 = 3.0;
double_type_variable2 = 3  ;
%%% vector type
% Column Vector
col_vector_variable1   = [3 5 7 9]';
col_vector_element  = col_vector_variable1(3); %  Read
col_vector_variable1(3) = 4;                   % Write
col_vector_variable2   = [3
                          5
                          7 
                          9];

% Row Vector
row_vector_variable   = [3 5 7 9];
row_vector_element    = row_vector_variable(2);
row_vector_variable(2)= 9; 
%%% Matrix type
mat_variable          = [1 2 3;
                         4 5 6; 
                         7 8 9];
mat_element = mat_variable(3,2);
%%% Struct Type

struct_variable       = struct('double_member' , 1.0, ...
                               'mat_member'    , ones(3,3), ...
                               'vector_member' ,[1 3 5]);
struct_member = struct_variable.double_member;
struct_member2 = struct_variable.mat_member(2,1);
%%
%%% Cell Type
cell_variable = {3,3};
cell_variable{1,1} = [(0:0.01:30)', (sin(0:0.01:30))'];
cell_variable{2,1} = struct_variable;
cell_variable{3,3} = col_vector_variable1;
cell_variable{}
%% How to call struct member
member1 = struct_variable.double_member;
member2 = struct_variable.mat_member;
struct_variable.mat_member(1,2) =3;
member2_detail = struct_variable.mat_member(1,2);



