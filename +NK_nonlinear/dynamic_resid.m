function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
% function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
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
%   residual
%

if T_flag
    T = NK_nonlinear.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(13, 1);
lhs = T(1);
rhs = params(2)*(1+y(6))*T(2)/y(19);
residual(1) = lhs - rhs;
lhs = T(3)/T(1);
rhs = y(6)/(1+y(6));
residual(2) = lhs - rhs;
lhs = T(4)/T(1);
rhs = y(12);
residual(3) = lhs - rhs;
lhs = y(10);
rhs = y(12)/y(16);
residual(4) = lhs - rhs;
lhs = y(11);
rhs = (1-params(8))*y(13)^(-params(7))+T(5)*y(2);
residual(5) = lhs - rhs;
lhs = y(5);
rhs = y(9)*y(16)/y(11);
residual(6) = lhs - rhs;
lhs = y(13);
rhs = params(7)*y(14)/((params(7)-1)*y(15));
residual(7) = lhs - rhs;
lhs = 1;
rhs = (1-params(8))*y(13)^(1-params(7))+params(8)*y(7)^(params(7)-1);
residual(8) = lhs - rhs;
lhs = y(14);
rhs = y(10)*T(6)+T(7)*y(20);
residual(9) = lhs - rhs;
lhs = y(15);
rhs = T(6)+T(8)*y(21);
residual(10) = lhs - rhs;
lhs = y(17);
rhs = y(8)*y(7)/y(1);
residual(11) = lhs - rhs;
lhs = log(y(17));
rhs = params(10)*log(y(4))+x(it_, 1);
residual(12) = lhs - rhs;
lhs = log(y(16));
rhs = params(12)*log(y(3))+x(it_, 2);
residual(13) = lhs - rhs;

end
