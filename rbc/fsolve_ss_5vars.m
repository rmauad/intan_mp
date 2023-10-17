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

init_var = [1.66; .76; .9; .32; 1.4];

eqs_ss = @(x) find_ss(x, beta, delta, B, theta);
x_min = fsolve(eqs_ss,init_var,opts);

