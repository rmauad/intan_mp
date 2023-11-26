% Roberto Baltieri Mauad
% RBC model with financial markets and monetary policy - ABCc of RBCs
% chapter 12
% Function to calculate the SS

function eqs = find_ss_equity(x, beta, delta, B, theta, g_ss)

rf_ss = x(1);
MP_ss = x(2);
NP_ss = x(3);
C_ss = x(4);
H_ss = x(5);

% Basic equations
r_ss = 1/beta - 1 + delta;
rn_ss = g_ss/beta;
% rf_ss = 1;
% MP_ss = 1.667565032;

eqs = [
    rf_ss + beta*(1-theta)*(theta/r_ss)^(theta/(1-theta))/(C_ss*g_ss*B);
    (rn_ss - rf_ss)*(NP_ss) - rf_ss*(1-(1/g_ss))*(MP_ss);
    -(C_ss*g_ss*B/beta)*H_ss - NP_ss - (1-1/g_ss)*MP_ss;
    C_ss - (MP_ss/g_ss) + NP_ss;
    MP_ss - (g_ss/beta)*NP_ss - ((r_ss - delta)*(theta/r_ss)^(1/(1-theta)) - C_ss*g_ss*B/beta)*H_ss];

