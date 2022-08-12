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
    T = NK_nonlinear.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(13, 23);
g1(1,5)=T(9);
g1(1,18)=(-(params(2)*(1+y(6))*T(11)/y(19)));
g1(1,6)=(-(params(2)*T(2)/y(19)));
g1(1,19)=(-((-(params(2)*(1+y(6))*T(2)))/(y(19)*y(19))));
g1(2,5)=(-(T(3)*T(9)))/(T(1)*T(1));
g1(2,6)=(-(1/((1+y(6))*(1+y(6)))));
g1(2,8)=T(15)/T(1);
g1(3,5)=(-(T(4)*T(9)))/(T(1)*T(1));
g1(3,9)=T(16)/T(1);
g1(3,12)=(-1);
g1(4,10)=1;
g1(4,12)=(-(1/y(16)));
g1(4,16)=(-((-y(12))/(y(16)*y(16))));
g1(5,7)=(-(y(2)*T(12)));
g1(5,2)=(-T(5));
g1(5,11)=1;
g1(5,13)=(-((1-params(8))*getPowerDeriv(y(13),(-params(7)),1)));
g1(6,5)=1;
g1(6,9)=(-(y(16)/y(11)));
g1(6,11)=(-((-(y(9)*y(16)))/(y(11)*y(11))));
g1(6,16)=(-(y(9)/y(11)));
g1(7,13)=1;
g1(7,14)=(-(params(7)/((params(7)-1)*y(15))));
g1(7,15)=(-((-(params(7)*y(14)*(params(7)-1)))/((params(7)-1)*y(15)*(params(7)-1)*y(15))));
g1(8,7)=(-(params(8)*getPowerDeriv(y(7),params(7)-1,1)));
g1(8,13)=(-((1-params(8))*getPowerDeriv(y(13),1-params(7),1)));
g1(9,5)=(-(y(10)*T(10)));
g1(9,19)=(-(y(20)*T(13)));
g1(9,10)=(-T(6));
g1(9,14)=1;
g1(9,20)=(-T(7));
g1(10,5)=(-T(10));
g1(10,19)=(-(y(21)*T(14)));
g1(10,15)=1;
g1(10,21)=(-T(8));
g1(11,7)=(-(y(8)/y(1)));
g1(11,1)=(-((-(y(8)*y(7)))/(y(1)*y(1))));
g1(11,8)=(-(y(7)/y(1)));
g1(11,17)=1;
g1(12,4)=(-(params(10)*1/y(4)));
g1(12,17)=1/y(17);
g1(12,22)=(-1);
g1(13,3)=(-(params(12)*1/y(3)));
g1(13,16)=1/y(16);
g1(13,23)=(-1);

end
