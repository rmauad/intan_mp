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
    T = abc.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(13, 1);
lhs = params(2)/y(4);
rhs = (-params(1))*y(7)/y(20)*y(19);
residual(1) = lhs - rhs;
lhs = 1/y(4);
rhs = (1+params(1)*y(18)-params(3))/y(17);
residual(2) = lhs - rhs;
lhs = y(13);
rhs = 1/T(1);
residual(3) = lhs - rhs;
lhs = y(7)*y(6);
rhs = y(1)-y(9);
residual(4) = lhs - rhs;
lhs = y(8)/y(7)+y(21);
rhs = y(4)*y(12)+y(5)*y(10)+y(10)*(1-params(3))+y(13)*y(9)/y(7);
residual(5) = lhs - rhs;
lhs = y(4)*y(14);
rhs = (1-params(4))*y(16)*T(2)*T(3);
residual(6) = lhs - rhs;
lhs = y(5);
rhs = T(5)*T(6);
residual(7) = lhs - rhs;
lhs = y(11);
rhs = T(6)*y(16)*T(2);
residual(8) = lhs - rhs;
lhs = y(14)*(y(9)+y(1)*(y(15)-1));
rhs = y(13)*y(9);
residual(9) = lhs - rhs;
lhs = y(9)+y(1)*(y(15)-1);
rhs = y(12)*y(4)*y(7);
residual(10) = lhs - rhs;
lhs = y(8);
rhs = y(1)*y(15);
residual(11) = lhs - rhs;
lhs = log(y(15));
rhs = params(5)*log(y(2))+x(it_, 1);
residual(12) = lhs - rhs;
lhs = log(y(16));
rhs = params(6)*log(y(3))+x(it_, 2);
residual(13) = lhs - rhs;

end
