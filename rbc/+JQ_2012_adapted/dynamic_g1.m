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
    T = JQ_2012_adapted.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(10, 21);
g1(1,5)=(-(y(7)*getPowerDeriv(y(5),params(7),1)))/(T(1)*T(1));
g1(1,6)=(-(params(3)/((1-y(6))*(1-y(6)))));
g1(1,7)=1/T(1);
g1(2,5)=getPowerDeriv(y(5),(-params(7)),1);
g1(2,15)=(-(params(2)*(y(9)-params(5))/(1-params(5))*getPowerDeriv(y(15),(-params(7)),1)));
g1(2,9)=(-(T(2)*params(2)*1/(1-params(5))));
g1(3,5)=(-1);
g1(3,6)=y(7);
g1(3,7)=y(6);
g1(3,9)=(-((-y(11))/(y(9)*y(9))));
g1(3,10)=1;
g1(3,2)=1;
g1(3,11)=(-(1/y(9)));
g1(4,6)=(1-params(1))*y(13)*T(3)*getPowerDeriv(y(6),(-params(1)),1);
g1(4,7)=(-(1/(1-y(12)*(1+2*params(6)*(y(10)-(steady_state(6)))))));
g1(4,1)=T(4)*(1-params(1))*y(13)*T(16);
g1(4,10)=(-(y(7)*y(12)*2*params(6)/((1-y(12)*(1+2*params(6)*(y(10)-(steady_state(6)))))*(1-y(12)*(1+2*params(6)*(y(10)-(steady_state(6))))))));
g1(4,12)=(-(y(7)*(1+2*params(6)*(y(10)-(steady_state(6))))/((1-y(12)*(1+2*params(6)*(y(10)-(steady_state(6)))))*(1-y(12)*(1+2*params(6)*(y(10)-(steady_state(6))))))));
g1(4,13)=T(4)*(1-params(1))*T(3);
g1(5,5)=T(10)*T(6)*params(2)*1/y(15)*T(14);
g1(5,15)=T(10)*T(6)*params(2)*T(14)*(-y(5))/(y(15)*y(15));
g1(5,16)=params(2)*T(5)*T(6)*T(8)*getPowerDeriv(y(16),1-params(1),1);
g1(5,8)=params(2)*T(5)*T(6)*T(9)*params(1)*(1-(1+2*params(6)*(y(17)-(steady_state(6))))*y(18))*y(19)*getPowerDeriv(y(8),params(1)-1,1);
g1(5,10)=T(10)*params(2)*T(5)*2*params(6)/(1+2*params(6)*(y(17)-(steady_state(6))))+2*params(6)*y(12)*y(14);
g1(5,17)=T(10)*params(2)*T(5)*T(17)+params(2)*T(5)*T(6)*T(9)*T(7)*y(19)*params(1)*(-(2*params(6)*y(18)));
g1(5,12)=(1+2*params(6)*(y(10)-(steady_state(6))))*y(14);
g1(5,18)=params(2)*T(5)*T(6)*T(9)*T(7)*y(19)*params(1)*(-(1+2*params(6)*(y(17)-(steady_state(6)))));
g1(5,19)=params(2)*T(5)*T(6)*T(9)*params(1)*(1-(1+2*params(6)*(y(17)-(steady_state(6))))*y(18))*T(7);
g1(5,14)=y(12)*(1+2*params(6)*(y(10)-(steady_state(6))));
g1(6,5)=T(6)*params(2)*y(9)*1/y(15)*T(14);
g1(6,15)=T(6)*params(2)*y(9)*T(14)*(-y(5))/(y(15)*y(15));
g1(6,9)=params(2)*T(5)*T(6)+(1+2*params(6)*(y(10)-(steady_state(6))))*y(12)*y(14)*((y(9)-params(5))*(1-params(5))-y(9)*(1-params(5)))/((y(9)-params(5))*(y(9)-params(5)));
g1(6,10)=T(5)*params(2)*y(9)*2*params(6)/(1+2*params(6)*(y(17)-(steady_state(6))))+T(11)*2*params(6)*y(12)*y(14);
g1(6,17)=T(5)*params(2)*y(9)*T(17);
g1(6,12)=T(11)*(1+2*params(6)*(y(10)-(steady_state(6))))*y(14);
g1(6,14)=y(12)*(1+2*params(6)*(y(10)-(steady_state(6))))*T(11);
g1(7,6)=T(15)-y(7);
g1(7,7)=(-y(6));
g1(7,1)=1-params(4)+T(12)*y(13)*T(16);
g1(7,8)=(-1);
g1(7,9)=(-y(11))/(y(9)*y(9));
g1(7,10)=(-(1+params(6)*2*(y(10)-(steady_state(6)))));
g1(7,2)=(-1);
g1(7,11)=1/y(9);
g1(7,13)=T(3)*T(12);
g1(8,6)=(-T(15));
g1(8,1)=(-(T(12)*y(13)*T(16)));
g1(8,8)=y(14);
g1(8,9)=y(14)*(-(y(11)*(-(1-params(5)))/((y(9)-params(5))*(y(9)-params(5)))));
g1(8,11)=y(14)*(-((1-params(5))/(y(9)-params(5))));
g1(8,13)=(-(T(3)*T(12)));
g1(8,14)=y(8)-y(11)*(1-params(5))/(y(9)-params(5));
g1(9,3)=(-(params(10)*1/(steady_state(9))/(y(3)/(steady_state(9)))));
g1(9,13)=1/(steady_state(9))/(y(13)/(steady_state(9)));
g1(9,20)=(-1);
g1(10,4)=(-(params(11)*1/(steady_state(10))/(y(4)/(steady_state(10)))));
g1(10,14)=1/(steady_state(10))/(y(14)/(steady_state(10)));
g1(10,21)=(-1);

end
