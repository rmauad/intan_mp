        
var c n w k Rf Rhh m d b mu z xi g;

varexo eps_z eps_xi eps_g;

parameters theta betta alppha delta tau kappa siggma sigma_z sigma_xi A11 A22 rhog
        % xi
        ;
     
        siggma=1;
        theta = 0.36;
        betta = 0.9825;
        delta = 0.025;
        tau = 0.35;
        alppha = 1.8834; %from the paper

        kappa = 0.146;
        sigma_xi = 0.0098;
        sigma_z = 0.0045;
        A11 = 0.9457;
        A22 = 0.9703;
        rhog = 0.97;
        sigma_g = 0.5; %GUESS
    %xi = 0.5;

model;
[name='FOC labor, equation 1 on p. 4 Appendix']
w/(c^siggma*(1-g))-alppha/(1-n)=0;
[name='Euler equation, equation 2 on p. 4 Appendix']
c^(-siggma)/(1+g(+1))=((Rhh-tau)/(1-tau))*(betta*c(+1)^(-siggma)/(1+g(+1)) + g(+1)*c(+1)^(-siggma)/(1+g(+1)));
[name='budget constraint household, equation 3 on p. 4 Appendix']
w*n+b(-1)-b/Rhh+d-c-m=0;
%CIA constraint
c(+1)-m-b(+1) = 0;
[name='FOC labor input, equation 4 on p. 4 Appendix']
(1-theta)*z*k(-1)^theta*n^(-theta)=w*(1/(1-mu*(1+2*kappa*(d-steady_state(d)))));
[name='FOC capital, equation 5 on p. 4 Appendix']
betta*(c/(c(+1)))^siggma*((1+2*kappa*(d-steady_state(d)))/(1+2*kappa*(d(+1)-steady_state(d))))*(1-delta+(1-mu(+1)*(1+2*kappa*(d(+1)-steady_state(d))))*theta*z(+1)*k^(theta-1)*n(+1)^(1-theta))+xi*mu*(1+2*kappa*(d-steady_state(d)))=1;
[name='FOC bonds, equation 6 on p. 4 Appendix']
Rf*betta*(c/(c(+1)))^siggma*((1+2*kappa*(d-steady_state(d)))/(1+2*kappa*(d(+1)-steady_state(d))))+xi*mu*(1+2*kappa*(d-steady_state(d)))*(Rf*(1-tau)/(Rf-tau))=1;
[name='budget constraint firm, equation 7 on p. 4 Appendix']
(1-delta)*k(-1)+z*k(-1)^theta*n^(1-theta)-w*n-b(-1)+b/Rf-k-(d+kappa*(d-steady_state(d))^2)=0;
[name='Enforcement constraint, equation 8 on p. 4 Appendix']
xi*(k-b*((1-tau)/(Rf-tau)))=z*k(-1)^theta*n^(1-theta);
[name='Equation 1 of VAR in equation (11)']
log(z/steady_state(z))=A11*log(z(-1)/steady_state(z))+eps_z;
[name='Equation 2 of VAR in equation (11)']
log(xi/steady_state(xi))=A22*log(xi(-1)/steady_state(xi))+eps_xi;
%Financial intermediaries budget constraint
Rf*(b + (g-1)*m(-1)) = Rhh*b;
%AR for g
g = rhog*g(-1) + eps_g;
 
end;

initval;

% c = 1.06381140017849;
% n = 0.314768183821549;
% w = 2.92394828113816;
% k = 10.0398805666893;
% Rhh = 1.01157760814245;
% Rf = 1.01157760814245;
% d = 0.0777363061096046;
% b  = 5.74125144197337;
% mu = 0.00616274682441335;
% z = 1.99172038873746;
% xi = 3.42816407562063;
% g = 1;
% m = 1;

c  	=	 0.484542;
n  	=	 0.309003;
w  	=	 1.32068;
k  	=	 6.28238;
Rhh  	=	 1.01158;
Rf  	=	 1.01158;
d  	=	 0.0107384;
b  	=	 5.74125;
mu 	=	 0.00616275;
z  	=	 0.702044;
xi 	=	 1;
g = 1;
m = 1;


end;

shocks;
    var eps_xi=sigma_xi^2;
    var eps_z= sigma_z^2;
    var eps_g= sigma_g^2;   
end;

steady;

stoch_simul(order=1,bandpass_filter=[6,32],irf=50);