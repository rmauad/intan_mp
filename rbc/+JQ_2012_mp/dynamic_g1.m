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
    T = JQ_2012_mp.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(13, 29);
g1(1,7)=(-(y(9)*(1-y(19))*getPowerDeriv(y(7),params(7),1)))/(T(2)*T(2));
g1(1,8)=(-(params(3)/((1-y(8))*(1-y(8)))));
g1(1,9)=1/T(2);
g1(1,19)=(-(y(9)*(-T(1))))/(T(2)*T(2));
g1(2,7)=getPowerDeriv(y(7),(-params(7)),1)/(1+y(26));
g1(2,20)=(-((y(12)-params(5))/(1-params(5))*(params(2)*T(18)/(1+y(26))+y(26)*T(18)/(1+y(26)))));
g1(2,12)=(-(T(5)*1/(1-params(5))));
g1(2,26)=(-T(3))/((1+y(26))*(1+y(26)))-(y(12)-params(5))/(1-params(5))*((-(params(2)*T(4)))/((1+y(26))*(1+y(26)))+((1+y(26))*T(4)-y(26)*T(4))/((1+y(26))*(1+y(26))));
g1(3,7)=(-1);
g1(3,8)=y(9);
g1(3,9)=y(8);
g1(3,12)=(-((-y(15))/(y(12)*y(12))));
g1(3,13)=(-1);
g1(3,14)=1;
g1(3,3)=1;
g1(3,15)=(-(1/y(12)));
g1(4,20)=1;
g1(4,13)=(-1);
g1(4,23)=(-1);
g1(5,8)=(1-params(1))*y(17)*T(6)*getPowerDeriv(y(8),(-params(1)),1);
g1(5,9)=(-(1/(1-y(16)*(1+2*params(6)*(y(14)-(steady_state(8)))))));
g1(5,1)=T(7)*(1-params(1))*y(17)*T(20);
g1(5,14)=(-(y(9)*y(16)*2*params(6)/((1-y(16)*(1+2*params(6)*(y(14)-(steady_state(8)))))*(1-y(16)*(1+2*params(6)*(y(14)-(steady_state(8))))))));
g1(5,16)=(-(y(9)*(1+2*params(6)*(y(14)-(steady_state(8))))/((1-y(16)*(1+2*params(6)*(y(14)-(steady_state(8)))))*(1-y(16)*(1+2*params(6)*(y(14)-(steady_state(8))))))));
g1(5,17)=T(7)*(1-params(1))*T(6);
g1(6,7)=T(13)*T(9)*params(2)*1/y(20)*T(17);
g1(6,20)=T(13)*T(9)*params(2)*T(17)*(-y(7))/(y(20)*y(20));
g1(6,21)=params(2)*T(8)*T(9)*T(11)*getPowerDeriv(y(21),1-params(1),1);
g1(6,10)=params(2)*T(8)*T(9)*T(12)*params(1)*(1-(1+2*params(6)*(y(22)-(steady_state(8))))*y(24))*y(25)*getPowerDeriv(y(10),params(1)-1,1);
g1(6,14)=T(13)*params(2)*T(8)*2*params(6)/(1+2*params(6)*(y(22)-(steady_state(8))))+2*params(6)*y(16)*y(18);
g1(6,22)=T(13)*params(2)*T(8)*T(21)+params(2)*T(8)*T(9)*T(12)*T(10)*y(25)*params(1)*(-(2*params(6)*y(24)));
g1(6,16)=(1+2*params(6)*(y(14)-(steady_state(8))))*y(18);
g1(6,24)=params(2)*T(8)*T(9)*T(12)*T(10)*y(25)*params(1)*(-(1+2*params(6)*(y(22)-(steady_state(8)))));
g1(6,25)=params(2)*T(8)*T(9)*T(12)*params(1)*(1-(1+2*params(6)*(y(22)-(steady_state(8))))*y(24))*T(10);
g1(6,18)=y(16)*(1+2*params(6)*(y(14)-(steady_state(8))));
g1(7,7)=T(9)*params(2)*y(11)*1/y(20)*T(17);
g1(7,20)=T(9)*params(2)*y(11)*T(17)*(-y(7))/(y(20)*y(20));
g1(7,11)=params(2)*T(8)*T(9)+(1+2*params(6)*(y(14)-(steady_state(8))))*y(16)*y(18)*((1-params(5))*(y(11)-params(5))-(1-params(5))*y(11))/((y(11)-params(5))*(y(11)-params(5)));
g1(7,14)=T(8)*params(2)*y(11)*2*params(6)/(1+2*params(6)*(y(22)-(steady_state(8))))+T(14)*2*params(6)*y(16)*y(18);
g1(7,22)=T(8)*params(2)*y(11)*T(21);
g1(7,16)=T(14)*(1+2*params(6)*(y(14)-(steady_state(8))))*y(18);
g1(7,18)=y(16)*(1+2*params(6)*(y(14)-(steady_state(8))))*T(14);
g1(8,8)=T(19)-y(9);
g1(8,9)=(-y(8));
g1(8,1)=1-params(4)+T(15)*y(17)*T(20);
g1(8,10)=(-1);
g1(8,11)=(-y(15))/(y(11)*y(11));
g1(8,14)=(-(1+params(6)*2*(y(14)-(steady_state(8)))));
g1(8,3)=(-1);
g1(8,15)=1/y(11);
g1(8,17)=T(6)*T(15);
g1(9,8)=(-T(19));
g1(9,1)=(-(T(15)*y(17)*T(20)));
g1(9,10)=y(18);
g1(9,11)=y(18)*(-(y(15)*(-(1-params(5)))/((y(11)-params(5))*(y(11)-params(5)))));
g1(9,15)=y(18)*(-((1-params(5))/(y(11)-params(5))));
g1(9,17)=(-(T(6)*T(15)));
g1(9,18)=y(10)-y(15)*(1-params(5))/(y(11)-params(5));
g1(10,4)=(-(params(10)*1/(steady_state(11))/(y(4)/(steady_state(11)))));
g1(10,17)=1/(steady_state(11))/(y(17)/(steady_state(11)));
g1(10,27)=(-1);
g1(11,5)=(-(params(11)*1/(steady_state(12))/(y(5)/(steady_state(12)))));
g1(11,18)=1/(steady_state(12))/(y(18)/(steady_state(12)));
g1(11,28)=(-1);
g1(12,11)=y(15)+(y(19)-1)*y(2);
g1(12,12)=(-y(15));
g1(12,2)=y(11)*(y(19)-1);
g1(12,15)=y(11)-y(12);
g1(12,19)=y(11)*y(2);
g1(13,6)=(-params(12));
g1(13,19)=1;
g1(13,29)=(-1);

end
