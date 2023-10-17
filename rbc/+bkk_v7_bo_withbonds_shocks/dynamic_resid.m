function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
% function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = bkk_v7_bo_withbonds_shocks.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(31, 1);
lhs = exp(y(19))+exp(y(21));
rhs = exp(y(17));
residual(1) = lhs - rhs;
lhs = exp(y(20))+exp(y(22));
rhs = exp(y(18));
residual(2) = lhs - rhs;
lhs = exp(y(13))+exp(y(15));
rhs = T(3);
residual(3) = lhs - rhs;
lhs = exp(y(14))+exp(y(16));
rhs = T(5);
residual(4) = lhs - rhs;
lhs = exp(y(31));
rhs = params(1)*T(7)^T(8);
residual(5) = lhs - rhs;
lhs = exp(y(30))*exp(y(32));
rhs = (1-params(1))*(T(3)/exp(y(22)))^(1-params(2));
residual(6) = lhs - rhs;
lhs = exp(y(32));
rhs = params(10)*(T(5)/exp(y(20)))^(1-params(2));
residual(7) = lhs - rhs;
lhs = exp(y(31));
rhs = T(11);
residual(8) = lhs - rhs;
lhs = exp(y(17));
rhs = T(12)*T(13);
residual(9) = lhs - rhs;
lhs = exp(y(18));
rhs = T(14)*T(15);
residual(10) = lhs - rhs;
lhs = exp(y(23))*exp(y(43));
rhs = (1-params(5))*exp(y(5))+exp(y(3));
residual(11) = lhs - rhs;
lhs = exp(y(24))*exp(y(43));
rhs = (1-params(5))*exp(y(6))+exp(y(4));
residual(12) = lhs - rhs;
lhs = exp(y(33));
rhs = T(16);
residual(13) = lhs - rhs;
lhs = exp(y(35));
rhs = T(17);
residual(14) = lhs - rhs;
lhs = exp(y(34));
rhs = T(18);
residual(15) = lhs - rhs;
lhs = exp(y(36));
rhs = T(19);
residual(16) = lhs - rhs;
lhs = 1;
rhs = T(22)*(1+exp(y(46))-params(5));
residual(17) = lhs - rhs;
lhs = T(23);
rhs = exp(y(25))^T(24);
residual(18) = lhs - rhs;
lhs = 1;
rhs = T(27)*(1+exp(y(47))-params(5));
residual(19) = lhs - rhs;
lhs = T(28);
rhs = exp(y(26))^T(24);
residual(20) = lhs - rhs;
lhs = exp(y(27));
rhs = exp(y(17))*exp(y(31))-exp(y(25))*exp(y(35))-exp(y(15));
residual(21) = lhs - rhs;
lhs = exp(y(28));
rhs = exp(y(18))*exp(y(32))-exp(y(26))*exp(y(36))-exp(y(16));
residual(22) = lhs - rhs;
lhs = (-y(29));
rhs = log(params(6))+(-params(3))*(y(44)-y(13))-params(3)*y(49);
residual(23) = lhs - rhs;
lhs = T(30)*exp(y(43)*(-params(3)));
rhs = T(35);
residual(24) = lhs - rhs;
lhs = exp(y(25))*exp(y(35))+exp(y(27))*params(8)+exp(y(28))*exp(y(30))*params(9)+y(37)*exp((-y(43)));
rhs = exp(y(13))+exp((-y(29)))*y(48);
residual(25) = lhs - rhs;
lhs = y(37);
rhs = (-y(38));
residual(26) = lhs - rhs;
lhs = y(41);
rhs = params(11)*y(10)+x(it_, 3);
residual(27) = lhs - rhs;
lhs = y(42);
rhs = params(12)*y(11)+x(it_, 4);
residual(28) = lhs - rhs;
lhs = y(39);
rhs = params(13)*y(8)+x(it_, 1);
residual(29) = lhs - rhs;
lhs = y(40);
rhs = params(14)*y(9)+x(it_, 2);
residual(30) = lhs - rhs;
lhs = y(43);
rhs = params(15)*y(12)-x(it_, 5);
residual(31) = lhs - rhs;

end
