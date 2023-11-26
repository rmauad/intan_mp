%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

if isoctave || matlab_ver_less_than('8.6')
    clear all
else
    clearvars -global
    clear_persistent_variables(fileparts(which('dynare')), false)
end
tic0 = tic;
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info ys0_ ex0_
options_ = [];
M_.fname = 'JQ_2012_mp_v2';
M_.dynare_version = '4.6.3';
oo_.dynare_version = '4.6.3';
options_.dynare_version = '4.6.3';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('JQ_2012_mp_v2.log');
M_.exo_names = cell(3,1);
M_.exo_names_tex = cell(3,1);
M_.exo_names_long = cell(3,1);
M_.exo_names(1) = {'eps_z'};
M_.exo_names_tex(1) = {'eps\_z'};
M_.exo_names_long(1) = {'eps_z'};
M_.exo_names(2) = {'eps_xi'};
M_.exo_names_tex(2) = {'eps\_xi'};
M_.exo_names_long(2) = {'eps_xi'};
M_.exo_names(3) = {'eps_g'};
M_.exo_names_tex(3) = {'eps\_g'};
M_.exo_names_long(3) = {'eps_g'};
M_.endo_names = cell(14,1);
M_.endo_names_tex = cell(14,1);
M_.endo_names_long = cell(14,1);
M_.endo_names(1) = {'c'};
M_.endo_names_tex(1) = {'c'};
M_.endo_names_long(1) = {'c'};
M_.endo_names(2) = {'n'};
M_.endo_names_tex(2) = {'n'};
M_.endo_names_long(2) = {'n'};
M_.endo_names(3) = {'w'};
M_.endo_names_tex(3) = {'w'};
M_.endo_names_long(3) = {'w'};
M_.endo_names(4) = {'k'};
M_.endo_names_tex(4) = {'k'};
M_.endo_names_long(4) = {'k'};
M_.endo_names(5) = {'Rf'};
M_.endo_names_tex(5) = {'Rf'};
M_.endo_names_long(5) = {'Rf'};
M_.endo_names(6) = {'Rhh'};
M_.endo_names_tex(6) = {'Rhh'};
M_.endo_names_long(6) = {'Rhh'};
M_.endo_names(7) = {'m'};
M_.endo_names_tex(7) = {'m'};
M_.endo_names_long(7) = {'m'};
M_.endo_names(8) = {'d'};
M_.endo_names_tex(8) = {'d'};
M_.endo_names_long(8) = {'d'};
M_.endo_names(9) = {'b'};
M_.endo_names_tex(9) = {'b'};
M_.endo_names_long(9) = {'b'};
M_.endo_names(10) = {'mu'};
M_.endo_names_tex(10) = {'mu'};
M_.endo_names_long(10) = {'mu'};
M_.endo_names(11) = {'z'};
M_.endo_names_tex(11) = {'z'};
M_.endo_names_long(11) = {'z'};
M_.endo_names(12) = {'xi'};
M_.endo_names_tex(12) = {'xi'};
M_.endo_names_long(12) = {'xi'};
M_.endo_names(13) = {'g'};
M_.endo_names_tex(13) = {'g'};
M_.endo_names_long(13) = {'g'};
M_.endo_names(14) = {'p'};
M_.endo_names_tex(14) = {'p'};
M_.endo_names_long(14) = {'p'};
M_.endo_partitions = struct();
M_.param_names = cell(12,1);
M_.param_names_tex = cell(12,1);
M_.param_names_long = cell(12,1);
M_.param_names(1) = {'theta'};
M_.param_names_tex(1) = {'theta'};
M_.param_names_long(1) = {'theta'};
M_.param_names(2) = {'betta'};
M_.param_names_tex(2) = {'betta'};
M_.param_names_long(2) = {'betta'};
M_.param_names(3) = {'alppha'};
M_.param_names_tex(3) = {'alppha'};
M_.param_names_long(3) = {'alppha'};
M_.param_names(4) = {'delta'};
M_.param_names_tex(4) = {'delta'};
M_.param_names_long(4) = {'delta'};
M_.param_names(5) = {'tau'};
M_.param_names_tex(5) = {'tau'};
M_.param_names_long(5) = {'tau'};
M_.param_names(6) = {'kappa'};
M_.param_names_tex(6) = {'kappa'};
M_.param_names_long(6) = {'kappa'};
M_.param_names(7) = {'siggma'};
M_.param_names_tex(7) = {'siggma'};
M_.param_names_long(7) = {'siggma'};
M_.param_names(8) = {'sigma_z'};
M_.param_names_tex(8) = {'sigma\_z'};
M_.param_names_long(8) = {'sigma_z'};
M_.param_names(9) = {'sigma_xi'};
M_.param_names_tex(9) = {'sigma\_xi'};
M_.param_names_long(9) = {'sigma_xi'};
M_.param_names(10) = {'A11'};
M_.param_names_tex(10) = {'A11'};
M_.param_names_long(10) = {'A11'};
M_.param_names(11) = {'A22'};
M_.param_names_tex(11) = {'A22'};
M_.param_names_long(11) = {'A22'};
M_.param_names(12) = {'rhog'};
M_.param_names_tex(12) = {'rhog'};
M_.param_names_long(12) = {'rhog'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 3;
M_.endo_nbr = 14;
M_.param_nbr = 12;
M_.orig_endo_nbr = 14;
M_.aux_vars = [];
M_.Sigma_e = zeros(3, 3);
M_.Correlation_matrix = eye(3, 3);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = true;
M_.det_shocks = [];
options_.linear = false;
options_.block = false;
options_.bytecode = false;
options_.use_dll = false;
options_.linear_decomposition = false;
M_.orig_eq_nbr = 14;
M_.eq_nbr = 14;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./+' M_.fname '/set_auxiliary_variables.m'], 'file') == 2;
M_.epilogue_names = {};
M_.epilogue_var_list_ = {};
M_.orig_maximum_endo_lag = 1;
M_.orig_maximum_endo_lead = 1;
M_.orig_maximum_exo_lag = 0;
M_.orig_maximum_exo_lead = 0;
M_.orig_maximum_exo_det_lag = 0;
M_.orig_maximum_exo_det_lead = 0;
M_.orig_maximum_lag = 1;
M_.orig_maximum_lead = 1;
M_.orig_maximum_lag_with_diffs_expanded = 1;
M_.lead_lag_incidence = [
 0 7 20;
 0 8 21;
 0 9 0;
 1 10 0;
 0 11 0;
 0 12 22;
 2 13 0;
 0 14 23;
 3 15 24;
 0 16 25;
 4 17 26;
 5 18 0;
 6 19 0;
 0 0 27;]';
M_.nstatic = 2;
M_.nfwrd   = 6;
M_.npred   = 4;
M_.nboth   = 2;
M_.nsfwrd   = 8;
M_.nspred   = 6;
M_.ndynamic   = 12;
M_.dynamic_tmp_nbr = [15; 4; 0; 0; ];
M_.model_local_variables_dynamic_tt_idxs = {
};
M_.equations_tags = {
  1 , 'name' , 'FOC labor, equation 1 on p. 4 Appendix' ;
  2 , 'name' , 'Euler equation, equation 2 on p. 4 Appendix' ;
  3 , 'name' , 'budget constraint household, equation 3 on p. 4 Appendix' ;
  4 , 'name' , '4' ;
  5 , 'name' , 'FOC labor input, equation 4 on p. 4 Appendix' ;
  6 , 'name' , 'FOC capital, equation 5 on p. 4 Appendix' ;
  7 , 'name' , 'FOC bonds, equation 6 on p. 4 Appendix' ;
  8 , 'name' , 'budget constraint firm, equation 7 on p. 4 Appendix' ;
  9 , 'name' , 'Enforcement constraint, equation 8 on p. 4 Appendix' ;
  10 , 'name' , 'Equation 1 of VAR in equation (11)' ;
  11 , 'name' , 'Equation 2 of VAR in equation (11)' ;
  12 , 'name' , '12' ;
  13 , 'name' , '13' ;
  14 , 'name' , 'g' ;
};
M_.mapping.c.eqidx = [1 2 4 6 7 ];
M_.mapping.n.eqidx = [1 3 5 6 8 9 13 ];
M_.mapping.w.eqidx = [1 3 5 8 13 ];
M_.mapping.k.eqidx = [5 6 8 9 ];
M_.mapping.Rf.eqidx = [7 8 9 12 ];
M_.mapping.Rhh.eqidx = [1 2 3 12 ];
M_.mapping.m.eqidx = [3 4 12 13 ];
M_.mapping.d.eqidx = [2 3 5 6 7 8 ];
M_.mapping.b.eqidx = [3 4 8 9 12 13 ];
M_.mapping.mu.eqidx = [5 6 7 ];
M_.mapping.z.eqidx = [5 6 8 9 10 ];
M_.mapping.xi.eqidx = [6 7 9 11 ];
M_.mapping.g.eqidx = [12 13 14 ];
M_.mapping.p.eqidx = [2 ];
M_.mapping.eps_z.eqidx = [10 ];
M_.mapping.eps_xi.eqidx = [11 ];
M_.mapping.eps_g.eqidx = [14 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [4 7 9 11 12 13 ];
M_.exo_names_orig_ord = [1:3];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(14, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(3, 1);
M_.params = NaN(12, 1);
M_.endo_trends = struct('deflator', cell(14, 1), 'log_deflator', cell(14, 1), 'growth_factor', cell(14, 1), 'log_growth_factor', cell(14, 1));
M_.NNZDerivatives = [76; -1; -1; ];
M_.static_tmp_nbr = [9; 5; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
M_.params(7) = 1;
siggma = M_.params(7);
M_.params(1) = 0.36;
theta = M_.params(1);
M_.params(2) = 0.9825;
betta = M_.params(2);
M_.params(4) = 0.025;
delta = M_.params(4);
M_.params(5) = 0.35;
tau = M_.params(5);
M_.params(3) = 1.8834;
alppha = M_.params(3);
M_.params(6) = 0.146;
kappa = M_.params(6);
M_.params(9) = 0.0098;
sigma_xi = M_.params(9);
M_.params(8) = 0.0045;
sigma_z = M_.params(8);
M_.params(10) = 0.9457;
A11 = M_.params(10);
M_.params(11) = 0.9703;
A22 = M_.params(11);
M_.params(12) = 0.97;
rhog = M_.params(12);
sigma_g = 0.5; 
%
% INITVAL instructions
%
options_.initval_file = false;
oo_.steady_state(1) = 0.484542;
oo_.steady_state(2) = 0.309003;
oo_.steady_state(3) = 1.32068;
oo_.steady_state(4) = 6.28238;
oo_.steady_state(6) = 1.01158;
oo_.steady_state(5) = 1.01158;
oo_.steady_state(8) = 0.0107384;
oo_.steady_state(9) = 5.74125;
oo_.steady_state(10) = 0.00616275;
oo_.steady_state(11) = 0.702044;
oo_.steady_state(12) = 1;
oo_.steady_state(13) = 1;
oo_.steady_state(7) = 1;
oo_.steady_state(14) = 1;
if M_.exo_nbr > 0
	oo_.exo_simul = ones(M_.maximum_lag,1)*oo_.exo_steady_state';
end
if M_.exo_det_nbr > 0
	oo_.exo_det_simul = ones(M_.maximum_lag,1)*oo_.exo_det_steady_state';
end
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = M_.params(8)^2;
M_.Sigma_e(2, 2) = M_.params(9)^2;
M_.Sigma_e(3, 3) = sigma_g^2;
steady;
options_.bandpass.indicator = true;
options_.irf = 50;
options_.order = 1;
options_.bandpass.passband = [6;32;];
var_list_ = {};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);
save('JQ_2012_mp_v2_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('JQ_2012_mp_v2_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('JQ_2012_mp_v2_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('JQ_2012_mp_v2_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('JQ_2012_mp_v2_results.mat', 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save('JQ_2012_mp_v2_results.mat', 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save('JQ_2012_mp_v2_results.mat', 'oo_recursive_', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc(tic0)) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
