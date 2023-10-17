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

init_var = [1; .35; 1.01; 1.01; 1.66; .76; .9; 1.21; 2.34; .32; 12.41];

eqs_ss = @(x) find_ss(x, beta, delta, B, theta);
x_min = fsolve(eqs_ss,init_var,opts);

C_ss = x_min(7);
H_ss = x_min(10);

util_ss = log(C_ss) + H_ss*B;
x_min = [x_min; util_ss];