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

assert(length(T) >= 16);

T(1) = y(7)^params(7);
T(2) = T(1)*(1-y(19));
T(3) = y(7)^(-params(7));
T(4) = y(20)^(-params(7));
T(5) = params(2)*T(4)/(1+y(26))+y(26)*T(4)/(1+y(26));
T(6) = y(1)^params(1);
T(7) = y(8)^(-params(1));
T(8) = (y(7)/y(20))^params(7);
T(9) = (1+2*params(6)*(y(14)-(steady_state(8))))/(1+2*params(6)*(y(22)-(steady_state(8))));
T(10) = y(10)^(params(1)-1);
T(11) = params(1)*(1-(1+2*params(6)*(y(22)-(steady_state(8))))*y(24))*y(25)*T(10);
T(12) = y(21)^(1-params(1));
T(13) = 1-params(4)+T(11)*T(12);
T(14) = (1-params(5))*y(11)/(y(11)-params(5));
T(15) = y(8)^(1-params(1));
T(16) = y(17)*T(6)*T(15);

end
