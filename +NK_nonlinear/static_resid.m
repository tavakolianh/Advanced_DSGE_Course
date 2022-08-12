function residual = static_resid(T, y, x, params, T_flag)
% function residual = static_resid(T, y, x, params, T_flag)
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
%   residual
%

if T_flag
    T = NK_nonlinear.static_resid_tt(T, y, x, params);
end
residual = zeros(13, 1);
lhs = T(1);
rhs = T(1)*params(2)*(1+y(2))/y(3);
residual(1) = lhs - rhs;
lhs = T(2)/T(1);
rhs = y(2)/(1+y(2));
residual(2) = lhs - rhs;
lhs = T(3)/T(1);
rhs = y(8);
residual(3) = lhs - rhs;
lhs = y(6);
rhs = y(8)/y(12);
residual(4) = lhs - rhs;
lhs = y(7);
rhs = (1-params(8))*y(9)^(-params(7))+y(7)*params(8)*T(4);
residual(5) = lhs - rhs;
lhs = y(1);
rhs = y(5)*y(12)/y(7);
residual(6) = lhs - rhs;
lhs = y(9);
rhs = params(7)*y(10)/((params(7)-1)*y(11));
residual(7) = lhs - rhs;
lhs = 1;
rhs = (1-params(8))*y(9)^(1-params(7))+params(8)*T(5);
residual(8) = lhs - rhs;
lhs = y(10);
rhs = y(6)*T(6)+y(10)*T(4)*params(2)*params(8);
residual(9) = lhs - rhs;
lhs = y(11);
rhs = T(6)+y(11)*T(5)*params(2)*params(8);
residual(10) = lhs - rhs;
lhs = y(13);
rhs = y(3);
residual(11) = lhs - rhs;
lhs = log(y(13));
rhs = log(y(13))*params(10)+x(1);
residual(12) = lhs - rhs;
lhs = log(y(12));
rhs = log(y(12))*params(12)+x(2);
residual(13) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
