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
M_.fname = 'abc';
M_.dynare_version = '4.6.3';
oo_.dynare_version = '4.6.3';
options_.dynare_version = '4.6.3';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('abc.log');
M_.exo_names = cell(2,1);
M_.exo_names_tex = cell(2,1);
M_.exo_names_long = cell(2,1);
M_.exo_names(1) = {'eg'};
M_.exo_names_tex(1) = {'eg'};
M_.exo_names_long(1) = {'eg'};
M_.exo_names(2) = {'elambda'};
M_.exo_names_tex(2) = {'elambda'};
M_.exo_names_long(2) = {'elambda'};
M_.endo_names = cell(13,1);
M_.endo_names_tex = cell(13,1);
M_.endo_names_long = cell(13,1);
M_.endo_names(1) = {'w'};
M_.endo_names_tex(1) = {'w'};
M_.endo_names_long(1) = {'w'};
M_.endo_names(2) = {'r'};
M_.endo_names_tex(2) = {'r'};
M_.endo_names_long(2) = {'r'};
M_.endo_names(3) = {'c'};
M_.endo_names_tex(3) = {'c'};
M_.endo_names_long(3) = {'c'};
M_.endo_names(4) = {'p'};
M_.endo_names_tex(4) = {'p'};
M_.endo_names_long(4) = {'p'};
M_.endo_names(5) = {'m'};
M_.endo_names_tex(5) = {'m'};
M_.endo_names_long(5) = {'m'};
M_.endo_names(6) = {'n'};
M_.endo_names_tex(6) = {'n'};
M_.endo_names_long(6) = {'n'};
M_.endo_names(7) = {'k'};
M_.endo_names_tex(7) = {'k'};
M_.endo_names_long(7) = {'k'};
M_.endo_names(8) = {'y'};
M_.endo_names_tex(8) = {'y'};
M_.endo_names_long(8) = {'y'};
M_.endo_names(9) = {'h'};
M_.endo_names_tex(9) = {'h'};
M_.endo_names_long(9) = {'h'};
M_.endo_names(10) = {'rn'};
M_.endo_names_tex(10) = {'rn'};
M_.endo_names_long(10) = {'rn'};
M_.endo_names(11) = {'rf'};
M_.endo_names_tex(11) = {'rf'};
M_.endo_names_long(11) = {'rf'};
M_.endo_names(12) = {'g'};
M_.endo_names_tex(12) = {'g'};
M_.endo_names_long(12) = {'g'};
M_.endo_names(13) = {'lambda'};
M_.endo_names_tex(13) = {'lambda'};
M_.endo_names_long(13) = {'lambda'};
M_.endo_partitions = struct();
M_.param_names = cell(6,1);
M_.param_names_tex = cell(6,1);
M_.param_names_long = cell(6,1);
M_.param_names(1) = {'beta'};
M_.param_names_tex(1) = {'beta'};
M_.param_names_long(1) = {'beta'};
M_.param_names(2) = {'B'};
M_.param_names_tex(2) = {'B'};
M_.param_names_long(2) = {'B'};
M_.param_names(3) = {'delta'};
M_.param_names_tex(3) = {'delta'};
M_.param_names_long(3) = {'delta'};
M_.param_names(4) = {'theta'};
M_.param_names_tex(4) = {'theta'};
M_.param_names_long(4) = {'theta'};
M_.param_names(5) = {'pi'};
M_.param_names_tex(5) = {'pi'};
M_.param_names_long(5) = {'pi'};
M_.param_names(6) = {'gamma'};
M_.param_names_tex(6) = {'gamma'};
M_.param_names_long(6) = {'gamma'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 2;
M_.endo_nbr = 13;
M_.param_nbr = 6;
M_.orig_endo_nbr = 13;
M_.aux_vars = [];
M_.Sigma_e = zeros(2, 2);
M_.Correlation_matrix = eye(2, 2);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = true;
M_.det_shocks = [];
options_.linear = false;
options_.block = false;
options_.bytecode = false;
options_.use_dll = false;
options_.linear_decomposition = false;
M_.orig_eq_nbr = 13;
M_.eq_nbr = 13;
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
 0 4 17;
 0 5 18;
 0 6 19;
 0 7 20;
 1 8 0;
 0 9 0;
 0 10 21;
 0 11 0;
 0 12 0;
 0 13 0;
 0 14 0;
 2 15 0;
 3 16 0;]';
