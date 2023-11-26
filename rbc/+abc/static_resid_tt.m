function T = static_resid_tt(T, y, x, params)
% function T = static_resid_tt(T, y, x, params)
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

assert(length(T) >= 6);

T(1) = y(3)*y(3)*params(1)*y(4)/y(4);
T(2) = y(7)^params(4);
T(3) = y(9)^(-params(4));
T(4) = y(7)^(params(4)-1);
T(5) = params(4)*y(13)*T(4);
T(6) = y(9)^(1-params(4));

end
