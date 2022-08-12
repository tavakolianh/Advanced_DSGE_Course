function g2 = dynamic_g2(T, y, x, params, steady_state, it_, T_flag)
% function g2 = dynamic_g2(T, y, x, params, steady_state, it_, T_flag)
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
%   g2
%

if T_flag
    T = NK_nonlinear.dynamic_g2_tt(T, y, x, params, steady_state, it_);
end
g2_i = zeros(58,1);
g2_j = zeros(58,1);
g2_v = zeros(58,1);

g2_i(1)=1;
g2_i(2)=1;
g2_i(3)=1;
g2_i(4)=1;
g2_i(5)=1;
g2_i(6)=1;
g2_i(7)=1;
g2_i(8)=1;
g2_i(9)=1;
g2_i(10)=2;
g2_i(11)=2;
g2_i(12)=2;
g2_i(13)=2;
g2_i(14)=2;
g2_i(15)=3;
g2_i(16)=3;
g2_i(17)=3;
g2_i(18)=3;
g2_i(19)=4;
g2_i(20)=4;
g2_i(21)=4;
g2_i(22)=5;
g2_i(23)=5;
g2_i(24)=5;
g2_i(25)=5;
g2_i(26)=6;
g2_i(27)=6;
g2_i(28)=6;
g2_i(29)=6;
g2_i(30)=6;
g2_i(31)=6;
g2_i(32)=6;
g2_i(33)=7;
g2_i(34)=7;
g2_i(35)=7;
g2_i(36)=8;
g2_i(37)=8;
g2_i(38)=9;
g2_i(39)=9;
g2_i(40)=9;
g2_i(41)=9;
g2_i(42)=9;
g2_i(43)=9;
g2_i(44)=10;
g2_i(45)=10;
g2_i(46)=10;
g2_i(47)=10;
g2_i(48)=11;
g2_i(49)=11;
g2_i(50)=11;
g2_i(51)=11;
g2_i(52)=11;
g2_i(53)=11;
g2_i(54)=11;
g2_i(55)=12;
g2_i(56)=12;
g2_i(57)=13;
g2_i(58)=13;
g2_j(1)=97;
g2_j(2)=409;
g2_j(3)=397;
g2_j(4)=133;
g2_j(5)=410;
g2_j(6)=432;
g2_j(7)=134;
g2_j(8)=420;
g2_j(9)=433;
g2_j(10)=97;
g2_j(11)=100;
g2_j(12)=166;
g2_j(13)=121;
g2_j(14)=169;
g2_j(15)=97;
g2_j(16)=101;
g2_j(17)=189;
g2_j(18)=193;
g2_j(19)=269;
g2_j(20)=357;
g2_j(21)=361;
g2_j(22)=145;
g2_j(23)=140;
g2_j(24)=30;
g2_j(25)=289;
g2_j(26)=195;
g2_j(27)=239;
g2_j(28)=200;
g2_j(29)=354;
g2_j(30)=241;
g2_j(31)=246;
g2_j(32)=356;
g2_j(33)=314;
g2_j(34)=336;
g2_j(35)=337;
g2_j(36)=145;
g2_j(37)=289;
g2_j(38)=97;
g2_j(39)=102;
g2_j(40)=212;
g2_j(41)=433;
g2_j(42)=434;
g2_j(43)=456;
g2_j(44)=97;
g2_j(45)=433;
g2_j(46)=435;
g2_j(47)=479;
g2_j(48)=139;
g2_j(49)=7;
g2_j(50)=146;
g2_j(51)=168;
g2_j(52)=1;
g2_j(53)=8;
g2_j(54)=162;
g2_j(55)=73;
g2_j(56)=385;
g2_j(57)=49;
g2_j(58)=361;
g2_v(1)=T(17);
g2_v(2)=(-(params(2)*(1+y(6))*getPowerDeriv(y(18),(-params(1)),2)/y(19)));
g2_v(3)=(-(params(2)*T(11)/y(19)));
g2_v(4)=g2_v(3);
g2_v(5)=(-((-(params(2)*(1+y(6))*T(11)))/(y(19)*y(19))));
g2_v(6)=g2_v(5);
g2_v(7)=(-((-(params(2)*T(2)))/(y(19)*y(19))));
g2_v(8)=g2_v(7);
g2_v(9)=(-((-((-(params(2)*(1+y(6))*T(2)))*(y(19)+y(19))))/(y(19)*y(19)*y(19)*y(19))));
g2_v(10)=(T(1)*T(1)*(-(T(3)*T(17)))-(-(T(3)*T(9)))*(T(1)*T(9)+T(1)*T(9)))/(T(1)*T(1)*T(1)*T(1));
g2_v(11)=(-(T(9)*T(15)))/(T(1)*T(1));
g2_v(12)=g2_v(11);
g2_v(13)=(-((-(1+y(6)+1+y(6)))/((1+y(6))*(1+y(6))*(1+y(6))*(1+y(6)))));
g2_v(14)=params(3)*getPowerDeriv(y(8),(-params(5)),2)/T(1);
g2_v(15)=(T(1)*T(1)*(-(T(4)*T(17)))-(-(T(4)*T(9)))*(T(1)*T(9)+T(1)*T(9)))/(T(1)*T(1)*T(1)*T(1));
g2_v(16)=(-(T(9)*T(16)))/(T(1)*T(1));
g2_v(17)=g2_v(16);
g2_v(18)=params(4)*getPowerDeriv(y(9),params(6),2)/T(1);
g2_v(19)=(-((-1)/(y(16)*y(16))));
g2_v(20)=g2_v(19);
g2_v(21)=(-((-((-y(12))*(y(16)+y(16))))/(y(16)*y(16)*y(16)*y(16))));
g2_v(22)=(-(y(2)*params(8)*getPowerDeriv(y(7),params(7),2)));
g2_v(23)=(-T(12));
g2_v(24)=g2_v(23);
g2_v(25)=(-((1-params(8))*getPowerDeriv(y(13),(-params(7)),2)));
g2_v(26)=(-((-y(16))/(y(11)*y(11))));
g2_v(27)=g2_v(26);
g2_v(28)=(-(1/y(11)));
g2_v(29)=g2_v(28);
g2_v(30)=(-((-((-(y(9)*y(16)))*(y(11)+y(11))))/(y(11)*y(11)*y(11)*y(11))));
g2_v(31)=(-((-y(9))/(y(11)*y(11))));
g2_v(32)=g2_v(31);
g2_v(33)=(-((-(params(7)*(params(7)-1)))/((params(7)-1)*y(15)*(params(7)-1)*y(15))));
g2_v(34)=g2_v(33);
g2_v(35)=(-((-((-(params(7)*y(14)*(params(7)-1)))*((params(7)-1)*(params(7)-1)*y(15)+(params(7)-1)*(params(7)-1)*y(15))))/((params(7)-1)*y(15)*(params(7)-1)*y(15)*(params(7)-1)*y(15)*(params(7)-1)*y(15))));
g2_v(36)=(-(params(8)*getPowerDeriv(y(7),params(7)-1,2)));
g2_v(37)=(-((1-params(8))*getPowerDeriv(y(13),1-params(7),2)));
g2_v(38)=(-(y(10)*T(18)));
g2_v(39)=(-T(10));
g2_v(40)=g2_v(39);
g2_v(41)=(-(y(20)*params(2)*params(8)*getPowerDeriv(y(19),params(7),2)));
g2_v(42)=(-T(13));
g2_v(43)=g2_v(42);
g2_v(44)=(-T(18));
g2_v(45)=(-(y(21)*params(2)*params(8)*getPowerDeriv(y(19),params(7)-1,2)));
g2_v(46)=(-T(14));
g2_v(47)=g2_v(46);
g2_v(48)=(-((-y(8))/(y(1)*y(1))));
g2_v(49)=g2_v(48);
g2_v(50)=(-(1/y(1)));
g2_v(51)=g2_v(50);
g2_v(52)=(-((-((-(y(8)*y(7)))*(y(1)+y(1))))/(y(1)*y(1)*y(1)*y(1))));
g2_v(53)=(-((-y(7))/(y(1)*y(1))));
g2_v(54)=g2_v(53);
g2_v(55)=(-(params(10)*(-1)/(y(4)*y(4))));
g2_v(56)=(-1)/(y(17)*y(17));
g2_v(57)=(-(params(12)*(-1)/(y(3)*y(3))));
g2_v(58)=(-1)/(y(16)*y(16));
g2 = sparse(g2_i,g2_j,g2_v,13,529);
end
