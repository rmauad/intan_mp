% Roberto Baltieri Mauad
% RBC model with financial markets and monetary policy - ABCc of RBCs
% chapter 12
% Run the IRFs
clear;
close all;

run fsolve_ss_collateral.m

[P1,Q1,R1,S1] = calc_mat(rbc_ss1, params1);
[P2,Q2,R2,S2] = calc_mat(rbc_ss2, params2);
[P3,Q3,R3,S3] = calc_mat(rbc_ss3, params3);

%AR params
gamma = params1(5);
pi = params1(6);

rho1 = params1(7);
rho2 = params2(7);
rho3 = params3(7);

%Find a number for pi (the AR parameter in the money growth
%evolution equation).

%Money growth AR process
nper = 12;
g = zeros(1,nper);
g(2) = 0.01; %money growth shock

for t = 3:nper
    g(t) = pi*g(t-1);
end

%% IRFs 1

%lambda = zeros(1,nper);
x1 = zeros(3,nper);
y1 = zeros(8,nper);
z1 = [zeros(1,nper);g];
%z(:,2) = [lambda(2),g(2)];
x1(:,3) = P1*x1(:,2) + Q1*z1(:,2);
y1(:,2) = R1*x1(:,2) + S1*z1(:,2);

% for t = 4:nper
%     x(:,t) = P*x(:,t-1) + Q*z(:,t-1);
% end

for t = 3:nper
    x1(:,t+1:end) = P1*x1(:,t:end-1) + Q1*z1(:,t:end-1);
    y1(:,t) = R1*x1(:,t) + S1*z1(:,t);
end

%% IRFs 2

%lambda = zeros(1,nper);
x2 = zeros(3,nper);
y2 = zeros(8,nper);
z2 = [zeros(1,nper);g];
%z(:,2) = [lambda(2),g(2)];
x2(:,3) = P2*x2(:,2) + Q2*z2(:,2);
y2(:,2) = R2*x2(:,2) + S2*z2(:,2);

% for t = 4:nper
%     x(:,t) = P*x(:,t-1) + Q*z(:,t-1);
% end

for t = 3:nper
    x2(:,t+1:end) = P2*x2(:,t:end-1) + Q2*z2(:,t:end-1);
    y2(:,t) = R2*x2(:,t) + S2*z2(:,t);
end

%% IRFs 3

%lambda = zeros(1,nper);
x3 = zeros(3,nper);
y3 = zeros(8,nper);
z3 = [zeros(1,nper);g];
%z(:,2) = [lambda(2),g(2)];
x3(:,3) = P3*x3(:,2) + Q3*z3(:,2);
y3(:,2) = R3*x3(:,2) + S3*z3(:,2);

% for t = 4:nper
%     x(:,t) = P*x(:,t-1) + Q*z(:,t-1);
% end

for t = 3:nper
    x3(:,t+1:end) = P3*x3(:,t:end-1) + Q3*z3(:,t:end-1);
    y3(:,t) = R3*x3(:,t) + S3*z3(:,t);
end


%% Plot IRF

line_color = ['r' 'b' 'k' 'c' 'g' 'm' "#A2142F" "#7E2F8E"];
t = 1 : nper;
figure
hold on

% IRF 1
Y_plot1 = y1(3,:);
%C_plot = y(4,:);
K_plot1 = x1(1,:);
H_plot1 = y1(5,:);
N_plot1 = y1(6,:);
Rn_plot1 = y1(7,:);
Rf_plot1 = y1(8,:);
P_plot1 = x1(3,:);
M_plot1 = x1(2,:);


plot(t, Y_plot1,'-', 'Color', line_color(1),'LineWidth',2)
%plot(t, C_plot,'-', 'Color', line_color(2),'LineWidth',2)
plot(t, K_plot1,'-', 'Color', line_color(2),'LineWidth',2)
plot(t, H_plot1,'-', 'Color', line_color(3),'LineWidth',2)
plot(t, N_plot1,'-', 'Color', line_color(4),'LineWidth',2)
plot(t, Rn_plot1,'-', 'Color', line_color(5),'LineWidth',2)
plot(t, Rf_plot1,'-', 'Color', line_color(6),'LineWidth',2)
plot(t, P_plot1,'-', 'Color', line_color(7),'LineWidth',2)
plot(t, M_plot1,'-', 'Color', line_color(8),'LineWidth',2)

% % IRF 2
% Y_plot2 = y2(3,:);
% %C_plot = y(4,:);
% K_plot2 = x2(1,:);
% H_plot2 = y2(5,:);
% 
% plot(t, Y_plot2,'--', 'Color', line_color(1),'LineWidth',2)
% %plot(t, C_plot,'-', 'Color', line_color(2),'LineWidth',2)
% plot(t, K_plot2,'--', 'Color', line_color(2),'LineWidth',2)
% plot(t, H_plot2,'--', 'Color', line_color(3),'LineWidth',2)

% IRF 3
Y_plot3 = y3(3,:);
%C_plot = y(4,:);
K_plot3 = x3(1,:);
H_plot3 = y3(5,:);
N_plot3 = y3(6,:);
Rn_plot3 = y3(7,:);
Rf_plot3 = y3(8,:);
P_plot3 = x3(3,:);
M_plot3 = x3(2,:);


plot(t, Y_plot3,'--', 'Color', line_color(1),'LineWidth',2)
%plot(t, C_plot,'-', 'Color', line_color(2),'LineWidth',2)
plot(t, K_plot3,'--', 'Color', line_color(2),'LineWidth',2)
plot(t, H_plot3,'--', 'Color', line_color(3),'LineWidth',2)
plot(t, N_plot3,'--', 'Color', line_color(4),'LineWidth',2)
plot(t, Rn_plot3,'--', 'Color', line_color(5),'LineWidth',2)
plot(t, Rf_plot3,'--', 'Color', line_color(6),'LineWidth',2)
plot(t, P_plot3,'--', 'Color', line_color(7),'LineWidth',2)
plot(t, M_plot3,'--', 'Color', line_color(8),'LineWidth',2)
grid on

names = {'Output with rho = 1','Capital with rho = 1','Labor with rho = 1', 'HH deposits with rho = 1', 'Rn with rho = 1', 'Rf with rho = 1','Price with rho = 1', 'Money with rho = 1', 'Output of with rho = 0.3','Capital with rho = 0.3','Labor with rho = 0.3', 'HH deposits with rho = 0.3', 'Rn with rho = 0.3', 'Rf with rho = 0.3','Price with rho = 0.3', 'Money with rho = 0.3'};
legend(names, 'Location', 'northeast', 'FontSize', 14)
