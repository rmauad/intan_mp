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
M_.fname = 'bkk_v7_bo_withbonds_shocks';
M_.dynare_version = '4.6.3';
oo_.dynare_version = '4.6.3';
options_.dynare_version = '4.6.3';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('bkk_v7_bo_withbonds_shocks.log');
M_.exo_names = cell(5,1);
M_.exo_names_tex = cell(5,1);
M_.exo_names_long = cell(5,1);
M_.exo_names(1) = {'eps_nu'};
M_.exo_names_tex(1) = {'eps\_nu'};
M_.exo_names_long(1) = {'eps_nu'};
M_.exo_names(2) = {'eps_nu_star'};
M_.exo_names_tex(2) = {'eps\_nu\_star'};
M_.exo_names_long(2) = {'eps_nu_star'};
M_.exo_names(3) = {'eps_mu_var'};
M_.exo_names_tex(3) = {'eps\_mu\_var'};
M_.exo_names_long(3) = {'eps_mu_var'};
M_.exo_names(4) = {'eps_mu_star'};
M_.exo_names_tex(4) = {'eps\_mu\_star'};
M_.exo_names_long(4) = {'eps_mu_star'};
M_.exo_names(5) = {'eps_gz'};
M_.exo_names_tex(5) = {'eps\_gz'};
M_.exo_names_long(5) = {'eps_gz'};
M_.endo_names = cell(31,1);
M_.endo_names_tex = cell(31,1);
M_.endo_names_long = cell(31,1);
M_.endo_names(1) = {'c'};
M_.endo_names_tex(1) = {'c'};
M_.endo_names_long(1) = {'c'};
M_.endo_names(2) = {'c_star'};
M_.endo_names_tex(2) = {'c\_star'};
M_.endo_names_long(2) = {'c_star'};
M_.endo_names(3) = {'I'};
M_.endo_names_tex(3) = {'I'};
M_.endo_names_long(3) = {'I'};
M_.endo_names(4) = {'I_star'};
M_.endo_names_tex(4) = {'I\_star'};
M_.endo_names_long(4) = {'I_star'};
M_.endo_names(5) = {'y'};
M_.endo_names_tex(5) = {'y'};
M_.endo_names_long(5) = {'y'};
M_.endo_names(6) = {'y_star'};
M_.endo_names_tex(6) = {'y\_star'};
M_.endo_names_long(6) = {'y_star'};
M_.endo_names(7) = {'a'};
M_.endo_names_tex(7) = {'a'};
M_.endo_names_long(7) = {'a'};
M_.endo_names(8) = {'a_star'};
M_.endo_names_tex(8) = {'a\_star'};
M_.endo_names_long(8) = {'a_star'};
M_.endo_names(9) = {'x'};
M_.endo_names_tex(9) = {'x'};
M_.endo_names_long(9) = {'x'};
M_.endo_names(10) = {'x_star'};
M_.endo_names_tex(10) = {'x\_star'};
M_.endo_names_long(10) = {'x_star'};
M_.endo_names(11) = {'k'};
M_.endo_names_tex(11) = {'k'};
M_.endo_names_long(11) = {'k'};
M_.endo_names(12) = {'k_star'};
M_.endo_names_tex(12) = {'k\_star'};
M_.endo_names_long(12) = {'k_star'};
M_.endo_names(13) = {'l'};
M_.endo_names_tex(13) = {'l'};
M_.endo_names_long(13) = {'l'};
M_.endo_names(14) = {'l_star'};
M_.endo_names_tex(14) = {'l\_star'};
M_.endo_names_long(14) = {'l_star'};
M_.endo_names(15) = {'d'};
M_.endo_names_tex(15) = {'d'};
M_.endo_names_long(15) = {'d'};
M_.endo_names(16) = {'d_star'};
M_.endo_names_tex(16) = {'d\_star'};
M_.endo_names_long(16) = {'d_star'};
M_.endo_names(17) = {'int'};
M_.endo_names_tex(17) = {'int'};
M_.endo_names_long(17) = {'int'};
M_.endo_names(18) = {'s'};
M_.endo_names_tex(18) = {'s'};
M_.endo_names_long(18) = {'s'};
M_.endo_names(19) = {'p_y'};
M_.endo_names_tex(19) = {'p\_y'};
M_.endo_names_long(19) = {'p_y'};
M_.endo_names(20) = {'py_star'};
M_.endo_names_tex(20) = {'py\_star'};
M_.endo_names_long(20) = {'py_star'};
M_.endo_names(21) = {'r'};
M_.endo_names_tex(21) = {'r'};
M_.endo_names_long(21) = {'r'};
M_.endo_names(22) = {'r_star'};
M_.endo_names_tex(22) = {'r\_star'};
M_.endo_names_long(22) = {'r_star'};
M_.endo_names(23) = {'w'};
M_.endo_names_tex(23) = {'w'};
M_.endo_names_long(23) = {'w'};
M_.endo_names(24) = {'w_star'};
M_.endo_names_tex(24) = {'w\_star'};
M_.endo_names_long(24) = {'w_star'};
M_.endo_names(25) = {'b'};
M_.endo_names_tex(25) = {'b'};
M_.endo_names_long(25) = {'b'};
M_.endo_names(26) = {'b_star'};
M_.endo_names_tex(26) = {'b\_star'};
M_.endo_names_long(26) = {'b_star'};
M_.endo_names(27) = {'nu'};
M_.endo_names_tex(27) = {'nu'};
M_.endo_names_long(27) = {'nu'};
M_.endo_names(28) = {'nu_star'};
M_.endo_names_tex(28) = {'nu\_star'};
M_.endo_names_long(28) = {'nu_star'};
M_.endo_names(29) = {'mu_var'};
M_.endo_names_tex(29) = {'mu\_var'};
M_.endo_names_long(29) = {'mu_var'};
M_.endo_names(30) = {'mu_star'};
M_.endo_names_tex(30) = {'mu\_star'};
M_.endo_names_long(30) = {'mu_star'};
M_.endo_names(31) = {'gz'};
M_.endo_names_tex(31) = {'gz'};
M_.endo_names_long(31) = {'gz'};
M_.endo_partitions = struct();
M_.param_names = cell(15,1);
M_.param_names_tex = cell(15,1);
M_.param_names_long = cell(15,1);
M_.param_names(1) = {'omega'};
M_.param_names_tex(1) = {'omega'};
M_.param_names_long(1) = {'omega'};
M_.param_names(2) = {'rho'};
M_.param_names_tex(2) = {'rho'};
M_.param_names_long(2) = {'rho'};
M_.param_names(3) = {'gamma'};
M_.param_names_tex(3) = {'gamma'};
M_.param_names_long(3) = {'gamma'};
M_.param_names(4) = {'epsilon'};
M_.param_names_tex(4) = {'epsilon'};
M_.param_names_long(4) = {'epsilon'};
M_.param_names(5) = {'delta'};
M_.param_names_tex(5) = {'delta'};
M_.param_names_long(5) = {'delta'};
M_.param_names(6) = {'beta'};
M_.param_names_tex(6) = {'beta'};
M_.param_names_long(6) = {'beta'};
M_.param_names(7) = {'alpha'};
M_.param_names_tex(7) = {'alpha'};
M_.param_names_long(7) = {'alpha'};
M_.param_names(8) = {'theta_h'};
M_.param_names_tex(8) = {'theta\_h'};
M_.param_names_long(8) = {'theta_h'};
M_.param_names(9) = {'theta_f'};
M_.param_names_tex(9) = {'theta\_f'};
M_.param_names_long(9) = {'theta_f'};
M_.param_names(10) = {'omega_star'};
M_.param_names_tex(10) = {'omega\_star'};
M_.param_names_long(10) = {'omega_star'};
M_.param_names(11) = {'rho_mu'};
M_.param_names_tex(11) = {'rho\_mu'};
M_.param_names_long(11) = {'rho_mu'};
M_.param_names(12) = {'rho_mu_star'};
M_.param_names_tex(12) = {'rho\_mu\_star'};
M_.param_names_long(12) = {'rho_mu_star'};
M_.param_names(13) = {'rho_nu'};
M_.param_names_tex(13) = {'rho\_nu'};
M_.param_names_long(13) = {'rho_nu'};
M_.param_names(14) = {'rho_nu_star'};
M_.param_names_tex(14) = {'rho\_nu\_star'};
M_.param_names_long(14) = {'rho_nu_star'};
M_.param_names(15) = {'rho_gz'};
M_.param_names_tex(15) = {'rho\_gz'};
M_.param_names_long(15) = {'rho_gz'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 5;
M_.endo_nbr = 31;
M_.param_nbr = 15;
M_.orig_endo_nbr = 31;
M_.aux_vars = [];
M_.Sigma_e = zeros(5, 5);
M_.Correlation_matrix = eye(5, 5);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = true;
M_.det_shocks = [];
options_.linear = false;
options_.block = false;
options_.bytecode = false;
options_.use_dll = false;
options_.linear_decomposition = false;
M_.orig_eq_nbr = 31;
M_.eq_nbr = 31;
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
 1 13 44;
 2 14 45;
 3 15 0;
 4 16 0;
 0 17 0;
 0 18 0;
 0 19 0;
 0 20 0;
 0 21 0;
 0 22 0;
 5 23 0;
 6 24 0;
 0 25 0;
 0 26 0;
 0 27 0;
 0 28 0;
 0 29 0;
 7 30 0;
 0 31 0;
 0 32 0;
 0 33 46;
 0 34 47;
 0 35 0;
 0 36 0;
 0 37 48;
 0 38 0;
 8 39 0;
 9 40 0;
 10 41 0;
 11 42 0;
 12 43 49;]';
