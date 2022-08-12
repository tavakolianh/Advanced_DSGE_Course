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
M_.fname = 'NK_nonlinear';
M_.dynare_version = '5.2';
oo_.dynare_version = '5.2';
options_.dynare_version = '5.2';
%
% Some global variables initialization
%
global_initialization;
M_.exo_names = cell(2,1);
M_.exo_names_tex = cell(2,1);
M_.exo_names_long = cell(2,1);
M_.exo_names(1) = {'nu'};
M_.exo_names_tex(1) = {'\nu'};
M_.exo_names_long(1) = {'Monetary shock'};
M_.exo_names(2) = {'eps_z'};
M_.exo_names_tex(2) = {'\varepsilon^{z}'};
M_.exo_names_long(2) = {'Technology shock'};
M_.endo_names = cell(13,1);
M_.endo_names_tex = cell(13,1);
M_.endo_names_long = cell(13,1);
M_.endo_names(1) = {'c'};
M_.endo_names_tex(1) = {'C'};
M_.endo_names_long(1) = {'Consumption'};
M_.endo_names(2) = {'ii'};
M_.endo_names_tex(2) = {'i'};
M_.endo_names_long(2) = {'Interest Rate'};
M_.endo_names(3) = {'pi'};
M_.endo_names_tex(3) = {'\pi'};
M_.endo_names_long(3) = {'Inflation'};
M_.endo_names(4) = {'m'};
M_.endo_names_tex(4) = {'m'};
M_.endo_names_long(4) = {'Real balances'};
M_.endo_names(5) = {'N'};
M_.endo_names_tex(5) = {'N'};
M_.endo_names_long(5) = {'Labor'};
M_.endo_names(6) = {'phi'};
M_.endo_names_tex(6) = {'\varphi'};
M_.endo_names_long(6) = {'Marginal cost'};
M_.endo_names(7) = {'Delta'};
M_.endo_names_tex(7) = {'\Delta'};
M_.endo_names_long(7) = {'Price Dispersion'};
M_.endo_names(8) = {'w'};
M_.endo_names_tex(8) = {'w'};
M_.endo_names_long(8) = {'Wage'};
M_.endo_names(9) = {'s'};
M_.endo_names_tex(9) = {'s'};
M_.endo_names_long(9) = {'Optimal price'};
M_.endo_names(10) = {'g1'};
M_.endo_names_tex(10) = {'g1'};
M_.endo_names_long(10) = {'NKPC Var1'};
M_.endo_names(11) = {'g2'};
M_.endo_names_tex(11) = {'g2'};
M_.endo_names_long(11) = {'NKPC Var2'};
M_.endo_names(12) = {'z'};
M_.endo_names_tex(12) = {'z'};
M_.endo_names_long(12) = {'Technology shock'};
M_.endo_names(13) = {'m_dot'};
M_.endo_names_tex(13) = {'\dot{M}'};
M_.endo_names_long(13) = {'Nominal money growth'};
M_.endo_partitions = struct();
M_.param_names = cell(12,1);
M_.param_names_tex = cell(12,1);
M_.param_names_long = cell(12,1);
M_.param_names(1) = {'siggma'};
M_.param_names_tex(1) = {'\sigma'};
M_.param_names_long(1) = {'Inverse of intertemporal elasticity'};
M_.param_names(2) = {'betta'};
M_.param_names_tex(2) = {'\beta'};
M_.param_names_long(2) = {'Intertemporal discount factor'};
M_.param_names(3) = {'gama'};
M_.param_names_tex(3) = {'\gamma'};
M_.param_names_long(3) = {'Real balances parameter'};
M_.param_names(4) = {'chi'};
M_.param_names_tex(4) = {'\chi'};
M_.param_names_long(4) = {'Labor parameter'};
M_.param_names(5) = {'b'};
M_.param_names_tex(5) = {'b'};
M_.param_names_long(5) = {'Inverse of interest elasticity'};
M_.param_names(6) = {'etta'};
M_.param_names_tex(6) = {'\eta'};
M_.param_names_long(6) = {'Inverse of Fisch elasticity'};
M_.param_names(7) = {'thetta'};
M_.param_names_tex(7) = {'\theta'};
M_.param_names_long(7) = {'Elasticity of substitution'};
M_.param_names(8) = {'omegga'};
M_.param_names_tex(8) = {'\omega'};
M_.param_names_long(8) = {'Calvo price setting parameter'};
M_.param_names(9) = {'mu'};
M_.param_names_tex(9) = {'\mu'};
M_.param_names_long(9) = {'mark-up'};
M_.param_names(10) = {'rho_m'};
M_.param_names_tex(10) = {'\rho_{m}'};
M_.param_names_long(10) = {'Monetary policy AR'};
M_.param_names(11) = {'delta_pi'};
M_.param_names_tex(11) = {'\delta_{\pi}'};
M_.param_names_long(11) = {'Taylor rule parameter'};
M_.param_names(12) = {'rho_z'};
M_.param_names_tex(12) = {'\rho_z'};
M_.param_names_long(12) = {'Technology AR'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 2;
M_.endo_nbr = 13;
M_.param_nbr = 12;
M_.orig_endo_nbr = 13;
M_.aux_vars = [];
M_ = setup_solvers(M_);
M_.Sigma_e = zeros(2, 2);
M_.Correlation_matrix = eye(2, 2);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = true;
M_.det_shocks = [];
M_.surprise_shocks = [];
M_.heteroskedastic_shocks.Qvalue_orig = [];
M_.heteroskedastic_shocks.Qscale_orig = [];
options_.linear = false;
options_.block = false;
options_.bytecode = false;
options_.use_dll = false;
M_.nonzero_hessian_eqs = [1 2 3 4 5 6 7 8 9 10 11 12 13];
M_.hessian_eq_zero = isempty(M_.nonzero_hessian_eqs);
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
 0 5 18;
 0 6 0;
 0 7 19;
 1 8 0;
 0 9 0;
 0 10 0;
 2 11 0;
 0 12 0;
 0 13 0;
 0 14 20;
 0 15 21;
 3 16 0;
 4 17 0;]';
