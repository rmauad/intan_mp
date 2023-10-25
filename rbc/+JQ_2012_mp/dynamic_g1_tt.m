function T = dynamic_g1_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_g1_tt(T, y, x, params, steady_state, it_)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double  vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double  vector of endogenous variables in the order stored
%                                                    in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double  matrix of exogenous variables (in declaration order)
%                                                    for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double  vector of steady state values
%   params        [M_.param_nbr by 1]        double  vector of parameter values in declaration order
%   it_           scalar                     double  time period for exogenous variables for which
%                                                    to evaluate the model
%
% Output:
%   T           [#temp variables by 1]       double  vector of temporary terms
%

assert(length(T) >= 21);

T = JQ_2012_mp.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(17) = getPowerDeriv(y(7)/y(20),params(7),1);
T(18) = getPowerDeriv(y(20),(-params(7)),1);
T(19) = y(17)*T(6)*getPowerDeriv(y(8),1-params(1),1);
T(20) = getPowerDeriv(y(1),params(1),1);
T(21) = (-(2*params(6)*(1+2*params(6)*(y(14)-(steady_state(8))))))/((1+2*params(6)*(y(22)-(steady_state(8))))*(1+2*params(6)*(y(22)-(steady_state(8)))));

end
