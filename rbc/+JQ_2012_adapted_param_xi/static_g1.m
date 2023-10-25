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
    T = JQ_2012_adapted_param_xi.static_g1_tt(T, y, x, params);
end
g1 = zeros(9, 9);
g1(1,1)=(-(y(3)*getPowerDeriv(y(1),params(7),1)))/(T(1)*T(1));
g1(1,2)=(-(params(3)/((1-y(2))*(1-y(2)))));
g1(1,3)=1/T(1);
g1(2,1)=T(8)-params(2)*(y(5)-params(5))/(1-params(5))*T(8);
g1(2,5)=(-(T(2)*params(2)*1/(1-params(5))));
g1(3,1)=(-1);
g1(3,2)=y(3);
g1(3,3)=y(2);
g1(3,5)=(-((-y(7))/(y(5)*y(5))));
g1(3,6)=1;
g1(3,7)=1-1/y(5);
g1(4,2)=(1-params(1))*y(9)*T(3)*getPowerDeriv(y(2),(-params(1)),1);
g1(4,3)=(-(1/(1-y(8)*(1+2*params(6)*(y(6)-(y(6)))))));
g1(4,4)=T(4)*(1-params(1))*y(9)*T(10);
g1(4,8)=(-(y(3)*(1+2*params(6)*(y(6)-(y(6))))/((1-y(8)*(1+2*params(6)*(y(6)-(y(6)))))*(1-y(8)*(1+2*params(6)*(y(6)-(y(6))))))));
g1(4,9)=T(4)*(1-params(1))*T(3);
g1(5,2)=params(2)*T(6)*T(9);
g1(5,4)=params(2)*T(7)*y(9)*params(1)*(1-y(8)*(1+2*params(6)*(y(6)-(y(6)))))*getPowerDeriv(y(4),params(1)-1,1);
g1(5,8)=params(2)*T(7)*T(5)*y(9)*params(1)*(-(1+2*params(6)*(y(6)-(y(6)))))+(1+2*params(6)*(y(6)-(y(6))))*params(12);
g1(5,9)=params(2)*T(7)*params(1)*(1-y(8)*(1+2*params(6)*(y(6)-(y(6)))))*T(5);
g1(6,5)=params(2)+(1+2*params(6)*(y(6)-(y(6))))*y(8)*params(12)*((y(5)-params(5))*(1-params(5))-y(5)*(1-params(5)))/((y(5)-params(5))*(y(5)-params(5)));
g1(6,8)=y(5)*(1-params(5))/(y(5)-params(5))*(1+2*params(6)*(y(6)-(y(6))))*params(12);
g1(7,2)=y(9)*T(3)*T(9)-y(3);
g1(7,3)=(-y(2));
g1(7,4)=1-params(4)+T(7)*y(9)*T(10)-1;
g1(7,5)=(-y(7))/(y(5)*y(5));
g1(7,6)=(-1);
g1(7,7)=1/y(5)-1;
g1(7,9)=T(3)*T(7);
g1(8,2)=(-(y(9)*T(3)*T(9)));
g1(8,4)=params(12)-T(7)*y(9)*T(10);
g1(8,5)=params(12)*(-(y(7)*(-(1-params(5)))/((y(5)-params(5))*(y(5)-params(5)))));
g1(8,7)=params(12)*(-((1-params(5))/(y(5)-params(5))));
g1(8,9)=(-(T(3)*T(7)));
g1(9,9)=T(11)-params(10)*T(11);
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