M_.nstatic = 5;
M_.nfwrd   = 4;
M_.npred   = 4;
M_.nboth   = 0;
M_.nsfwrd   = 4;
M_.nspred   = 4;
M_.ndynamic   = 8;
M_.dynamic_tmp_nbr = [8; 8; 2; 0; ];
M_.model_local_variables_dynamic_tt_idxs = {
};
M_.equations_tags = {
  1 , 'name' , '1' ;
  2 , 'name' , '2' ;
  3 , 'name' , '3' ;
  4 , 'name' , 'phi' ;
  5 , 'name' , 'Delta' ;
  6 , 'name' , 'c' ;
  7 , 'name' , 's' ;
  8 , 'name' , '8' ;
  9 , 'name' , 'g1' ;
  10 , 'name' , 'g2' ;
  11 , 'name' , 'm_dot' ;
  12 , 'name' , '12' ;
  13 , 'name' , '13' ;
};
M_.mapping.c.eqidx = [1 2 3 6 9 10 ];
M_.mapping.ii.eqidx = [1 2 ];
M_.mapping.pi.eqidx = [1 5 8 9 10 11 ];
M_.mapping.m.eqidx = [2 11 ];
M_.mapping.N.eqidx = [3 6 ];
M_.mapping.phi.eqidx = [4 9 ];
M_.mapping.Delta.eqidx = [5 6 ];
M_.mapping.w.eqidx = [3 4 ];
M_.mapping.s.eqidx = [5 7 8 ];
M_.mapping.g1.eqidx = [7 9 ];
M_.mapping.g2.eqidx = [7 10 ];
M_.mapping.z.eqidx = [4 6 13 ];
M_.mapping.m_dot.eqidx = [11 12 ];
M_.mapping.nu.eqidx = [12 ];
M_.mapping.eps_z.eqidx = [13 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [4 7 12 13 ];
M_.exo_names_orig_ord = [1:2];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(13, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(2, 1);
M_.params = NaN(12, 1);
M_.endo_trends = struct('deflator', cell(13, 1), 'log_deflator', cell(13, 1), 'growth_factor', cell(13, 1), 'log_growth_factor', cell(13, 1));
M_.NNZDerivatives = [45; 58; -1; ];
M_.static_tmp_nbr = [6; 4; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
M_.params(1) = 2.5;
siggma = M_.params(1);
M_.params(2) = 0.99;
betta = M_.params(2);
M_.params(3) = 0.01;
gama = M_.params(3);
M_.params(6) = 1.5;
etta = M_.params(6);
M_.params(8) = 0.6;
omegga = M_.params(8);
M_.params(10) = 0.6;
rho_m = M_.params(10);
M_.params(11) = 1.5;
delta_pi = M_.params(11);
M_.params(7) = 1.5;
thetta = M_.params(7);
M_.params(9) = M_.params(7)/(M_.params(7)-1);
mu = M_.params(9);
M_.params(4) = 1;
chi = M_.params(4);
M_.params(5) = 2;
b = M_.params(5);
M_.params(12) = 0.8;
rho_z = M_.params(12);
write_latex_parameter_table;
write_latex_definitions;
collect_latex_files;
steady;
oo_.dr.eigval = check(M_,options_,oo_);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = (0.01)^2;
M_.Sigma_e(2, 2) = (0.01)^2;
options_.irf = 30;
options_.order = 2;
options_.periods = 10000;
options_.graph_format = {'eps';'pdf'};
var_list_ = {};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'NK_nonlinear_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'NK_nonlinear_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'NK_nonlinear_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'NK_nonlinear_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'NK_nonlinear_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'NK_nonlinear_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'NK_nonlinear_results.mat'], 'oo_recursive_', '-append');
end
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
