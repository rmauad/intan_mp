function T = static_g1_tt(T, y, x, params)
% function T = static_g1_tt(T, y, x, params)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%
% Output:
%   T         [#temp variables by 1]  double   vector of temporary terms
%

assert(length(T) >= 34);

T = bkk_v7_bo_withbonds_shocks.static_resid_tt(T, y, x, params);

T(23) = getPowerDeriv(T(1),T(2),1);
T(24) = params(1)*exp(y(7))*getPowerDeriv(exp(y(7)),params(2),1)*T(23);
T(25) = getPowerDeriv(T(6),params(2),1);
T(26) = getPowerDeriv(T(7),T(8),1);
T(27) = getPowerDeriv(T(3)/exp(y(10)),1-params(2),1);
T(28) = getPowerDeriv(T(4),T(2),1);
T(29) = params(10)*exp(y(8))*getPowerDeriv(exp(y(8)),params(2),1)*T(28);
T(30) = getPowerDeriv(T(5)/exp(y(8)),1-params(2),1);
T(31) = getPowerDeriv(T(9),params(2),1);
T(32) = getPowerDeriv(T(10),T(8),1);
T(33) = T(28)*(1-params(10))*exp(y(9))*getPowerDeriv(exp(y(9)),params(2),1);
T(34) = T(23)*(1-params(1))*exp(y(10))*getPowerDeriv(exp(y(10)),params(2),1);

end
