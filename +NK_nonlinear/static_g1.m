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
    T = NK_nonlinear.static_g1_tt(T, y, x, params);
end
g1 = zeros(13, 13);
g1(1,1)=T(7)-params(2)*(1+y(2))*T(7)/y(3);
g1(1,2)=(-(T(1)*params(2)/y(3)));
g1(1,3)=(-((-(T(1)*params(2)*(1+y(2))))/(y(3)*y(3))));
g1(2,1)=(-(T(2)*T(7)))/(T(1)*T(1));
g1(2,2)=(-(1/((1+y(2))*(1+y(2)))));
g1(2,4)=params(3)*getPowerDeriv(y(4),(-params(5)),1)/T(1);
g1(3,1)=(-(T(3)*T(7)))/(T(1)*T(1));
g1(3,5)=params(4)*getPowerDeriv(y(5),params(6),1)/T(1);
g1(3,8)=(-1);
g1(4,6)=1;
g1(4,8)=(-(1/y(12)));
g1(4,12)=(-((-y(8))/(y(12)*y(12))));
g1(5,3)=(-(y(7)*params(8)*T(9)));
g1(5,7)=1-params(8)*T(4);
g1(5,9)=(-((1-params(8))*getPowerDeriv(y(9),(-params(7)),1)));
g1(6,1)=1;
g1(6,5)=(-(y(12)/y(7)));
g1(6,7)=(-((-(y(5)*y(12)))/(y(7)*y(7))));
g1(6,12)=(-(y(5)/y(7)));
g1(7,9)=1;
g1(7,10)=(-(params(7)/((params(7)-1)*y(11))));
g1(7,11)=(-((-(params(7)*y(10)*(params(7)-1)))/((params(7)-1)*y(11)*(params(7)-1)*y(11))));
g1(8,3)=(-(params(8)*T(10)));
g1(8,9)=(-((1-params(8))*getPowerDeriv(y(9),1-params(7),1)));
g1(9,1)=(-(y(6)*T(8)));
g1(9,3)=(-(y(10)*params(2)*params(8)*T(9)));
g1(9,6)=(-T(6));
g1(9,10)=1-T(4)*params(2)*params(8);
g1(10,1)=(-T(8));
g1(10,3)=(-(y(11)*params(2)*params(8)*T(10)));
g1(10,11)=1-T(5)*params(2)*params(8);
g1(11,3)=(-1);
g1(11,13)=1;
g1(12,13)=1/y(13)-params(10)*1/y(13);
g1(13,12)=1/y(12)-params(12)*1/y(12);
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
