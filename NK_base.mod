var 
   x 
   pi 
   ii;
   
varexo
   u
   nu;

parameters
   siggma
   r_bar
   betta
   ommega
   kappa
   rho_i
   delta_pi
   delta_x;
   
siggma     = 1.5;
r_bar      = 0.03;
betta      = 0.99;
ommega     = 0.6;
kappa      = (1-ommega)*(1-betta*ommega)/ommega;
rho_i      = 0.8;
delta_pi   = 1.5;
delta_x    = 1.5;


model(linear);

x  = x(+1) - (1/siggma) * (ii - pi(+1) - r_bar) + u;

pi = betta * pi(+1) + kappa * x;

ii = rho_i * ii(-1) + (1 - rho_i) * ( r_bar + delta_pi * pi + delta_x * x) + nu;

end;

initval;
  x  = 0;
  pi = 0;
  ii = 0;
end;

steady;
check;

shocks;
var u; stderr 0.01; 

var nu; stderr 0.01; 
end;


stoch_simul(periods=10000, irf=10, graph_format = (pdf, eps));








   

