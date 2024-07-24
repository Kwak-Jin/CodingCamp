% About   : MATLAB Coding Camp(2) MATLAB Read data, Write data
% Author  : Jin Kwak/21900031
% Created : 24.07.10 
% Modified: 24.07.24
clc; clear all; close all;
data =readmatrix('20240419_test.csv');
%%
ENUM = struct('TIME'  , 1, ...
              'WEIGHT', 2, ...
              'STROKE', 3, ...
              'EXTEN' , 4, ...
              'N_INFO', 4);
ENUM_SS400   = 1;
ENUM_SM45C   = 2;
ENUM_SM45CQT = 3;
ENUM_SUS304  = 4;
ENUM_SCM440  = 5;
ENUM_AL6061T6= 6;
ENUM_AL5052  = 7;
N_material= 7;
material  = {N_material};
data = load("mechanical_design_data.mat");
data = data.data;
for idx = 1:N_material
    material{idx} = data(:,(idx-1)*ENUM.N_INFO+1:(idx-1)*ENUM.N_INFO+4);
end
%%
for idx  = 1:N_material
    isStop = 0;
    for i = 1:length(material{idx}(:,1))
        for j = 1:ENUM.N_INFO
            if(isnan(material{idx}(i,j)))
                isStop = 1;
            end % of isnan
        end % of j
        if(isStop)
            material{idx} = material{idx}(1:i-1 , :);
            break;
        end % of isStop
    end % of i
end % of idx
%% SS400
SS400 = material{ENUM_SS400};

figure, plot(SS400(:,ENUM.EXTEN)/50,SS400(:,ENUM.WEIGHT)/(12.5e-3 * 2e-3),'LineWidth',2);
xlabel('\epsilon [-]','FontWeight','bold');
ylabel('\sigma [N/m^2]','FontWeight','bold');
