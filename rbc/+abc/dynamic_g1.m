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
    T = abc.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(13, 23);
g1(1,4)=(-params(2))/(y(4)*y(4));
g1(1,19)=(-((-params(1))*y(7)/y(20)));
g1(1,7)=(-(y(19)*(-params(1))/y(20)));
g1(1,20)=(-(y(19)*(-((-params(1))*y(7)))/(y(20)*y(20))));
g1(2,4)=(-1)/(y(4)*y(4));
g1(2,17)=(-((-(1+params(1)*y(18)-params(3)))/(y(17)*y(17))));
g1(2,18)=(-(params(1)/y(17)));
g1(3,6)=(-((-(y(19)*params(1)*y(7)/y(20)))/(T(1)*T(1))));
g1(3,19)=(-((-(params(1)*y(7)*y(6)/y(20)))/(T(1)*T(1))));
g1(3,7)=(-((-(y(19)*params(1)*y(6)/y(20)))/(T(1)*T(1))));
g1(3,20)=(-((-(y(19)*(-(params(1)*y(7)*y(6)))/(y(20)*y(20))))/(T(1)*T(1))));
g1(3,13)=1;
g1(4,6)=y(7);
g1(4,7)=y(6);
g1(4,1)=(-1);
g1(4,9)=1;
g1(5,4)=(-y(12));
g1(5,5)=(-y(10));
g1(5,7)=(-y(8))/(y(7)*y(7))-(-(y(13)*y(9)))/(y(7)*y(7));
g1(5,8)=1/y(7);
g1(5,9)=(-(y(13)/y(7)));
g1(5,10)=(-(y(5)+1-params(3)));
g1(5,21)=1;
g1(5,12)=(-y(4));
g1(5,13)=(-(y(9)/y(7)));
g1(6,4)=y(14);
g1(6,10)=(-(T(3)*(1-params(4))*y(16)*T(7)));
g1(6,12)=(-((1-params(4))*y(16)*T(2)*getPowerDeriv(y(12),(-params(4)),1)));
g1(6,14)=y(4);
g1(6,16)=(-(T(3)*(1-params(4))*T(2)));
g1(7,5)=1;
g1(7,10)=(-(T(6)*params(4)*y(16)*getPowerDeriv(y(10),params(4)-1,1)));
g1(7,12)=(-(T(5)*T(8)));
g1(7,16)=(-(T(6)*params(4)*T(4)));
g1(8,10)=(-(T(6)*y(16)*T(7)));
g1(8,11)=1;
g1(8,12)=(-(y(16)*T(2)*T(8)));
g1(8,16)=(-(T(2)*T(6)));
g1(9,1)=y(14)*(y(15)-1);
g1(9,9)=y(14)-y(13);
g1(9,13)=(-y(9));
g1(9,14)=y(9)+y(1)*(y(15)-1);
g1(9,15)=y(1)*y(14);
g1(10,4)=(-(y(7)*y(12)));
g1(10,7)=(-(y(4)*y(12)));
g1(10,1)=y(15)-1;
g1(10,9)=1;
g1(10,12)=(-(y(4)*y(7)));
g1(10,15)=y(1);
g1(11,1)=(-y(15));
g1(11,8)=1;
g1(11,15)=(-y(1));
g1(12,2)=(-(params(5)*1/y(2)));
g1(12,15)=1/y(15);
g1(12,22)=(-1);
g1(13,3)=(-(params(6)*1/y(3)));
g1(13,16)=1/y(16);
g1(13,23)=(-1);

end
