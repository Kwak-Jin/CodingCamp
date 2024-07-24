clc; clear all; close all;

data = readmatrix("20240419_test.csv");
data = data(4:end, :);
SS400 = data(:,1:4);
%%

stop_idx= length(SS400(:,1));
for idx = 1: stop_idx
    if isnan(SS400(idx,1))
        stop_idx = idx;
        break;
    end
end

SS400 = SS400(1:stop_idx,:);

EXTEN = 4;
WEIGHT= 2;
len   = 50e-3;
width = 12.5e-3;
thick = 2e-3;
stress = SS400(:,WEIGHT)/(width*thick);
eps    = SS400(:,EXTEN)/len;
figure, hold on; grid on;
plot(eps, stress,'LineWidth',2.0); 
xlabel('\epsilon [-]','FontWeight','bold');
ylabel('\sigma [N/m^2]','FontWeight','bold');