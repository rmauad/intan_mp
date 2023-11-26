% Roberto Baltieri Mauad
% RBC model with financial markets and monetary policy - ABCc of RBCs
% chapter 12
% Run the IRFs
clear;
close all;

run fsolve_ss_equity.m

[P,Q,R,S] = calc_mat_equity(rbc_ss, params);

%AR params
gamma = params(5);
pi = params(6);

%Find a number for pi (the AR parameter in the money growth
%evolution equation).

%Money growth AR process
nper = 12;
g = zeros(1,nper);
g(2) = 0.01; %money growth shock

for t = 3:nper
    g(t) = pi*g(t-1);
end

%% IRFs

lambda = zeros(1,nper);
x = zeros(3,nper); %state variables 
y = zeros(9,nper);
z = [zeros(1,nper);g];
%z(:,2) = [lambda(2),g(2)];
x(:,3) = P*x(:,2) + Q*z(:,2);
y(:,2) = R*x(:,2) + S*z(:,2);

% for t = 4:nper
%     x(:,t) = P*x(:,t-1) + Q*z(:,t-1);
% end

for t = 3:nper
    x(:,t+1:end) = P*x(:,t:end-1) + Q*z(:,t:end-1);
    y(:,t) = R*x(:,t) + S*z(:,t);
end

%% Plot IRF


line_color = ['r' 'b' 'k'];
t = 1 : nper;
period = 100;
figure
hold on
Y_plot = y(3,:);
%C_plot = y(4,:);
K_plot = x(1,:);
H_plot = y(5,:);

plot(t, Y_plot,'-', 'Color', line_color(1),'LineWidth',2)
%plot(t, C_plot,'-', 'Color', line_color(2),'LineWidth',2)
plot(t, K_plot,'-', 'Color', line_color(2),'LineWidth',2)
plot(t, H_plot,'-', 'Color', line_color(3),'LineWidth',2)
grid on

names = {'Output','Capital','Labor'};
legend(names, 'Location', 'northeast')
