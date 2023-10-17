% Roberto Baltieri Mauad
% RBC model with financial markets and monetary policy - ABCc of RBCs
% chapter 12
% Function to calculate the SS

function eqs = find_ss(x, beta, delta, B, theta)

MP_ss = x(1);
NP_ss = x(2);
C_ss = x(3);
H_ss = x(4);
g_ss = x(5);

% Basic equations
r_ss = 1/beta - 1 + delta;
rf_ss = 1/beta;
rn_ss = 1/beta;
%g_ss = 1;


eqs = [
    rf_ss + beta*(1-theta)*(theta/r_ss)^(theta/(1-theta))/(C_ss*g_ss*B);
    (rn_ss - rf_ss)*(NP_ss) - rf_ss*(1-(1/g_ss))*(MP_ss);
    -(C_ss*g_ss*B/beta)*H_ss - NP_ss - (1-1/g_ss)*MP_ss;
    C_ss - (MP_ss/g_ss) + NP_ss;
    MP_ss - (g_ss/beta)*NP_ss - ((r_ss - delta)*(theta/r_ss)^(1/(1-theta)) - C_ss*g_ss*B/beta)*H_ss];