M_.nstatic = 5;
M_.nfwrd   = 5;
M_.npred   = 3;
M_.nboth   = 0;
M_.nsfwrd   = 5;
M_.nspred   = 3;
M_.ndynamic   = 8;
M_.dynamic_tmp_nbr = [6; 2; 0; 0; ];
M_.model_local_variables_dynamic_tt_idxs = {
};
M_.equations_tags = {
  1 , 'name' , '1' ;
  2 , 'name' , '2' ;
  3 , 'name' , 'rn' ;
  4 , 'name' , '4' ;
  5 , 'name' , '5' ;
  6 , 'name' , '6' ;
  7 , 'name' , 'r' ;
  8 , 'name' , 'y' ;
  9 , 'name' , '9' ;
  10 , 'name' , '10' ;
  11 , 'name' , 'm' ;
  12 , 'name' , '12' ;
  13 , 'name' , '13' ;
};
M_.mapping.w.eqidx = [1 2 5 6 10 ];
M_.mapping.r.eqidx = [2 5 7 ];
M_.mapping.c.eqidx = [1 3 4 ];
M_.mapping.p.eqidx = [1 3 4 5 10 ];
M_.mapping.m.eqidx = [4 5 9 10 11 ];
M_.mapping.n.eqidx = [4 5 9 10 ];
M_.mapping.k.eqidx = [5 6 7 8 ];
M_.mapping.y.eqidx = [8 ];
M_.mapping.h.eqidx = [5 6 7 8 10 ];
M_.mapping.rn.eqidx = [3 5 9 ];
M_.mapping.rf.eqidx = [6 9 ];
M_.mapping.g.eqidx = [9 10 11 12 ];
M_.mapping.lambda.eqidx = [6 7 8 13 ];
M_.mapping.eg.eqidx = [12 ];
M_.mapping.elambda.eqidx = [13 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [5 12 13 ];
M_.exo_names_orig_ord = [1:2];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(13, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(2, 1);
M_.params = NaN(6, 1);
M_.endo_trends = struct('deflator', cell(13, 1), 'log_deflator', cell(13, 1), 'growth_factor', cell(13, 1), 'log_growth_factor', cell(13, 1));
M_.NNZDerivatives = [58; -1; -1; ];
M_.static_tmp_nbr = [6; 2; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
M_.params(1) = .99;
beta = M_.params(1);
M_.params(3) = .025;
delta = M_.params(3);
M_.params(4) = .36;
theta = M_.params(4);
M_.params(2) = (-2.5805);
B = M_.params(2);
M_.params(5) = 0.9;
pi = M_.params(5);
M_.params(6) = 0.95;
gamma = M_.params(6);
%
% INITVAL instructions
%
options_.initval_file = false;
oo_.steady_state(12) = 1;
oo_.steady_state(2) = 0.035;
oo_.steady_state(10) = 1.01;
oo_.steady_state(11) = 1.01;
oo_.steady_state(4) = 1;
oo_.steady_state(5) = 1.66*oo_.steady_state(4);
oo_.steady_state(6) = oo_.steady_state(4)*0.76;
oo_.steady_state(3) = 0.9;
oo_.steady_state(8) = 1.21;
oo_.steady_state(1) = 2.34;
oo_.steady_state(9) = 0.32;
oo_.steady_state(7) = 12.41;
oo_.steady_state(13) = 1;
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
M_.Sigma_e(1, 1) = 1;
M_.Sigma_e(2, 2) = 1;
steady;
options_.irf = 50;
options_.order = 1;
var_list_ = {};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);
save('abc_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('abc_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('abc_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('abc_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('abc_results.mat', 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save('abc_results.mat', 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save('abc_results.mat', 'oo_recursive_', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc(tic0)) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
