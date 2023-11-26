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
    T = JQ_2012_mp_v2.static_resid_tt(T, y, x, params);
end
residual = zeros(14, 1);
residual(1) = y(3)/T(2)-params(3)/(1-y(2));
lhs = T(3)/y(6);
rhs = params(2)*(y(8)+y(14))*T(3)/(1+y(6));
residual(2) = lhs - rhs;
residual(3) = y(8)+y(3)*y(2)+y(6)*y(9)-y(7);
residual(4) = y(1)-y(7)-y(9);
lhs = (1-params(1))*y(11)*T(4)*T(5);
rhs = y(3)*1/(1-y(10)*(1+2*params(6)*(y(8)-(y(8)))));
residual(5) = lhs - rhs;
lhs = params(2)*(1-params(4)+T(7)*T(8))+(1+2*params(6)*(y(8)-(y(8))))*y(10)*y(12);
rhs = 1;
residual(6) = lhs - rhs;
lhs = params(2)*y(5)+(1+2*params(6)*(y(8)-(y(8))))*y(10)*y(12)*T(9);
rhs = 1;
residual(7) = lhs - rhs;
residual(8) = y(4)*(1-params(4))+T(8)*y(11)*T(4)-y(3)*y(2)-y(9)+y(9)/y(5)-y(4)-(y(8)+params(6)*(y(8)-(y(8)))^2);
lhs = y(12)*(y(4)-y(9)*(1-params(5))/(y(5)-params(5)));
rhs = T(8)*y(11)*T(4);
residual(9) = lhs - rhs;
lhs = log(y(11)/(y(11)));
rhs = log(y(11)/(y(11)))*params(10)+x(1);
residual(10) = lhs - rhs;
lhs = log(y(12)/(y(12)));
rhs = log(y(12)/(y(12)))*params(11)+x(2);
residual(11) = lhs - rhs;
lhs = y(5)*(y(9)+y(7)*(y(13)-1));
rhs = y(6)*y(9);
residual(12) = lhs - rhs;
lhs = y(9)+y(7)*(y(13)-1);
rhs = y(3)*y(2);
residual(13) = lhs - rhs;
lhs = y(13);
rhs = y(13)*params(12)+x(3);
residual(14) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
