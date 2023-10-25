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

assert(length(T) >= 13);

T(1) = y(5)^params(7);
T(2) = y(15)^(-params(7));
T(3) = y(1)^params(1);
T(4) = y(6)^(-params(1));
T(5) = (y(5)/y(15))^params(7);
T(6) = (1+2*params(6)*(y(10)-(steady_state(6))))/(1+2*params(6)*(y(17)-(steady_state(6))));
T(7) = y(8)^(params(1)-1);
T(8) = params(1)*(1-(1+2*params(6)*(y(17)-(steady_state(6))))*y(18))*y(19)*T(7);
T(9) = y(16)^(1-params(1));
T(10) = 1-params(4)+T(8)*T(9);
T(11) = y(9)*(1-params(5))/(y(9)-params(5));
T(12) = y(6)^(1-params(1));
T(13) = y(13)*T(3)*T(12);

end
