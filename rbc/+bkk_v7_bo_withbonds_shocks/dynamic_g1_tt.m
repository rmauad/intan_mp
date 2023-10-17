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

assert(length(T) >= 51);

T = bkk_v7_bo_withbonds_shocks.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(36) = getPowerDeriv(T(29),(-params(3)),1);
T(37) = getPowerDeriv(T(20),(-params(3)),1);
T(38) = getPowerDeriv(T(31),(-params(3)),1);
T(39) = getPowerDeriv(T(25),(-params(3)),1);
T(40) = getPowerDeriv(T(1),T(2),1);
T(41) = params(1)*exp(y(19))*getPowerDeriv(exp(y(19)),params(2),1)*T(40);
T(42) = getPowerDeriv(T(6),params(2),1);
T(43) = getPowerDeriv(T(7),T(8),1);
T(44) = getPowerDeriv(T(3)/exp(y(22)),1-params(2),1);
T(45) = getPowerDeriv(T(4),T(2),1);
T(46) = params(10)*exp(y(20))*getPowerDeriv(exp(y(20)),params(2),1)*T(45);
T(47) = getPowerDeriv(T(5)/exp(y(20)),1-params(2),1);
T(48) = getPowerDeriv(T(9),params(2),1);
T(49) = getPowerDeriv(T(10),T(8),1);
T(50) = T(45)*(1-params(10))*exp(y(21))*getPowerDeriv(exp(y(21)),params(2),1);
T(51) = T(40)*(1-params(1))*exp(y(22))*getPowerDeriv(exp(y(22)),params(2),1);

end
