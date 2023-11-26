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
       sigma=1;
        theta = 0.36;
        betta = 0.9825;
        delta = 0.025;
        tau = 0.35;
        alpha = 1.8834; %from the paper

init_var = [0.484542; 0.309003; 1.32068; 6.28238; 0.0107384; 5.74125; 0.702044; 1];

eqs_ss = @(x) find_ss_JQ2012(x, betta, delta, tau, theta, alpha, sigma);
x_min = fsolve(eqs_ss,init_var,opts);

% Full steady state:
c_ss = x_min(1);
n_ss = x_min(2);
w_ss = x_min(3);
k_ss = x_min(4);
R_ss = (1-tau)/betta + tau;
d_ss = x_min(5);
b_ss = x_min(6);
z_ss = x_min(7);
xi_ss = x_min(8);
mu_ss = -((1/betta - (1/(1 - tau + betta*tau) - 1) - 1 + delta)*k_ss/(xi_ss*theta*(k_ss - b_ss*((1-tau)/(R_ss-tau))))-1);
JQ2012_ss = [c_ss; n_ss; w_ss; k_ss; R_ss; d_ss; b_ss; mu_ss; z_ss; xi_ss];
