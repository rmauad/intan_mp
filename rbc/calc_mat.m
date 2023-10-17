% Roberto Baltieri Mauad
% RBC model with financial markets and monetary policy - ABCc of RBCs
% chapter 12
% Function to calculate the matrices and run the IRFs


function [P,Q,R,S] = calc_mat(rbc_ss, params)

% Parameters
beta = params(1);
delta = params(2);
theta = params(3);
%B = params(4);
gamma = params(5);
pi = params(6);

% Steady state
g_ss = rbc_ss(1);
r_ss = rbc_ss(2);
rn_ss = rbc_ss(3);
rf_ss = rbc_ss(4);
MP_ss = rbc_ss(5);
NP_ss = rbc_ss(6);
C_ss = rbc_ss(7);
Y_ss = rbc_ss(8);
w_ss = rbc_ss(9);
H_ss = rbc_ss(10);
K_ss = rbc_ss(11);

% Matrices from the linearized model
A = [0, 0, 0;
    0, 0, C_ss;
    K_ss, MP_ss, rn_ss*NP_ss - MP_ss;
    0, 0, 0;
    0, 0, 0;
    0, 0, 0;
    0, 0, -((rf_ss - rn_ss)*NP_ss + rf_ss*MP_ss*(1-1/g_ss));
    0, 0, -(NP_ss + MP_ss*(1-1/g_ss))];

B = [0, 0, 0;
    0, -MP_ss/g_ss, 0;
    -(r_ss+1-delta)*K_ss, 0, 0;
    -theta, 0, 0;
    -(theta-1), 0, 0;
    -theta, 0, 0;
    0, rf_ss*MP_ss*(1-1/g_ss), 0;
    0, MP_ss*(1-1/g_ss), 0]; 

C = [0, 1, 0, -1, 0, 0, -1, 0;
    0, 0, 0, C_ss, 0, NP_ss, 0, 0;
    -r_ss*K_ss, -w_ss*H_ss, 0, 0, -w_ss*H_ss, -rn_ss*NP_ss, -rn_ss*NP_ss, 0;
    0, 1, 0, 0, theta, 0, 0, 1;
    1, 0, 0, 0, -(1-theta), 0, 0, 0;
    0, 0, 1, 0, -(1-theta), 0, 0, 0;
    0, 0, 0, 0, 0, (rf_ss-rn_ss)*NP_ss, -rn_ss*NP_ss, rf_ss*(NP_ss+MP_ss*(1-1/g_ss));
    0, -w_ss*H_ss, 0, 0, -w_ss*H_ss, NP_ss, 0, 0];

D = [0, 0;
    0, 0;
    0, 0;
    -1, 0;
    -1, 0;
    -1, 0;
    0, rf_ss*MP_ss;
    0, MP_ss];

F = [0, 0, -1;
    0, 0, 0;
    0, 0, 0];

G = [0, 0, 1;
    0, 0, 0;
    0, 1, 0];

H = [0, 0, 0;
    0, 0, 0;
    0, -1, 0];

J = [0, 0, 0, -1, 0, 0, 0, 0;
    beta*r_ss, -1, 0, 0, 0, 0, 0, 0;
    0, 0, 0, 0, 0, 0, 0, 0];

K = [0, 1, 0, 0, 0, 0, 0, 0;
    0, 1, 0, 0, 0, 0, 0, 0;
    0, 0, 0, 0, 0, 0, 0, 0];

L = [0, 0;
    0, 0;
    0, 0];

M = [0, 0;
    0, 0;
    0, -1];

N = [gamma, 0;
    0, pi];

% Uhlig solution to obtain matrices P, Q, R, S

eq = @(P) (F - J*inv(C)*A)*P^2 - (J*inv(C)*B - G + K*inv(C)*A)*P - K*inv(C)*B + H;
init_P = [1, 1, 1;
    1, 1, 1;
    1, 1, 1];
P = fsolve(eq,init_P);

R = -inv(C)*(A*P + B);

eq = @(Q) inv((kron(N',(F-J*inv(C)*A)) + kron(eye(2),(F*P + G + J*R - K*inv(C)*A))))*reshape((J*inv(C)*D - L)*N + K*inv(C)*D - M,[],1) - reshape(Q,[],1);
init_Q = [1, 1;
    1, 1;
    1, 1];
Q = fsolve(eq,init_Q);

S = -inv(C)*(A*Q + D);

% P = [0.943, 0, 0;
%     0, 1, 0;
%     -0.3340, 1, 0];
% 
% Q = [0.1490, 0.2020;
%     0, 1;
%     -1.0337, 0.6287];
% 
% R = [-0.9236, 0, 0;
%     0.5315, 0, 0;
%     0.0764, 0, 0;
%     0.5434, 0, 0;
%     -0.4432, 0, 0;
%     -0.2457, 1, 0;
%     -0.0119, 0, 0;
%     -0.0119, 0, 0];
% 
% S = [1.8309, 1.2411;
%     0.4701, 0.1791;
%     1.8309, 1.2411;
%     0.4077, -1.1172;
%     1.2982, 1.9392;
%     0.7347, 0.5734;
%     0.0625, 1.2964;
%     0.0625, -0.8772];
end