M_.nstatic = 16;
M_.nfwrd   = 3;
M_.npred   = 9;
M_.nboth   = 3;
M_.nsfwrd   = 6;
M_.nspred   = 12;
M_.ndynamic   = 15;
M_.dynamic_tmp_nbr = [35; 16; 0; 0; ];
M_.model_local_variables_dynamic_tt_idxs = {
};
M_.equations_tags = {
  1 , 'name' , '1' ;
  2 , 'name' , '2' ;
  3 , 'name' , '3' ;
  4 , 'name' , '4' ;
  5 , 'name' , '5' ;
  6 , 'name' , '6' ;
  7 , 'name' , '7' ;
  8 , 'name' , '8' ;
  9 , 'name' , '9' ;
  10 , 'name' , '10' ;
  11 , 'name' , '11' ;
  12 , 'name' , '12' ;
  13 , 'name' , '13' ;
  14 , 'name' , '14' ;
  15 , 'name' , '15' ;
  16 , 'name' , '16' ;
  17 , 'name' , '17' ;
  18 , 'name' , '18' ;
  19 , 'name' , '19' ;
  20 , 'name' , '20' ;
  21 , 'name' , '21' ;
  22 , 'name' , '22' ;
  23 , 'name' , '23' ;
  24 , 'name' , '24' ;
  25 , 'name' , '25' ;
  26 , 'name' , 'b' ;
  27 , 'name' , 'mu_var' ;
  28 , 'name' , 'mu_star' ;
  29 , 'name' , 'nu' ;
  30 , 'name' , 'nu_star' ;
  31 , 'name' , 'gz' ;
};
M_.mapping.c.eqidx = [3 17 18 23 24 25 ];
M_.mapping.c_star.eqidx = [4 19 20 24 ];
M_.mapping.I.eqidx = [3 11 21 ];
M_.mapping.I_star.eqidx = [4 12 22 ];
M_.mapping.y.eqidx = [1 9 13 14 21 ];
M_.mapping.y_star.eqidx = [2 10 15 16 22 ];
M_.mapping.a.eqidx = [1 3 5 6 ];
M_.mapping.a_star.eqidx = [2 4 7 8 ];
M_.mapping.x.eqidx = [1 4 7 8 ];
M_.mapping.x_star.eqidx = [2 3 5 6 ];
M_.mapping.k.eqidx = [9 11 13 ];
M_.mapping.k_star.eqidx = [10 12 15 ];
M_.mapping.l.eqidx = [9 14 18 21 25 ];
M_.mapping.l_star.eqidx = [10 16 20 22 ];
M_.mapping.d.eqidx = [21 25 ];
M_.mapping.d_star.eqidx = [22 25 ];
M_.mapping.int.eqidx = [23 25 ];
M_.mapping.s.eqidx = [6 8 24 25 ];
M_.mapping.p_y.eqidx = [5 8 13 14 21 ];
M_.mapping.py_star.eqidx = [6 7 15 16 22 ];
M_.mapping.r.eqidx = [13 17 ];
M_.mapping.r_star.eqidx = [15 19 ];
M_.mapping.w.eqidx = [14 18 21 25 ];
M_.mapping.w_star.eqidx = [16 20 22 ];
M_.mapping.b.eqidx = [25 26 ];
M_.mapping.b_star.eqidx = [26 ];
M_.mapping.nu.eqidx = [9 29 ];
M_.mapping.nu_star.eqidx = [10 30 ];
M_.mapping.mu_var.eqidx = [13 14 27 ];
M_.mapping.mu_star.eqidx = [15 16 28 ];
M_.mapping.gz.eqidx = [11 12 17 19 23 24 25 31 ];
M_.mapping.eps_nu.eqidx = [29 ];
M_.mapping.eps_nu_star.eqidx = [30 ];
M_.mapping.eps_mu_var.eqidx = [27 ];
M_.mapping.eps_mu_star.eqidx = [28 ];
M_.mapping.eps_gz.eqidx = [31 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [1 2 3 4 11 12 18 27 28 29 30 31 ];
M_.exo_names_orig_ord = [1:5];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(31, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(5, 1);
M_.params = NaN(15, 1);
M_.endo_trends = struct('deflator', cell(31, 1), 'log_deflator', cell(31, 1), 'growth_factor', cell(31, 1), 'log_growth_factor', cell(31, 1));
M_.NNZDerivatives = [128; -1; -1; ];
M_.static_tmp_nbr = [22; 12; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
M_.params(1) = 0.6;
omega = M_.params(1);
M_.params(10) = 0.6;
omega_star = M_.params(10);
M_.params(2) = 0.7;
rho = M_.params(2);
M_.params(3) = 0.8;
gamma = M_.params(3);
M_.params(4) = 2;
epsilon = M_.params(4);
M_.params(5) = 0.025;
delta = M_.params(5);
M_.params(6) = 0.99;
beta = M_.params(6);
M_.params(7) = 0.36;
alpha = M_.params(7);
M_.params(8) = 0.8;
theta_h = M_.params(8);
M_.params(9) = 0.2;
theta_f = M_.params(9);
M_.params(11) = 0.8;
rho_mu = M_.params(11);
M_.params(12) = 0.8;
rho_mu_star = M_.params(12);
M_.params(13) = 0.8;
rho_nu = M_.params(13);
M_.params(14) = 0.8;
rho_nu_star = M_.params(14);
M_.params(15) = 0.6;
rho_gz = M_.params(15);
%
% INITVAL instructions
%
options_.initval_file = false;
oo_.steady_state(1) = (-0.0411436728669302);
oo_.steady_state(2) = (-0.0463720030407756);
oo_.steady_state(3) = (-1.11328217415105);
oo_.steady_state(4) = (-1.10372274857364);
oo_.steady_state(5) = 0.877603671242149;
oo_.steady_state(6) = 0.889585261111729;
oo_.steady_state(7) = 0.650072478422585;
oo_.steady_state(8) = 0.656709678438462;
oo_.steady_state(9) = (-0.714473691895456);
oo_.steady_state(10) = (-0.681844871964847);
oo_.steady_state(11) = 2.57559727992431;
oo_.steady_state(12) = 2.58515670550191;
oo_.steady_state(13) = (-0.0775177336415799);
oo_.steady_state(14) = (-0.0641736763577582);
oo_.steady_state(15) = (-2.01952256992848);
oo_.steady_state(16) = (-2.00996314434841);
oo_.steady_state(25) = (-0.00168771908637821);
oo_.steady_state(26) = 0.00168771908637821;
oo_.steady_state(17) = 0.0100503358554365;
oo_.steady_state(18) = (-0.00346773870043043);
oo_.steady_state(19) = (-0.629880514809797);
oo_.steady_state(20) = (-0.632302679101342);
oo_.steady_state(21) = (-3.34952537103881);
oo_.steady_state(22) = (-3.34952537103837);
oo_.steady_state(23) = (-0.121046212554642);
oo_.steady_state(24) = (-0.124830844260425);
oo_.steady_state(27) = 6.08178574243561E-15;
oo_.steady_state(28) = 6.1406289439319E-15;
oo_.steady_state(29) = 8.05211453497974E-14;
oo_.steady_state(30) = 8.11207641971565E-14;
oo_.steady_state(31) = 9.67527314022342E-13;
if M_.exo_nbr > 0
	oo_.exo_simul = ones(M_.maximum_lag,1)*oo_.exo_steady_state';
end
if M_.exo_det_nbr > 0
	oo_.exo_det_simul = ones(M_.maximum_lag,1)*oo_.exo_det_steady_state';
end
options_.solve_algo = 2;
options_.steady.maxit = 100000;
steady;
oo_.dr.eigval = check(M_,options_,oo_);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(5, 5) = 1;
options_.irf = 80;
options_.order = 1;
var_list_ = {};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);
save('bkk_v7_bo_withbonds_shocks_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('bkk_v7_bo_withbonds_shocks_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('bkk_v7_bo_withbonds_shocks_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('bkk_v7_bo_withbonds_shocks_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('bkk_v7_bo_withbonds_shocks_results.mat', 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save('bkk_v7_bo_withbonds_shocks_results.mat', 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save('bkk_v7_bo_withbonds_shocks_results.mat', 'oo_recursive_', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc(tic0)) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
