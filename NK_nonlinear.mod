var 

       c        $C$        (long_name='Consumption'),
       ii       $i$        (long_name='Interest Rate'),
       pi       $\pi$      (long_name='Inflation'),
       m        $m$        (long_name='Real balances'),
       N        $N$        (long_name='Labor'), 
       phi      $\varphi$  (long_name='Marginal cost'), 
       Delta    $\Delta$  (long_name='Price Dispersion'), 
       w        $w$        (long_name='Wage'),
       s        $s$        (long_name='Optimal price'), 
       g1       $g1$       (long_name='NKPC Var1'), 
       g2       $g2$       (long_name='NKPC Var2'), 
       z        $z$        (long_name='Technology shock'),
       m_dot    $\dot{M}$  (long_name='Nominal money growth');

varexo  

       nu       $\nu$                 (long_name='Monetary shock') 
       eps_z    $\varepsilon^{z}$     (long_name='Technology shock');

parameters 

       siggma       $\sigma$       (long_name='Inverse of intertemporal elasticity') 
       betta        $\beta$        (long_name='Intertemporal discount factor') 
       gama         $\gamma$       (long_name='Real balances parameter') 
       chi          $\chi$         (long_name='Labor parameter')
       b            $b$            (long_name='Inverse of interest elasticity')
       etta         $\eta$         (long_name='Inverse of Fisch elasticity')
       thetta       $\theta$       (long_name='Elasticity of substitution') 
       omegga       $\omega$       (long_name='Calvo price setting parameter') 
       mu           $\mu$          (long_name='mark-up')
       rho_m        $\rho_{m}$     (long_name='Monetary policy AR') 
       delta_pi     $\delta_{\pi}$ (long_name='Taylor rule parameter') 
       rho_z        $\rho_z$       (long_name='Technology AR');  


       siggma   = 2.5;
       betta    = 0.99;
       gama     = 0.01;
       etta     = 1.5;
       omegga   = 0.6;
       rho_m    = 0.6;
       delta_pi = 1.5;
       thetta   = 1.5;
       mu       = thetta/(thetta-1);
       chi      = 1;
       b        = 2;
       rho_z    = 0.8;


model;
c^(-siggma) = betta * (1 + ii) * c(+1)^(-siggma) / pi(+1);

gama * m^(-b) / c^(-siggma) = ii / (1 + ii);

chi * N^etta / c^(-siggma) = w;

phi = w / z;

Delta = (1 - omegga) * s^(-thetta) + omegga * pi^thetta * Delta(-1);

c = z * N / Delta;

s = thetta * g1 / ((thetta - 1) * g2);

1 = (1 - omegga) * s^(1 - thetta) + omegga * pi^(thetta - 1);

g1 = c^(1 - siggma) * phi + omegga * betta * pi(+1)^thetta * g1(+1);

g2 = c^(1 - siggma) + omegga * betta * pi(+1)^(thetta - 1) * g2(+1);

m_dot = m * pi / m(-1);

log(m_dot) = rho_m * log(m_dot(-1)) + nu;

log(z) = rho_z * log(z(-1)) + eps_z;
end;

steady_state_model;
m_dot   = 1;
z       = 1;
s       = 1;
pi      = 1;
Delta   =  1;
ii      = (1-betta)/betta;
phi     = (thetta-1)/thetta;
w       = phi;
c       = (w/chi)^(1/(etta+siggma));
N       = c;
g1      = c^(1-siggma)*phi/(1-omegga*betta);
g2      = g1*thetta/(thetta-1);
m       = ((1-betta)/gama)^(1/b)*c^(siggma/b);
end;


write_latex_dynamic_model(write_equation_tags);

write_latex_parameter_table;

write_latex_definitions;

collect_latex_files;

//write_latex_prior_table;



steady;
check;

shocks;
var     eps_z;      
stderr   0.01;
var     nu;
stderr  0.01;
end;
stoch_simul(periods=10000, irf=30, order=2, graph_format=(eps,pdf));







