
function [sol,interval_eval]=RK4_retard(fonction_retard_init,precision,Temps_retard,coef,T_max)
T_min=-Temps_retard;
interval_eval_ret=T_min:precision:0;
interval_eval_sol=0:precision/2:T_max;
interval_eval=cat(2,interval_eval_ret,interval_eval_sol);
% création de l'interval total sur lequel on visualise la fonction
% solution
N_ret=Temps_retard/precision;
N_max=T_max/precision;
sol=zeros(1,length(interval_eval));
sol(1:N_ret)=fonction_retard_init;

%les premières valeurs de sol (pour t négatifs) sont celles de
%l'initialisation (en l'occurence le résultat de init_retard).
for k=N_ret+1:1:2*N_max+N_ret+2
    K1=precision*(Fonction_base(coef,sol,'cos',(k-2),precision));
    K2=precision*(Fonction_base(coef,sol+0.5*K1,'cos',(k-1),precision));
    K3=precision*(Fonction_base(coef,sol+0.5*K2,'cos',(k-1),precision));
    K4=precision*(Fonction_base(coef,sol+K3,'cos',(k),precision));
    sol(k)=sol(k-1)+(1/6)*(K1+2*K2+2*K3+K4);
end

%on calcul les termes suivant par la méthode d'euler( Y(N)=Y(N-1) +h*Y'(N-1) en prenant ici une
%fonction de retard 'sinusoïdale'.
end




% On créée ici le système 1D Tel que F'=coef(1) +coef(2)*F(t)+coef(3)*F(t-h(t))


