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
    T = JQ_2012_mp.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(13, 1);
residual(1) = y(9)/T(2)-params(3)/(1-y(8));
lhs = T(3)/(1+y(26));
rhs = (y(12)-params(5))/(1-params(5))*T(5);
residual(2) = lhs - rhs;
residual(3) = y(9)*y(8)+y(3)-y(15)/y(12)+y(14)-y(7)-y(13);
residual(4) = y(20)-y(13)-y(23);
lhs = (1-params(1))*y(17)*T(6)*T(7);
rhs = y(9)*1/(1-y(16)*(1+2*params(6)*(y(14)-(steady_state(8)))));
residual(5) = lhs - rhs;
lhs = params(2)*T(8)*T(9)*T(13)+(1+2*params(6)*(y(14)-(steady_state(8))))*y(16)*y(18);
rhs = 1;
residual(6) = lhs - rhs;
lhs = T(9)*T(8)*params(2)*y(11)+(1+2*params(6)*(y(14)-(steady_state(8))))*y(16)*y(18)*T(14);
rhs = 1;
residual(7) = lhs - rhs;
residual(8) = y(1)*(1-params(4))+T(16)-y(9)*y(8)-y(3)+y(15)/y(11)-y(10)-(y(14)+params(6)*(y(14)-(steady_state(8)))^2);
lhs = y(18)*(y(10)-y(15)*(1-params(5))/(y(11)-params(5)));
rhs = T(16);
residual(9) = lhs - rhs;
lhs = log(y(17)/(steady_state(11)));
rhs = params(10)*log(y(4)/(steady_state(11)))+x(it_, 1);
residual(10) = lhs - rhs;
lhs = log(y(18)/(steady_state(12)));
rhs = params(11)*log(y(5)/(steady_state(12)))+x(it_, 2);
residual(11) = lhs - rhs;
lhs = y(11)*(y(15)+(y(19)-1)*y(2));
rhs = y(12)*y(15);
residual(12) = lhs - rhs;
lhs = y(19);
rhs = params(12)*y(6)+x(it_, 3);
residual(13) = lhs - rhs;

end
