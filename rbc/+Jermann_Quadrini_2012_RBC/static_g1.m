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
    T = Jermann_Quadrini_2012_RBC.static_g1_tt(T, y, x, params);
end
g1 = zeros(22, 22);
g1(1,1)=(-(y(3)*getPowerDeriv(y(1),params(7),1)))/(T(1)*T(1));
g1(1,2)=(-(params(3)/((1-y(2))*(1-y(2)))));
g1(1,3)=1/T(1);
g1(2,1)=T(12)-params(2)*(y(5)-params(5))/(1-params(5))*T(12);
g1(2,5)=(-(T(2)*params(2)*1/(1-params(5))));
g1(3,1)=(-1);
g1(3,2)=y(3);
g1(3,3)=y(2);
g1(3,5)=(-((-y(8))/(y(5)*y(5))));
g1(3,7)=1;
g1(3,8)=1-1/y(5);
g1(4,2)=(1-params(1))*y(11)*T(3)*getPowerDeriv(y(2),(-params(1)),1);
g1(4,3)=(-(1/(1-y(9)*(1+2*params(6)*(y(7)-(y(7)))))));
g1(4,4)=T(4)*(1-params(1))*y(11)*T(14);
g1(4,9)=(-(y(3)*(1+2*params(6)*(y(7)-(y(7))))/((1-y(9)*(1+2*params(6)*(y(7)-(y(7)))))*(1-y(9)*(1+2*params(6)*(y(7)-(y(7))))))));
g1(4,11)=T(4)*(1-params(1))*T(3);
g1(5,2)=params(2)*T(6)*T(13);
g1(5,4)=params(2)*T(7)*y(11)*params(1)*(1-y(9)*(1+2*params(6)*(y(7)-(y(7)))))*getPowerDeriv(y(4),params(1)-1,1);
g1(5,9)=params(2)*T(7)*T(5)*y(11)*params(1)*(-(1+2*params(6)*(y(7)-(y(7)))))+(1+2*params(6)*(y(7)-(y(7))))*y(12);
g1(5,11)=params(2)*T(7)*params(1)*(1-y(9)*(1+2*params(6)*(y(7)-(y(7)))))*T(5);
g1(5,12)=y(9)*(1+2*params(6)*(y(7)-(y(7))));
g1(6,5)=params(2)+(1+2*params(6)*(y(7)-(y(7))))*y(9)*y(12)*((y(5)-params(5))*(1-params(5))-y(5)*(1-params(5)))/((y(5)-params(5))*(y(5)-params(5)));
g1(6,9)=T(8)*(1+2*params(6)*(y(7)-(y(7))))*y(12);
g1(6,12)=y(9)*(1+2*params(6)*(y(7)-(y(7))))*T(8);
g1(7,2)=y(11)*T(3)*T(13)-y(3);
g1(7,3)=(-y(2));
g1(7,4)=1-params(4)+T(7)*y(11)*T(14)-1;
g1(7,5)=(-y(8))/(y(5)*y(5));
g1(7,7)=(-1);
g1(7,8)=1/y(5)-1;
g1(7,11)=T(3)*T(7);
g1(8,2)=(-(y(11)*T(3)*T(13)));
g1(8,4)=y(12)-T(7)*y(11)*T(14);
g1(8,5)=y(12)*(-(y(8)*(-(1-params(5)))/((y(5)-params(5))*(y(5)-params(5)))));
g1(8,8)=y(12)*(-((1-params(5))/(y(5)-params(5))));
g1(8,11)=(-(T(3)*T(7)));
g1(8,12)=y(4)-y(8)*(1-params(5))/(y(5)-params(5));
g1(9,11)=T(15)-params(11)*T(15);
g1(9,12)=(-(params(12)*T(16)));
g1(10,11)=(-(params(13)*T(15)));
g1(10,12)=T(16)-params(14)*T(16);
g1(11,2)=(-(y(11)*T(3)*T(13)));
g1(11,4)=(-(T(7)*y(11)*T(14)));
g1(11,11)=(-(T(3)*T(7)));
g1(11,13)=1;
g1(12,4)=(-(1-(1-params(4))));
g1(12,14)=1;
g1(13,7)=(-1);
g1(13,10)=1-params(2);
g1(14,5)=(-(1/(1-params(5))));
g1(14,6)=1;
g1(15,13)=(-(1/y(13)-1/(y(13))));
g1(15,15)=1;
g1(16,1)=(-(1/y(1)-1/(y(1))));
g1(16,16)=1;
g1(17,14)=(-(1/y(14)-1/(y(14))));
g1(17,17)=1;
g1(18,2)=(-(1/y(2)-1/(y(2))));
g1(18,18)=1;
g1(19,9)=(-(1/y(9)-1/(y(9))));
g1(19,21)=1;
g1(20,19)=1;
g1(21,7)=(-(1/y(13)));
g1(21,13)=(-((-y(7))/(y(13)*y(13))));
g1(21,20)=1;
g1(22,4)=(-((-y(10))/((y(4)-y(8))*(y(4)-y(8)))/T(11)-(-y(10))/((y(4)-y(8))*(y(4)-y(8)))/(T(11))));
g1(22,8)=(-(y(10)/((y(4)-y(8))*(y(4)-y(8)))/T(11)-y(10)/((y(4)-y(8))*(y(4)-y(8)))/(T(11))));
g1(22,10)=(-(1/(y(4)-y(8))/T(11)-1/(y(4)-y(8))/(T(11))));
g1(22,22)=1;
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
