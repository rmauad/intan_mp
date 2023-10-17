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
    T = bkk_v7_bo_withbonds_shocks.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(31, 54);
g1(1,17)=(-exp(y(17)));
g1(1,19)=exp(y(19));
g1(1,21)=exp(y(21));
g1(2,18)=(-exp(y(18)));
g1(2,20)=exp(y(20));
g1(2,22)=exp(y(22));
g1(3,13)=exp(y(13));
g1(3,15)=exp(y(15));
g1(3,19)=(-T(41));
g1(3,22)=(-T(51));
g1(4,14)=exp(y(14));
g1(4,16)=exp(y(16));
g1(4,20)=(-T(46));
g1(4,21)=(-T(50));
g1(5,19)=(-(params(1)*(1-params(1))*(-(exp(y(19))*exp(y(22))))/(exp(y(19))*exp(y(19)))*T(42)*T(43)));
g1(5,22)=(-(params(1)*T(43)*(1-params(1))*T(6)*T(42)));
g1(5,31)=exp(y(31));
g1(6,19)=(-((1-params(1))*T(41)/exp(y(22))*T(44)));
g1(6,22)=(-((1-params(1))*T(44)*(exp(y(22))*T(51)-exp(y(22))*T(3))/(exp(y(22))*exp(y(22)))));
g1(6,30)=exp(y(30))*exp(y(32));
g1(6,32)=exp(y(30))*exp(y(32));
g1(7,20)=(-(params(10)*(exp(y(20))*T(46)-exp(y(20))*T(5))/(exp(y(20))*exp(y(20)))*T(47)));
g1(7,21)=(-(params(10)*T(47)*T(50)/exp(y(20))));
g1(7,32)=exp(y(32));
g1(8,20)=(-(exp(y(30))*(1-params(10))*params(10)*T(9)*T(48)*T(49)));
g1(8,21)=(-(exp(y(30))*(1-params(10))*T(49)*params(10)*T(48)*(-(exp(y(21))*exp(y(20))))/(exp(y(21))*exp(y(21)))));
g1(8,30)=(-T(11));
g1(8,31)=exp(y(31));
g1(9,17)=exp(y(17));
g1(9,23)=(-(T(13)*exp(y(39))*exp(y(23))*getPowerDeriv(exp(y(23)),params(7),1)));
g1(9,25)=(-(T(12)*exp(y(25))*getPowerDeriv(exp(y(25)),1-params(7),1)));
g1(9,39)=(-(T(12)*T(13)));
g1(10,18)=exp(y(18));
g1(10,24)=(-(T(15)*exp(y(40))*exp(y(24))*getPowerDeriv(exp(y(24)),params(7),1)));
g1(10,26)=(-(T(14)*exp(y(26))*getPowerDeriv(exp(y(26)),1-params(7),1)));
g1(10,40)=(-(T(14)*T(15)));
g1(11,3)=(-exp(y(3)));
g1(11,5)=(-((1-params(5))*exp(y(5))));
g1(11,23)=exp(y(23))*exp(y(43));
g1(11,43)=exp(y(23))*exp(y(43));
g1(12,4)=(-exp(y(4)));
g1(12,6)=(-((1-params(5))*exp(y(6))));
g1(12,24)=exp(y(24))*exp(y(43));
g1(12,43)=exp(y(24))*exp(y(43));
g1(13,17)=(-T(16));
g1(13,23)=(-(params(7)/exp(y(41))*(-(exp(y(23))*exp(y(17))*exp(y(31))))/(exp(y(23))*exp(y(23)))));
g1(13,31)=(-T(16));
g1(13,33)=exp(y(33));
g1(13,41)=(-(exp(y(17))*exp(y(31))/exp(y(23))*(-(params(7)*exp(y(41))))/(exp(y(41))*exp(y(41)))));
g1(14,17)=(-T(17));
g1(14,25)=(-((1-params(7))/exp(y(41))*(-(exp(y(25))*exp(y(17))*exp(y(31))))/(exp(y(25))*exp(y(25)))));
g1(14,31)=(-T(17));
g1(14,35)=exp(y(35));
g1(14,41)=(-(exp(y(17))*exp(y(31))/exp(y(25))*(-((1-params(7))*exp(y(41))))/(exp(y(41))*exp(y(41)))));
g1(15,18)=(-T(18));
g1(15,24)=(-(params(7)/exp(y(42))*(-(exp(y(24))*exp(y(18))*exp(y(32))))/(exp(y(24))*exp(y(24)))));
g1(15,32)=(-T(18));
g1(15,34)=exp(y(34));
g1(15,42)=(-(exp(y(18))*exp(y(32))/exp(y(24))*(-(params(7)*exp(y(42))))/(exp(y(42))*exp(y(42)))));
g1(16,18)=(-T(19));
g1(16,26)=(-((1-params(7))/exp(y(42))*(-(exp(y(26))*exp(y(18))*exp(y(32))))/(exp(y(26))*exp(y(26)))));
g1(16,32)=(-T(19));
g1(16,36)=exp(y(36));
g1(16,42)=(-(exp(y(18))*exp(y(32))/exp(y(26))*(-((1-params(7))*exp(y(42))))/(exp(y(42))*exp(y(42)))));
g1(17,13)=(-((1+exp(y(46))-params(5))*exp((-params(3))*y(49))*params(6)*(-(exp(y(13))*exp(y(44))))/(exp(y(13))*exp(y(13)))*T(37)));
g1(17,44)=(-((1+exp(y(46))-params(5))*exp((-params(3))*y(49))*params(6)*T(20)*T(37)));
g1(17,46)=(-(T(22)*exp(y(46))));
g1(17,49)=(-((1+exp(y(46))-params(5))*T(21)*(-params(3))*exp((-params(3))*y(49))));
g1(18,13)=exp(y(35))*exp(y(13))*getPowerDeriv(exp(y(13)),(-params(3)),1);
g1(18,25)=(-(exp(y(25))*getPowerDeriv(exp(y(25)),T(24),1)));
g1(18,35)=T(23);
g1(19,14)=(-((1+exp(y(47))-params(5))*exp((-params(3))*y(49))*params(6)*(-(exp(y(14))*exp(y(45))))/(exp(y(14))*exp(y(14)))*T(39)));
g1(19,45)=(-((1+exp(y(47))-params(5))*exp((-params(3))*y(49))*params(6)*T(25)*T(39)));
g1(19,47)=(-(T(27)*exp(y(47))));
g1(19,49)=(-((1+exp(y(47))-params(5))*T(26)*(-params(3))*exp((-params(3))*y(49))));
g1(20,14)=exp(y(36))*exp(y(14))*getPowerDeriv(exp(y(14)),(-params(3)),1);
g1(20,26)=(-(exp(y(26))*getPowerDeriv(exp(y(26)),T(24),1)));
g1(20,36)=T(28);
g1(21,15)=exp(y(15));
g1(21,17)=(-(exp(y(17))*exp(y(31))));
g1(21,25)=exp(y(25))*exp(y(35));
g1(21,27)=exp(y(27));
g1(21,31)=(-(exp(y(17))*exp(y(31))));
g1(21,35)=exp(y(25))*exp(y(35));
g1(22,16)=exp(y(16));
g1(22,18)=(-(exp(y(18))*exp(y(32))));
g1(22,26)=exp(y(26))*exp(y(36));
g1(22,28)=exp(y(28));
g1(22,32)=(-(exp(y(18))*exp(y(32))));
g1(22,36)=exp(y(26))*exp(y(36));
g1(23,13)=(-params(3));
g1(23,44)=params(3);
g1(23,29)=(-1);
g1(23,49)=params(3);
g1(24,1)=exp(y(43)*(-params(3)))*(-(exp(y(13))*exp(y(1))))/(exp(y(1))*exp(y(1)))*T(36);
g1(24,13)=exp(y(43)*(-params(3)))*T(29)*T(36);
g1(24,2)=(-(T(34)*exp(y(43)*(-params(3)))*(-(exp(y(14))*exp(y(2))))/(exp(y(2))*exp(y(2)))*T(38)));
g1(24,14)=(-(T(34)*exp(y(43)*(-params(3)))*T(31)*T(38)));
g1(24,7)=(-T(35));
g1(24,30)=(-(T(33)*(-(exp(y(30))*exp(y(7))))/(exp(y(30))*exp(y(30)))));
g1(24,43)=T(30)*(-params(3))*exp(y(43)*(-params(3)))-T(34)*T(32)*(-params(3))*exp(y(43)*(-params(3)));
g1(25,13)=(-exp(y(13)));
g1(25,25)=exp(y(25))*exp(y(35));
g1(25,27)=exp(y(27))*params(8);
g1(25,28)=exp(y(28))*exp(y(30))*params(9);
g1(25,29)=(-(y(48)*(-exp((-y(29))))));
g1(25,30)=exp(y(28))*exp(y(30))*params(9);
g1(25,35)=exp(y(25))*exp(y(35));
g1(25,37)=exp((-y(43)));
g1(25,48)=(-exp((-y(29))));
g1(25,43)=y(37)*(-exp((-y(43))));
g1(26,37)=1;
g1(26,38)=1;
g1(27,10)=(-params(11));
g1(27,41)=1;
g1(27,52)=(-1);
g1(28,11)=(-params(12));
g1(28,42)=1;
g1(28,53)=(-1);
g1(29,8)=(-params(13));
g1(29,39)=1;
g1(29,50)=(-1);
g1(30,9)=(-params(14));
g1(30,40)=1;
g1(30,51)=(-1);
g1(31,12)=(-params(15));
g1(31,43)=1;
g1(31,54)=1;

end
