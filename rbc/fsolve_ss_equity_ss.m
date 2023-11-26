% Roberto Baltieri Mauad
% RBC model with financial markets and monetary policy - ABCc of RBCs
% chapter 12
% Fsolve to calculate the SS

opts = optimoptions(@fsolve);
opts.Display = 'iter';
opts.OptimalityTolerance = 1e-12;
opts.MaxIterations = 400000;
opts.MaxFunctionEvaluations = 1000000;

% Set parameters
beta = .99;
delta = .025;
theta = .36;
B = -2.5805;
gamma = 0.95; %AR technology shock
pi = 0.5; %AR money growth shock
g_ss = 1;
kappa = 0.5;

params = [beta; delta; theta; B; gamma; pi; kappa];

%init_var = [1; 1.66; .76; .9; .32];
init_var = [1.66; .76; .9; .32];

eqs_ss = @(x) find_ss_equity(x, beta, delta, B, theta, g_ss);
x_min = fsolve(eqs_ss,init_var,opts);

% Full steady state:
r_ss = 1/beta - 1 + delta;
rn_ss = g_ss/beta;
%H_ss = x_min(5);
H_ss = x_min(4);
Y_ss = H_ss*(theta/r_ss)^(theta/(1-theta));
%rf_ss = x_min(1);
rf_ss = 1;
%C_ss = x_min(4);
C_ss = x_min(3);
w_ss = -C_ss*g_ss*B/beta;
K_ss = H_ss*(theta/r_ss)^(1/(1-theta));
util = log(C_ss) + H_ss*B;
d_ss = H_ss*w_ss/2; %assume in equilibrium the firm finances half of the wage bill with equity.
rbc_ss = [g_ss; r_ss; rn_ss; rf_ss; x_min(2:end-1,:); Y_ss; w_ss; H_ss; K_ss; util; d_ss];
