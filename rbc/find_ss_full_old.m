% Roberto Baltieri Mauad
% RBC model with financial markets and monetary policy - ABCc of RBCs
% chapter 12
% Function to calculate the SS

function eqs = find_ss(x, beta, delta, B, theta)

g_ss = x(1);
r_ss = x(2);
rn_ss = x(3);
rf_ss = x(4);
MP_ss = x(5);
NP_ss = x(6);
C_ss = x(7);
Y_ss = x(8);
w_ss = x(9);
H_ss = x(10);
K_ss = x(11);

% Basic equations

eqs = [r_ss - (1/beta - 1 + delta);
    rn_ss - g_ss/beta;
    rf_ss - 1/beta;
    C_ss + (w_ss*beta)/(g_ss*B);
    rf_ss*w_ss - (1-theta)*(theta/r_ss)^(theta/(1-theta));
    K_ss - H_ss*(theta/r_ss)^(1/(1-theta));
    rf_ss + beta*(1-theta)*(theta/r_ss)^(theta/(1-theta)/(C_ss*g_ss*B));
    Y_ss - H_ss*(theta/r_ss)^(theta/(1-theta));
    (rn_ss - rf_ss)*(NP_ss) - rf_ss*(1-(1/g_ss))*(MP_ss);
    -(C_ss*g_ss*B/beta)*H_ss - (NP_ss) - (1-1/g_ss)*(MP_ss);
    C_ss - (MP_ss*g_ss) + (NP_ss);
    MP_ss - (g_ss/beta)*(NP_ss) - ((r_ss - delta)*(theta/r_ss)^(1/(1-theta) - C_ss*g_ss*B/beta))*H_ss];


