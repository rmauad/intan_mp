function residual = static_resid(T, y, x, params, T_flag)
% function residual = static_resid(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = abc.static_resid_tt(T, y, x, params);
end
residual = zeros(13, 1);
lhs = params(2)/y(1);
rhs = (-params(1))*y(3);
residual(1) = lhs - rhs;
lhs = 1/y(1);
rhs = (1+params(1)*y(2)-params(3))/y(1);
residual(2) = lhs - rhs;
lhs = y(10);
rhs = 1/T(1);
residual(3) = lhs - rhs;
lhs = y(4)*y(3);
rhs = y(5)-y(6);
residual(4) = lhs - rhs;
lhs = y(5)/y(4)+y(7);
rhs = y(1)*y(9)+y(2)*y(7)+y(7)*(1-params(3))+y(10)*y(6)/y(4);
residual(5) = lhs - rhs;
lhs = y(1)*y(11);
rhs = (1-params(4))*y(13)*T(2)*T(3);
residual(6) = lhs - rhs;
lhs = y(2);
rhs = T(5)*T(6);
residual(7) = lhs - rhs;
lhs = y(8);
rhs = T(6)*y(13)*T(2);
residual(8) = lhs - rhs;
lhs = y(11)*(y(6)+y(5)*(y(12)-1));
rhs = y(10)*y(6);
residual(9) = lhs - rhs;
lhs = y(6)+y(5)*(y(12)-1);
rhs = y(9)*y(1)*y(4);
residual(10) = lhs - rhs;
lhs = y(5);
rhs = y(5)*y(12);
residual(11) = lhs - rhs;
lhs = log(y(12));
rhs = log(y(12))*params(5)+x(1);
residual(12) = lhs - rhs;
lhs = log(y(13));
rhs = log(y(13))*params(6)+x(2);
residual(13) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
