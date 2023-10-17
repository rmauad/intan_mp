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

assert(length(T) >= 22);

T(1) = params(1)*exp(y(7))^params(2)+(1-params(1))*exp(y(10))^params(2);
T(2) = 1/params(2);
T(3) = T(1)^T(2);
T(4) = params(10)*exp(y(8))^params(2)+(1-params(10))*exp(y(9))^params(2);
T(5) = T(4)^T(2);
T(6) = exp(y(10))/exp(y(7));
T(7) = params(1)+(1-params(1))*T(6)^params(2);
T(8) = (1-params(2))/params(2);
T(9) = exp(y(8))/exp(y(9));
T(10) = 1-params(10)+params(10)*T(9)^params(2);
T(11) = exp(y(18))*(1-params(10))*T(10)^T(8);
T(12) = exp(y(27))*exp(y(11))^params(7);
T(13) = exp(y(13))^(1-params(7));
T(14) = exp(y(28))*exp(y(12))^params(7);
T(15) = exp(y(14))^(1-params(7));
T(16) = params(7)/exp(y(29))*exp(y(5))*exp(y(19))/exp(y(11));
T(17) = (1-params(7))/exp(y(29))*exp(y(5))*exp(y(19))/exp(y(13));
T(18) = params(7)/exp(y(30))*exp(y(6))*exp(y(20))/exp(y(12));
T(19) = (1-params(7))/exp(y(30))*exp(y(6))*exp(y(20))/exp(y(14));
T(20) = exp(y(23))*exp(y(1))^(-params(3));
T(21) = 1/params(4);
T(22) = exp(y(24))*exp(y(2))^(-params(3));

end
