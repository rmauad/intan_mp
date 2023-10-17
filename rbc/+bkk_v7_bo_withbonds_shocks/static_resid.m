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
    T = bkk_v7_bo_withbonds_shocks.static_resid_tt(T, y, x, params);
end
residual = zeros(31, 1);
lhs = exp(y(7))+exp(y(9));
rhs = exp(y(5));
residual(1) = lhs - rhs;
lhs = exp(y(8))+exp(y(10));
rhs = exp(y(6));
residual(2) = lhs - rhs;
lhs = exp(y(1))+exp(y(3));
rhs = T(3);
residual(3) = lhs - rhs;
lhs = exp(y(2))+exp(y(4));
rhs = T(5);
residual(4) = lhs - rhs;
lhs = exp(y(19));
rhs = params(1)*T(7)^T(8);
residual(5) = lhs - rhs;
lhs = exp(y(18))*exp(y(20));
rhs = (1-params(1))*(T(3)/exp(y(10)))^(1-params(2));
residual(6) = lhs - rhs;
lhs = exp(y(20));
rhs = params(10)*(T(5)/exp(y(8)))^(1-params(2));
residual(7) = lhs - rhs;
lhs = exp(y(19));
rhs = T(11);
residual(8) = lhs - rhs;
lhs = exp(y(5));
rhs = T(12)*T(13);
residual(9) = lhs - rhs;
lhs = exp(y(6));
rhs = T(14)*T(15);
residual(10) = lhs - rhs;
lhs = exp(y(11))*exp(y(31));
rhs = exp(y(3))+exp(y(11))*(1-params(5));
residual(11) = lhs - rhs;
lhs = exp(y(12))*exp(y(31));
rhs = exp(y(4))+exp(y(12))*(1-params(5));
residual(12) = lhs - rhs;
lhs = exp(y(21));
rhs = T(16);
residual(13) = lhs - rhs;
lhs = exp(y(23));
rhs = T(17);
residual(14) = lhs - rhs;
lhs = exp(y(22));
rhs = T(18);
residual(15) = lhs - rhs;
lhs = exp(y(24));
rhs = T(19);
residual(16) = lhs - rhs;
lhs = 1;
rhs = params(6)*exp(y(31)*(-params(3)))*(1+exp(y(21))-params(5));
residual(17) = lhs - rhs;
lhs = T(20);
rhs = exp(y(13))^T(21);
residual(18) = lhs - rhs;
lhs = 1;
rhs = params(6)*exp(y(31)*(-params(3)))*(1+exp(y(22))-params(5));
residual(19) = lhs - rhs;
lhs = T(22);
rhs = exp(y(14))^T(21);
residual(20) = lhs - rhs;
lhs = exp(y(15));
rhs = exp(y(5))*exp(y(19))-exp(y(13))*exp(y(23))-exp(y(3));
residual(21) = lhs - rhs;
lhs = exp(y(16));
rhs = exp(y(6))*exp(y(20))-exp(y(14))*exp(y(24))-exp(y(4));
residual(22) = lhs - rhs;
lhs = (-y(17));
rhs = log(params(6))-y(31)*params(3);
residual(23) = lhs - rhs;
lhs = exp(y(31)*(-params(3)));
rhs = exp(y(31)*(-params(3)));
residual(24) = lhs - rhs;
lhs = exp(y(13))*exp(y(23))+exp(y(15))*params(8)+exp(y(16))*exp(y(18))*params(9)+y(25)*exp((-y(31)));
rhs = exp(y(1))+y(25)*exp((-y(17)));
residual(25) = lhs - rhs;
lhs = y(25);
rhs = (-y(26));
residual(26) = lhs - rhs;
lhs = y(29);
rhs = y(29)*params(11)+x(3);
residual(27) = lhs - rhs;
lhs = y(30);
rhs = y(30)*params(12)+x(4);
residual(28) = lhs - rhs;
lhs = y(27);
rhs = y(27)*params(13)+x(1);
residual(29) = lhs - rhs;
lhs = y(28);
rhs = y(28)*params(14)+x(2);
residual(30) = lhs - rhs;
lhs = y(31);
rhs = y(31)*params(15)-x(5);
residual(31) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
