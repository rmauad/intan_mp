function g1 = static_g1(T, y, x, params, T_flag)
% function g1 = static_g1(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   g1
%

if T_flag
    T = bkk_v7_bo_withbonds_shocks.static_g1_tt(T, y, x, params);
end
g1 = zeros(31, 31);
g1(1,5)=(-exp(y(5)));
g1(1,7)=exp(y(7));
g1(1,9)=exp(y(9));
g1(2,6)=(-exp(y(6)));
g1(2,8)=exp(y(8));
g1(2,10)=exp(y(10));
g1(3,1)=exp(y(1));
g1(3,3)=exp(y(3));
g1(3,7)=(-T(24));
g1(3,10)=(-T(34));
g1(4,2)=exp(y(2));
g1(4,4)=exp(y(4));
g1(4,8)=(-T(29));
g1(4,9)=(-T(33));
g1(5,7)=(-(params(1)*(1-params(1))*(-(exp(y(7))*exp(y(10))))/(exp(y(7))*exp(y(7)))*T(25)*T(26)));
g1(5,10)=(-(params(1)*T(26)*(1-params(1))*T(6)*T(25)));
g1(5,19)=exp(y(19));
g1(6,7)=(-((1-params(1))*T(24)/exp(y(10))*T(27)));
g1(6,10)=(-((1-params(1))*T(27)*(exp(y(10))*T(34)-exp(y(10))*T(3))/(exp(y(10))*exp(y(10)))));
g1(6,18)=exp(y(18))*exp(y(20));
g1(6,20)=exp(y(18))*exp(y(20));
g1(7,8)=(-(params(10)*(exp(y(8))*T(29)-exp(y(8))*T(5))/(exp(y(8))*exp(y(8)))*T(30)));
g1(7,9)=(-(params(10)*T(30)*T(33)/exp(y(8))));
g1(7,20)=exp(y(20));
g1(8,8)=(-(exp(y(18))*(1-params(10))*params(10)*T(9)*T(31)*T(32)));
g1(8,9)=(-(exp(y(18))*(1-params(10))*T(32)*params(10)*T(31)*(-(exp(y(9))*exp(y(8))))/(exp(y(9))*exp(y(9)))));
g1(8,18)=(-T(11));
g1(8,19)=exp(y(19));
g1(9,5)=exp(y(5));
g1(9,11)=(-(T(13)*exp(y(27))*exp(y(11))*getPowerDeriv(exp(y(11)),params(7),1)));
g1(9,13)=(-(T(12)*exp(y(13))*getPowerDeriv(exp(y(13)),1-params(7),1)));
g1(9,27)=(-(T(12)*T(13)));
g1(10,6)=exp(y(6));
g1(10,12)=(-(T(15)*exp(y(28))*exp(y(12))*getPowerDeriv(exp(y(12)),params(7),1)));
g1(10,14)=(-(T(14)*exp(y(14))*getPowerDeriv(exp(y(14)),1-params(7),1)));
g1(10,28)=(-(T(14)*T(15)));
g1(11,3)=(-exp(y(3)));
g1(11,11)=exp(y(11))*exp(y(31))-exp(y(11))*(1-params(5));
g1(11,31)=exp(y(11))*exp(y(31));
g1(12,4)=(-exp(y(4)));
g1(12,12)=exp(y(12))*exp(y(31))-exp(y(12))*(1-params(5));
g1(12,31)=exp(y(12))*exp(y(31));
g1(13,5)=(-T(16));
g1(13,11)=(-(params(7)/exp(y(29))*(-(exp(y(11))*exp(y(5))*exp(y(19))))/(exp(y(11))*exp(y(11)))));
g1(13,19)=(-T(16));
g1(13,21)=exp(y(21));
g1(13,29)=(-(exp(y(5))*exp(y(19))/exp(y(11))*(-(params(7)*exp(y(29))))/(exp(y(29))*exp(y(29)))));
g1(14,5)=(-T(17));
g1(14,13)=(-((1-params(7))/exp(y(29))*(-(exp(y(13))*exp(y(5))*exp(y(19))))/(exp(y(13))*exp(y(13)))));
g1(14,19)=(-T(17));
g1(14,23)=exp(y(23));
g1(14,29)=(-(exp(y(5))*exp(y(19))/exp(y(13))*(-((1-params(7))*exp(y(29))))/(exp(y(29))*exp(y(29)))));
g1(15,6)=(-T(18));
g1(15,12)=(-(params(7)/exp(y(30))*(-(exp(y(12))*exp(y(6))*exp(y(20))))/(exp(y(12))*exp(y(12)))));
g1(15,20)=(-T(18));
g1(15,22)=exp(y(22));
g1(15,30)=(-(exp(y(6))*exp(y(20))/exp(y(12))*(-(params(7)*exp(y(30))))/(exp(y(30))*exp(y(30)))));
g1(16,6)=(-T(19));
g1(16,14)=(-((1-params(7))/exp(y(30))*(-(exp(y(14))*exp(y(6))*exp(y(20))))/(exp(y(14))*exp(y(14)))));
g1(16,20)=(-T(19));
g1(16,24)=exp(y(24));
g1(16,30)=(-(exp(y(6))*exp(y(20))/exp(y(14))*(-((1-params(7))*exp(y(30))))/(exp(y(30))*exp(y(30)))));
g1(17,21)=(-(exp(y(21))*params(6)*exp(y(31)*(-params(3)))));
g1(17,31)=(-((1+exp(y(21))-params(5))*params(6)*(-params(3))*exp(y(31)*(-params(3)))));
g1(18,1)=exp(y(23))*exp(y(1))*getPowerDeriv(exp(y(1)),(-params(3)),1);
g1(18,13)=(-(exp(y(13))*getPowerDeriv(exp(y(13)),T(21),1)));
g1(18,23)=T(20);
g1(19,22)=(-(exp(y(22))*params(6)*exp(y(31)*(-params(3)))));
g1(19,31)=(-((1+exp(y(22))-params(5))*params(6)*(-params(3))*exp(y(31)*(-params(3)))));
g1(20,2)=exp(y(24))*exp(y(2))*getPowerDeriv(exp(y(2)),(-params(3)),1);
g1(20,14)=(-(exp(y(14))*getPowerDeriv(exp(y(14)),T(21),1)));
g1(20,24)=T(22);
g1(21,3)=exp(y(3));
g1(21,5)=(-(exp(y(5))*exp(y(19))));
g1(21,13)=exp(y(13))*exp(y(23));
g1(21,15)=exp(y(15));
g1(21,19)=(-(exp(y(5))*exp(y(19))));
g1(21,23)=exp(y(13))*exp(y(23));
g1(22,4)=exp(y(4));
g1(22,6)=(-(exp(y(6))*exp(y(20))));
g1(22,14)=exp(y(14))*exp(y(24));
g1(22,16)=exp(y(16));
g1(22,20)=(-(exp(y(6))*exp(y(20))));
g1(22,24)=exp(y(14))*exp(y(24));
g1(23,17)=(-1);
g1(23,31)=params(3);
g1(25,1)=(-exp(y(1)));
g1(25,13)=exp(y(13))*exp(y(23));
g1(25,15)=exp(y(15))*params(8);
g1(25,16)=exp(y(16))*exp(y(18))*params(9);
g1(25,17)=(-(y(25)*(-exp((-y(17))))));
g1(25,18)=exp(y(16))*exp(y(18))*params(9);
g1(25,23)=exp(y(13))*exp(y(23));
g1(25,25)=exp((-y(31)))-exp((-y(17)));
g1(25,31)=y(25)*(-exp((-y(31))));
g1(26,25)=1;
g1(26,26)=1;
g1(27,29)=1-params(11);
g1(28,30)=1-params(12);
g1(29,27)=1-params(13);
g1(30,28)=1-params(14);
g1(31,31)=1-params(15);
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
