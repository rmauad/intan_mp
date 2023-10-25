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
    T = Jermann_Quadrini_2012_RBC.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(22, 35);
g1(1,6)=(-(y(8)*getPowerDeriv(y(6),params(7),1)))/(T(1)*T(1));
g1(1,7)=(-(params(3)/((1-y(7))*(1-y(7)))));
g1(1,8)=1/T(1);
g1(2,6)=getPowerDeriv(y(6),(-params(7)),1);
g1(2,28)=(-(params(2)*(y(10)-params(5))/(1-params(5))*getPowerDeriv(y(28),(-params(7)),1)));
g1(2,10)=(-(T(2)*params(2)*1/(1-params(5))));
g1(3,6)=(-1);
g1(3,7)=y(8);
g1(3,8)=y(7);
g1(3,10)=(-((-y(13))/(y(10)*y(10))));
g1(3,12)=1;
g1(3,3)=1;
g1(3,13)=(-(1/y(10)));
g1(4,7)=(1-params(1))*y(16)*T(3)*getPowerDeriv(y(7),(-params(1)),1);
g1(4,8)=(-(1/(1-y(14)*(1+2*params(6)*(y(12)-(steady_state(7)))))));
g1(4,1)=T(4)*(1-params(1))*y(16)*T(18);
g1(4,12)=(-(y(8)*y(14)*2*params(6)/((1-y(14)*(1+2*params(6)*(y(12)-(steady_state(7)))))*(1-y(14)*(1+2*params(6)*(y(12)-(steady_state(7))))))));
g1(4,14)=(-(y(8)*(1+2*params(6)*(y(12)-(steady_state(7))))/((1-y(14)*(1+2*params(6)*(y(12)-(steady_state(7)))))*(1-y(14)*(1+2*params(6)*(y(12)-(steady_state(7))))))));
g1(4,16)=T(4)*(1-params(1))*T(3);
g1(5,6)=T(10)*T(6)*params(2)*1/y(28)*T(16);
g1(5,28)=T(10)*T(6)*params(2)*T(16)*(-y(6))/(y(28)*y(28));
g1(5,29)=params(2)*T(5)*T(6)*T(8)*getPowerDeriv(y(29),1-params(1),1);
g1(5,9)=params(2)*T(5)*T(6)*T(9)*params(1)*(1-(1+2*params(6)*(y(30)-(steady_state(7))))*y(31))*y(33)*getPowerDeriv(y(9),params(1)-1,1);
g1(5,12)=T(10)*params(2)*T(5)*2*params(6)/(1+2*params(6)*(y(30)-(steady_state(7))))+2*params(6)*y(14)*y(17);
g1(5,30)=T(10)*params(2)*T(5)*T(19)+params(2)*T(5)*T(6)*T(9)*T(7)*y(33)*params(1)*(-(2*params(6)*y(31)));
g1(5,14)=(1+2*params(6)*(y(12)-(steady_state(7))))*y(17);
g1(5,31)=params(2)*T(5)*T(6)*T(9)*T(7)*y(33)*params(1)*(-(1+2*params(6)*(y(30)-(steady_state(7)))));
g1(5,33)=params(2)*T(5)*T(6)*T(9)*params(1)*(1-(1+2*params(6)*(y(30)-(steady_state(7))))*y(31))*T(7);
g1(5,17)=y(14)*(1+2*params(6)*(y(12)-(steady_state(7))));
g1(6,6)=T(6)*params(2)*y(10)*1/y(28)*T(16);
g1(6,28)=T(6)*params(2)*y(10)*T(16)*(-y(6))/(y(28)*y(28));
g1(6,10)=params(2)*T(5)*T(6)+(1+2*params(6)*(y(12)-(steady_state(7))))*y(14)*y(17)*((y(10)-params(5))*(1-params(5))-y(10)*(1-params(5)))/((y(10)-params(5))*(y(10)-params(5)));
g1(6,12)=T(5)*params(2)*y(10)*2*params(6)/(1+2*params(6)*(y(30)-(steady_state(7))))+T(11)*2*params(6)*y(14)*y(17);
g1(6,30)=T(5)*params(2)*y(10)*T(19);
g1(6,14)=T(11)*(1+2*params(6)*(y(12)-(steady_state(7))))*y(17);
g1(6,17)=y(14)*(1+2*params(6)*(y(12)-(steady_state(7))))*T(11);
g1(7,7)=T(17)-y(8);
g1(7,8)=(-y(7));
g1(7,1)=1-params(4)+T(12)*y(16)*T(18);
g1(7,9)=(-1);
g1(7,10)=(-y(13))/(y(10)*y(10));
g1(7,12)=(-(1+params(6)*2*(y(12)-(steady_state(7)))));
g1(7,3)=(-1);
g1(7,13)=1/y(10);
g1(7,16)=T(3)*T(12);
g1(8,7)=(-T(17));
g1(8,1)=(-(T(12)*y(16)*T(18)));
g1(8,9)=y(17);
g1(8,10)=y(17)*(-(y(13)*(-(1-params(5)))/((y(10)-params(5))*(y(10)-params(5)))));
g1(8,13)=y(17)*(-((1-params(5))/(y(10)-params(5))));
g1(8,16)=(-(T(3)*T(12)));
g1(8,17)=y(9)-y(13)*(1-params(5))/(y(10)-params(5));
g1(9,4)=(-(params(11)*T(20)));
g1(9,16)=1/(steady_state(11))/(y(16)/(steady_state(11)));
g1(9,5)=(-(params(12)*T(21)));
g1(9,34)=(-1);
g1(10,4)=(-(params(13)*T(20)));
g1(10,5)=(-(params(14)*T(21)));
g1(10,17)=1/(steady_state(12))/(y(17)/(steady_state(12)));
g1(10,35)=(-1);
g1(11,7)=(-T(17));
g1(11,1)=(-(T(12)*y(16)*T(18)));
g1(11,16)=(-(T(3)*T(12)));
g1(11,18)=1;
g1(12,1)=1-params(4);
g1(12,9)=(-1);
g1(12,19)=1;
g1(13,6)=(-(y(32)*params(2)/y(28)));
g1(13,28)=(-(y(32)*(-(y(6)*params(2)))/(y(28)*y(28))));
g1(13,12)=(-1);
g1(13,15)=1;
g1(13,32)=(-(y(6)*params(2)/y(28)));
g1(14,10)=(-(1/(1-params(5))));
g1(14,11)=1;
g1(15,18)=(-(1/y(18)));
g1(15,20)=1;
g1(16,6)=(-(1/y(6)));
g1(16,21)=1;
g1(17,19)=(-(1/y(19)));
g1(17,22)=1;
g1(18,7)=(-(1/y(7)));
g1(18,23)=1;
g1(19,14)=(-(1/y(14)));
g1(19,26)=1;
g1(20,2)=(-((-y(3))/((1+y(2))*(1+y(2)))/y(18)));
g1(20,11)=(-((-((-y(13))/((1+y(11))*(1+y(11)))))/y(18)));
g1(20,3)=(-(1/(1+y(2))/y(18)));
g1(20,13)=(-((-(1/(1+y(11))))/y(18)));
g1(20,18)=(-((-T(14))/(y(18)*y(18))));
g1(20,24)=1;
g1(21,12)=(-(1/y(18)));
g1(21,18)=(-((-y(12))/(y(18)*y(18))));
g1(21,25)=1;
g1(22,1)=(-((-y(15))/((y(1)-y(3))*(y(1)-y(3)))/T(15)));
g1(22,3)=(-(y(15)/((y(1)-y(3))*(y(1)-y(3)))/T(15)));
g1(22,15)=(-(1/(y(1)-y(3))/T(15)));
g1(22,27)=1;

end
