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
    T = JQ_2012_mp_v2.static_g1_tt(T, y, x, params);
end
g1 = zeros(14, 14);
g1(1,1)=(-(y(3)*y(6)*getPowerDeriv(y(1),params(7),1)))/(T(2)*T(2));
g1(1,2)=(-(params(3)/((1-y(2))*(1-y(2)))));
g1(1,3)=1/T(2);
g1(1,6)=(-(y(3)*T(1)))/(T(2)*T(2));
g1(2,1)=T(10)/y(6)-params(2)*(y(8)+y(14))*T(10)/(1+y(6));
g1(2,6)=(-T(3))/(y(6)*y(6))-params(2)*(y(8)+y(14))*(-T(3))/((1+y(6))*(1+y(6)));
g1(2,8)=(-(params(2)*T(3)/(1+y(6))));
g1(2,14)=(-(params(2)*T(3)/(1+y(6))));
g1(3,2)=y(3);
g1(3,3)=y(2);
g1(3,6)=y(9);
g1(3,7)=(-1);
g1(3,8)=1;
g1(3,9)=y(6);
g1(4,1)=1;
g1(4,7)=(-1);
g1(4,9)=(-1);
g1(5,2)=(1-params(1))*y(11)*T(4)*getPowerDeriv(y(2),(-params(1)),1);
g1(5,3)=(-(1/(1-y(10)*(1+2*params(6)*(y(8)-(y(8)))))));
g1(5,4)=T(5)*(1-params(1))*y(11)*T(12);
g1(5,10)=(-(y(3)*(1+2*params(6)*(y(8)-(y(8))))/((1-y(10)*(1+2*params(6)*(y(8)-(y(8)))))*(1-y(10)*(1+2*params(6)*(y(8)-(y(8))))))));
g1(5,11)=T(5)*(1-params(1))*T(4);
g1(6,2)=params(2)*T(7)*T(11);
g1(6,4)=params(2)*T(8)*y(11)*params(1)*(1-y(10)*(1+2*params(6)*(y(8)-(y(8)))))*getPowerDeriv(y(4),params(1)-1,1);
g1(6,10)=params(2)*T(8)*T(6)*y(11)*params(1)*(-(1+2*params(6)*(y(8)-(y(8)))))+(1+2*params(6)*(y(8)-(y(8))))*y(12);
g1(6,11)=params(2)*T(8)*params(1)*(1-y(10)*(1+2*params(6)*(y(8)-(y(8)))))*T(6);
g1(6,12)=y(10)*(1+2*params(6)*(y(8)-(y(8))));
g1(7,5)=params(2)+(1+2*params(6)*(y(8)-(y(8))))*y(10)*y(12)*((1-params(5))*(y(5)-params(5))-y(5)*(1-params(5)))/((y(5)-params(5))*(y(5)-params(5)));
g1(7,10)=T(9)*(1+2*params(6)*(y(8)-(y(8))))*y(12);
g1(7,12)=y(10)*(1+2*params(6)*(y(8)-(y(8))))*T(9);
g1(8,2)=y(11)*T(4)*T(11)-y(3);
g1(8,3)=(-y(2));
g1(8,4)=1-params(4)+T(8)*y(11)*T(12)-1;
g1(8,5)=(-y(9))/(y(5)*y(5));
g1(8,8)=(-1);
g1(8,9)=1/y(5)-1;
g1(8,11)=T(4)*T(8);
g1(9,2)=(-(y(11)*T(4)*T(11)));
g1(9,4)=y(12)-T(8)*y(11)*T(12);
g1(9,5)=y(12)*(-(y(9)*(-(1-params(5)))/((y(5)-params(5))*(y(5)-params(5)))));
g1(9,9)=y(12)*(-((1-params(5))/(y(5)-params(5))));
g1(9,11)=(-(T(4)*T(8)));
g1(9,12)=y(4)-y(9)*(1-params(5))/(y(5)-params(5));
g1(10,11)=T(13)-params(10)*T(13);
g1(11,12)=T(14)-params(11)*T(14);
g1(12,5)=y(9)+y(7)*(y(13)-1);
g1(12,6)=(-y(9));
g1(12,7)=y(5)*(y(13)-1);
g1(12,9)=y(5)-y(6);
g1(12,13)=y(7)*y(5);
g1(13,2)=(-y(3));
g1(13,3)=(-y(2));
g1(13,7)=y(13)-1;
g1(13,9)=1;
g1(13,13)=y(7);
g1(14,13)=1-params(12);
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
