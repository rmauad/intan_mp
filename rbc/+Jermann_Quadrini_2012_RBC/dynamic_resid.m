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
    T = Jermann_Quadrini_2012_RBC.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(22, 1);
residual(1) = y(8)/T(1)-params(3)/(1-y(7));
lhs = y(6)^(-params(7));
rhs = params(2)*(y(10)-params(5))/(1-params(5))*T(2);
residual(2) = lhs - rhs;
residual(3) = y(8)*y(7)+y(3)-y(13)/y(10)+y(12)-y(6);
lhs = (1-params(1))*y(16)*T(3)*T(4);
rhs = y(8)*1/(1-y(14)*(1+2*params(6)*(y(12)-(steady_state(7)))));
residual(4) = lhs - rhs;
lhs = params(2)*T(5)*T(6)*T(10)+(1+2*params(6)*(y(12)-(steady_state(7))))*y(14)*y(17);
rhs = 1;
residual(5) = lhs - rhs;
lhs = T(6)*T(5)*params(2)*y(10)+(1+2*params(6)*(y(12)-(steady_state(7))))*y(14)*y(17)*T(11);
rhs = 1;
residual(6) = lhs - rhs;
residual(7) = y(13)/y(10)+y(1)*(1-params(4))+T(13)-y(8)*y(7)-y(3)-y(9)-(y(12)+params(6)*(y(12)-(steady_state(7)))^2);
lhs = y(17)*(y(9)-y(13)*(1-params(5))/(y(10)-params(5)));
rhs = T(13);
residual(8) = lhs - rhs;
lhs = log(y(16)/(steady_state(11)));
rhs = params(11)*log(y(4)/(steady_state(11)))+params(12)*log(y(5)/(steady_state(12)))+x(it_, 1);
residual(9) = lhs - rhs;
lhs = log(y(17)/(steady_state(12)));
rhs = log(y(4)/(steady_state(11)))*params(13)+log(y(5)/(steady_state(12)))*params(14)+x(it_, 2);
residual(10) = lhs - rhs;
lhs = y(18);
rhs = T(13);
residual(11) = lhs - rhs;
lhs = y(19);
rhs = y(9)-y(1)*(1-params(4));
residual(12) = lhs - rhs;
lhs = y(15);
rhs = y(12)+y(6)*params(2)/y(28)*y(32);
residual(13) = lhs - rhs;
lhs = y(11);
rhs = (y(10)-params(5))/(1-params(5))-1;
residual(14) = lhs - rhs;
lhs = y(20);
rhs = log(y(18))-log((steady_state(13)));
residual(15) = lhs - rhs;
lhs = y(21);
rhs = log(y(6))-log((steady_state(1)));
residual(16) = lhs - rhs;
lhs = y(22);
rhs = log(y(19))-log((steady_state(14)));
residual(17) = lhs - rhs;
lhs = y(23);
rhs = log(y(7))-log((steady_state(2)));
residual(18) = lhs - rhs;
lhs = y(26);
rhs = log(y(14))-log((steady_state(9)));
residual(19) = lhs - rhs;
lhs = y(24);
rhs = T(14)/y(18);
residual(20) = lhs - rhs;
lhs = y(25);
rhs = y(12)/y(18);
residual(21) = lhs - rhs;
lhs = y(27);
rhs = log(T(15))-log((T(15)));
residual(22) = lhs - rhs;

end
