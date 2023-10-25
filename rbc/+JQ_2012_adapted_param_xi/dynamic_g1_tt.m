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

assert(length(T) >= 17);

T = JQ_2012_adapted_param_xi.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(14) = getPowerDeriv(y(4)/y(13),params(7),1);
T(15) = y(12)*T(3)*getPowerDeriv(y(5),1-params(1),1);
T(16) = getPowerDeriv(y(1),params(1),1);
T(17) = (-(2*params(6)*(1+2*params(6)*(y(9)-(steady_state(6))))))/((1+2*params(6)*(y(15)-(steady_state(6))))*(1+2*params(6)*(y(15)-(steady_state(6)))));

end
