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
    T = JQ_2012_adapted.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(10, 1);
residual(1) = y(7)/T(1)-params(3)/(1-y(6));
lhs = y(5)^(-params(7));
rhs = params(2)*(y(9)-params(5))/(1-params(5))*T(2);
residual(2) = lhs - rhs;
residual(3) = y(7)*y(6)+y(2)-y(11)/y(9)+y(10)-y(5);
lhs = (1-params(1))*y(13)*T(3)*T(4);
rhs = y(7)*1/(1-y(12)*(1+2*params(6)*(y(10)-(steady_state(6)))));
residual(4) = lhs - rhs;
lhs = params(2)*T(5)*T(6)*T(10)+(1+2*params(6)*(y(10)-(steady_state(6))))*y(12)*y(14);
rhs = 1;
residual(5) = lhs - rhs;
lhs = T(6)*T(5)*params(2)*y(9)+(1+2*params(6)*(y(10)-(steady_state(6))))*y(12)*y(14)*T(11);
rhs = 1;
residual(6) = lhs - rhs;
residual(7) = y(11)/y(9)+y(1)*(1-params(4))+T(13)-y(7)*y(6)-y(2)-y(8)-(y(10)+params(6)*(y(10)-(steady_state(6)))^2);
lhs = y(14)*(y(8)-y(11)*(1-params(5))/(y(9)-params(5)));
rhs = T(13);
residual(8) = lhs - rhs;
lhs = log(y(13)/(steady_state(9)));
rhs = params(10)*log(y(3)/(steady_state(9)))+x(it_, 1);
residual(9) = lhs - rhs;
lhs = log(y(14)/(steady_state(10)));
rhs = params(11)*log(y(4)/(steady_state(10)))+x(it_, 2);
residual(10) = lhs - rhs;

end
