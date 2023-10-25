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

assert(length(T) >= 16);

T = Jermann_Quadrini_2012_RBC.static_resid_tt(T, y, x, params);

T(12) = getPowerDeriv(y(1),(-params(7)),1);
T(13) = getPowerDeriv(y(2),1-params(1),1);
T(14) = getPowerDeriv(y(4),params(1),1);
T(15) = ((y(11))-y(11))/((y(11))*(y(11)))/(y(11)/(y(11)));
T(16) = ((y(12))-y(12))/((y(12))*(y(12)))/(y(12)/(y(12)));

end
