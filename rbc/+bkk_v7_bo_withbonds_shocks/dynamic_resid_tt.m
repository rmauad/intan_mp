function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double  vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double  vector of endogenous variables in the order stored
%                                                    in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double  matrix of exogenous variables (in declaration order)
%                                                    for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double  vector of steady state values
%   params        [M_.param_nbr by 1]        double  vector of parameter values in declaration order
%   it_           scalar                     double  time period for exogenous variables for which
%                                                    to evaluate the model
%
% Output:
%   T           [#temp variables by 1]       double  vector of temporary terms
%

assert(length(T) >= 35);

T(1) = params(1)*exp(y(19))^params(2)+(1-params(1))*exp(y(22))^params(2);
T(2) = 1/params(2);
T(3) = T(1)^T(2);
T(4) = params(10)*exp(y(20))^params(2)+(1-params(10))*exp(y(21))^params(2);
T(5) = T(4)^T(2);
T(6) = exp(y(22))/exp(y(19));
T(7) = params(1)+(1-params(1))*T(6)^params(2);
T(8) = (1-params(2))/params(2);
T(9) = exp(y(20))/exp(y(21));
T(10) = 1-params(10)+params(10)*T(9)^params(2);
T(11) = exp(y(30))*(1-params(10))*T(10)^T(8);
T(12) = exp(y(39))*exp(y(23))^params(7);
T(13) = exp(y(25))^(1-params(7));
T(14) = exp(y(40))*exp(y(24))^params(7);
T(15) = exp(y(26))^(1-params(7));
T(16) = params(7)/exp(y(41))*exp(y(17))*exp(y(31))/exp(y(23));
T(17) = (1-params(7))/exp(y(41))*exp(y(17))*exp(y(31))/exp(y(25));
T(18) = params(7)/exp(y(42))*exp(y(18))*exp(y(32))/exp(y(24));
T(19) = (1-params(7))/exp(y(42))*exp(y(18))*exp(y(32))/exp(y(26));
T(20) = exp(y(44))/exp(y(13));
T(21) = params(6)*T(20)^(-params(3));
T(22) = T(21)*exp((-params(3))*y(49));
T(23) = exp(y(35))*exp(y(13))^(-params(3));
T(24) = 1/params(4);
T(25) = exp(y(45))/exp(y(14));
T(26) = params(6)*T(25)^(-params(3));
T(27) = exp((-params(3))*y(49))*T(26);
T(28) = exp(y(36))*exp(y(14))^(-params(3));
T(29) = exp(y(13))/exp(y(1));
T(30) = T(29)^(-params(3));
T(31) = exp(y(14))/exp(y(2));
T(32) = T(31)^(-params(3));
T(33) = exp(y(43)*(-params(3)))*T(32);
T(34) = exp(y(7))/exp(y(30));
T(35) = T(33)*T(34);

end
