% Dynare code of the BKK model

%Endogenous variables
var c c_star I I_star y y_star a a_star x x_star k k_star l l_star d d_star  int s p_y py_star r r_star w w_star b b_star nu nu_star mu_var mu_star gz;
%Exogenous variables
varexo eps_nu eps_nu_star eps_mu_var eps_mu_star eps_gz; %nu is productivity shock, mu is markup shock

%Parameters
parameters omega rho gamma epsilon delta beta alpha theta_h theta_f omega_star rho_mu rho_mu_star rho_nu rho_nu_star rho_gz;


%Initialize parameters
omega = 0.6; %home bias parameter
omega_star = 0.6;
rho = 0.7; 
%gamma = 2; %from BKK
gamma = 0.8;
epsilon = 2; 
delta = 0.025; %from BKK
beta = 0.99; %from BKK
alpha = 0.36; %capital share from BKK 
theta_h = 0.8;
theta_f = 0.2;
rho_mu = 0.8;
rho_mu_star = 0.8;
rho_nu = 0.8;
rho_nu_star = 0.8;
rho_gz = 0.6;


%Model
model;

% Trade equations
exp(a) + exp(x) = exp(y);
exp(a_star) + exp(x_star) = exp(y_star);
exp(c) + exp(I) = (omega*exp(a)^rho + (1 - omega)*exp(x_star)^rho)^(1/rho); 
exp(c_star) + exp(I_star) = (omega_star*exp(a_star)^rho + (1 - omega_star)*exp(x)^rho)^(1/rho);

% Trade FOCs
exp(p_y) = omega*(omega + (1 - omega)*(exp(x_star)/exp(a))^rho)^((1-rho)/rho); %FOC wrt a (Ga)
exp(s)*exp(py_star) = (1 - omega)*(((omega*exp(a)^rho + (1 - omega)*exp(x_star)^rho)^(1/rho))/exp(x_star))^(1 - rho); %FOC wrt x_star (Gx_star)
exp(py_star) = omega_star*(((omega_star*exp(a_star)^rho + (1 - omega_star)*exp(x)^rho)^(1/rho))/exp(a_star))^(1 - rho); %FOC wrt a_star (G_star a_star)
exp(p_y) = exp(s)*((1 - omega_star)*(omega_star*(exp(a_star)/exp(x))^rho + (1 - omega_star))^((1 - rho)/rho)); %FOC wrt x (G_star x)

% Output and capital evolution
exp(y) = exp(nu)*exp(k)^alpha*exp(l)^(1 - alpha);
exp(y_star) = exp(nu_star)*exp(k_star)^alpha*exp(l_star)^(1 - alpha);
exp(k)*exp(gz) = (1 - delta)*exp(k(-1)) + exp(I(-1)); %%%%%%changes for BK%%%%%%%%%%%%%%%%%%%
exp(k_star)*exp(gz) = (1 - delta)*exp(k_star(-1)) + exp(I_star(-1)); %%%%%%changes for BK%%%%%%%%%%%%%%%%%%%


% Factor prices
exp(r) = (alpha/exp(mu_var))*((exp(p_y)*exp(y))/exp(k));
exp(w) = ((1 - alpha)/exp(mu_var))*((exp(p_y)*exp(y))/exp(l));
exp(r_star) = (alpha/exp(mu_star))*((exp(py_star)*exp(y_star))/exp(k_star));
exp(w_star) = ((1 - alpha)/exp(mu_star))*((exp(py_star)*exp(y_star))/exp(l_star));

% Euler equations and labor conditions
1 = beta*(exp(c(+1))/exp(c))^(-gamma)*exp(-gamma*gz(+1))*(exp(r(+1)) + 1 - delta);
exp(c)^(-gamma)*exp(w) = exp(l)^(1/epsilon);
1 = beta*(exp(c_star(+1))/exp(c_star))^(-gamma)*exp(-gamma*gz(+1))*(exp(r_star(+1)) + 1 - delta);
exp(c_star)^(-gamma)*exp(w_star) = exp(l_star)^(1/epsilon);

% Dividends
exp(d) = exp(p_y)*exp(y) - exp(w)*exp(l) - exp(I);
exp(d_star) = exp(py_star)*exp(y_star) - exp(w_star)*exp(l_star) - exp(I_star);

% International bond
(-int) = log(beta) + (c(+1) - c)*(-gamma) - gamma*gz(+1);

% Closing the model
%(exp(c(+1))/exp(c))^(-gamma)*exp(-gamma*gz(+1)) = (exp(c_star(+1))/exp(c_star))^(-gamma)*exp(-gamma*gz(+1))*(exp(s)/exp(s(+1))); %bond only economy
(exp(c)/exp(c(-1)))^(-gamma)*exp(-gamma*gz) = (exp(c_star)/exp(c_star(-1)))^(-gamma)*exp(-gamma*gz)*(exp(s(-1))/exp(s)); %bond only economy

exp(w)*exp(l) + theta_h*exp(d) + theta_f*exp(s)*exp(d_star) + b*exp(-gz) = exp(c) + exp(-int)*b(+1);
b = -b_star;

mu_var = rho_mu*mu_var(-1)+eps_mu_var;
mu_star = rho_mu_star*mu_star(-1)+eps_mu_star;
nu = rho_nu*nu(-1)+eps_nu;
nu_star = rho_nu_star*nu_star(-1)+eps_nu_star;
gz = rho_gz*gz(-1)-eps_gz;

end;

%Initial guesses for steady state computations (obtained with fsolve from
%Matlab - separate code)
initval;

c=-0.0411436728669302;
c_star=-0.0463720030407756;
I=-1.11328217415105;
I_star=-1.10372274857364;
y=0.877603671242149;
y_star=0.889585261111729;
a=0.650072478422585;
a_star=0.656709678438462;
x=-0.714473691895456;
x_star=-0.681844871964847;
k=2.57559727992431;
k_star=2.58515670550191;
l=-0.0775177336415799;
l_star=-0.0641736763577582;
d=-2.01952256992848;
d_star=-2.00996314434841;
b=-0.00168771908637821;
b_star=0.00168771908637821;
int=0.0100503358554365;
s=-0.00346773870043043;
p_y=-0.629880514809797;
py_star=-0.632302679101342;
r=-3.34952537103881;
r_star=-3.34952537103837;
w=-0.121046212554642;
w_star=-0.124830844260425;
nu=6.08178574243561E-15;
nu_star=6.1406289439319E-15;
mu_var=8.05211453497974E-14;
mu_star=8.11207641971565E-14;
gz=9.67527314022342E-13;

end;

//calculate steady state
% steady(homotopy_mode = 1, homotopy_steps = 50);
%options_.dynatol.f= 1e-3;
steady(solve_algo = 2, maxit = 100000);

//compute eigenvalues
check;

% //define variance of shocks
shocks;
var eps_gz = 1;
end;

//solve and simulate model
stoch_simul(order=1,irf=80);

