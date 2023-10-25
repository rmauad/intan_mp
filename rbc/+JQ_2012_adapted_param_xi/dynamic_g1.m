function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
% function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
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
%   g1
%

if T_flag
    T = JQ_2012_adapted_param_xi.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(9, 18);
g1(1,4)=(-(y(6)*getPowerDeriv(y(4),params(7),1)))/(T(1)*T(1));
g1(1,5)=(-(params(3)/((1-y(5))*(1-y(5)))));
g1(1,6)=1/T(1);
g1(2,4)=getPowerDeriv(y(4),(-params(7)),1);
g1(2,13)=(-(params(2)*(y(8)-params(5))/(1-params(5))*getPowerDeriv(y(13),(-params(7)),1)));
g1(2,8)=(-(T(2)*params(2)*1/(1-params(5))));
g1(3,4)=(-1);
g1(3,5)=y(6);
g1(3,6)=y(5);
g1(3,8)=(-((-y(10))/(y(8)*y(8))));
g1(3,9)=1;
g1(3,2)=1;
g1(3,10)=(-(1/y(8)));
g1(4,5)=(1-params(1))*y(12)*T(3)*getPowerDeriv(y(5),(-params(1)),1);
g1(4,6)=(-(1/(1-y(11)*(1+2*params(6)*(y(9)-(steady_state(6)))))));
g1(4,1)=T(4)*(1-params(1))*y(12)*T(16);
g1(4,9)=(-(y(6)*y(11)*2*params(6)/((1-y(11)*(1+2*params(6)*(y(9)-(steady_state(6)))))*(1-y(11)*(1+2*params(6)*(y(9)-(steady_state(6))))))));
g1(4,11)=(-(y(6)*(1+2*params(6)*(y(9)-(steady_state(6))))/((1-y(11)*(1+2*params(6)*(y(9)-(steady_state(6)))))*(1-y(11)*(1+2*params(6)*(y(9)-(steady_state(6))))))));
g1(4,12)=T(4)*(1-params(1))*T(3);
g1(5,4)=T(10)*T(6)*params(2)*1/y(13)*T(14);
g1(5,13)=T(10)*T(6)*params(2)*T(14)*(-y(4))/(y(13)*y(13));
g1(5,14)=params(2)*T(5)*T(6)*T(8)*getPowerDeriv(y(14),1-params(1),1);
g1(5,7)=params(2)*T(5)*T(6)*T(9)*params(1)*(1-(1+2*params(6)*(y(15)-(steady_state(6))))*y(16))*y(17)*getPowerDeriv(y(7),params(1)-1,1);
g1(5,9)=T(10)*params(2)*T(5)*2*params(6)/(1+2*params(6)*(y(15)-(steady_state(6))))+2*params(6)*y(11)*params(12);
g1(5,15)=T(10)*params(2)*T(5)*T(17)+params(2)*T(5)*T(6)*T(9)*T(7)*y(17)*params(1)*(-(2*params(6)*y(16)));
g1(5,11)=(1+2*params(6)*(y(9)-(steady_state(6))))*params(12);
g1(5,16)=params(2)*T(5)*T(6)*T(9)*T(7)*y(17)*params(1)*(-(1+2*params(6)*(y(15)-(steady_state(6)))));
g1(5,17)=params(2)*T(5)*T(6)*T(9)*params(1)*(1-(1+2*params(6)*(y(15)-(steady_state(6))))*y(16))*T(7);
g1(6,4)=T(6)*params(2)*y(8)*1/y(13)*T(14);
g1(6,13)=T(6)*params(2)*y(8)*T(14)*(-y(4))/(y(13)*y(13));
g1(6,8)=params(2)*T(5)*T(6)+(1+2*params(6)*(y(9)-(steady_state(6))))*y(11)*params(12)*((y(8)-params(5))*(1-params(5))-y(8)*(1-params(5)))/((y(8)-params(5))*(y(8)-params(5)));
g1(6,9)=T(5)*params(2)*y(8)*2*params(6)/(1+2*params(6)*(y(15)-(steady_state(6))))+T(11)*2*params(6)*y(11)*params(12);
g1(6,15)=T(5)*params(2)*y(8)*T(17);
g1(6,11)=T(11)*(1+2*params(6)*(y(9)-(steady_state(6))))*params(12);
g1(7,5)=T(15)-y(6);
g1(7,6)=(-y(5));
g1(7,1)=1-params(4)+T(12)*y(12)*T(16);
g1(7,7)=(-1);
g1(7,8)=(-y(10))/(y(8)*y(8));
g1(7,9)=(-(1+params(6)*2*(y(9)-(steady_state(6)))));
g1(7,2)=(-1);
g1(7,10)=1/y(8);
g1(7,12)=T(3)*T(12);
g1(8,5)=(-T(15));
g1(8,1)=(-(T(12)*y(12)*T(16)));
g1(8,7)=params(12);
g1(8,8)=params(12)*(-(y(10)*(-(1-params(5)))/((y(8)-params(5))*(y(8)-params(5)))));
g1(8,10)=params(12)*(-((1-params(5))/(y(8)-params(5))));
g1(8,12)=(-(T(3)*T(12)));
g1(9,3)=(-(params(10)*1/(steady_state(9))/(y(3)/(steady_state(9)))));
g1(9,12)=1/(steady_state(9))/(y(12)/(steady_state(9)));
g1(9,18)=(-1);

end
