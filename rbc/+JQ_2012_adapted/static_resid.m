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
    T = JQ_2012_adapted.static_resid_tt(T, y, x, params);
end
residual = zeros(10, 1);
residual(1) = y(3)/T(1)-params(3)/(1-y(2));
lhs = T(2);
rhs = T(2)*params(2)*(y(5)-params(5))/(1-params(5));
residual(2) = lhs - rhs;
residual(3) = y(3)*y(2)+y(7)-y(7)/y(5)+y(6)-y(1);
lhs = (1-params(1))*y(9)*T(3)*T(4);
rhs = y(3)*1/(1-y(8)*(1+2*params(6)*(y(6)-(y(6)))));
residual(4) = lhs - rhs;
lhs = params(2)*(1-params(4)+T(6)*T(7))+(1+2*params(6)*(y(6)-(y(6))))*y(8)*y(10);
rhs = 1;
residual(5) = lhs - rhs;
lhs = params(2)*y(5)+(1+2*params(6)*(y(6)-(y(6))))*y(8)*y(10)*T(8);
rhs = 1;
residual(6) = lhs - rhs;
residual(7) = y(7)/y(5)+y(4)*(1-params(4))+T(7)*y(9)*T(3)-y(3)*y(2)-y(7)-y(4)-(y(6)+params(6)*(y(6)-(y(6)))^2);
lhs = y(10)*(y(4)-y(7)*(1-params(5))/(y(5)-params(5)));
rhs = T(7)*y(9)*T(3);
residual(8) = lhs - rhs;
lhs = log(y(9)/(y(9)));
rhs = log(y(9)/(y(9)))*params(10)+x(1);
residual(9) = lhs - rhs;
lhs = log(y(10)/(y(10)));
rhs = log(y(10)/(y(10)))*params(11)+x(2);
residual(10) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
