%Roberto Baltieri Mauad
%Replicating ABCs of RBCs chapter 12.

var w r c p m n k y h rn rf g lambda;

varexo eg elambda;


parameters beta B delta theta pi gamma;
beta = .99;
delta = .025;
theta = .36;
B = -2.5805;
pi = 0.9; %AR money growth shock
gamma = 0.95;
% input param values


model;
B/w = -beta*p/p(+1)*c(+1);
1/w = (beta*r(+1)+1-delta)/w(+1);
%rn = -w/B*c;
%-w/B*c = 1/(beta*p*c/p(+1)*c(+1));
rn = 1/(beta*p*c/p(+1)*c(+1));
p*c = m(-1) - n;
m/p + k(+1) = w*h + r*k + (1-delta)*k + rn*n/p;
rf*w = (1-theta)*lambda*k^theta*h^(-theta);
r = theta*lambda*k^(theta-1)*h^(1-theta);
y = lambda*k^theta*h^(1-theta);
rf*(n +(g-1)*m(-1)) = rn*n;
n+(g-1)*m(-1) = p*w*h;
m = g*m(-1);
log(g) = pi*log(g(-1)) + eg;
log(lambda) = gamma*log(lambda(-1)) + elambda;
end;

initval;

g = 1;
r = 0.035;
rn = 1.01;
rf = 1.01;
p = 1;
m = 1.66*p;
n = 0.76*p;
c = 0.9;
y = 1.21;
w = 2.34;
h = 0.32;
k = 12.41;
lambda = 1; %guess


end;

shocks;
    var eg= 1;
    var elambda= 1; 
end;

steady;


stoch_simul(order=1,irf=50);

