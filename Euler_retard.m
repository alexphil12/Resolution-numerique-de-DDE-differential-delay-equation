function [sol,interval_eval]=Euler_retard(fonction_retard_init,precision,Temps_retard,coef_sys,T_max)
T_min=-Temps_retard;
interval_eval=T_min:precision:T_max;
% création de l'interval total sur lequel on visualise la fonction
% solution
N_ret=Temps_retard/precision;
sol=zeros(1,length(interval_eval));
sol(1:N_ret)=fonction_retard_init;
%les premières valeurs de sol (pour t négatifs) sont celles de
%l'initialisation (en l'occurence le résultat de init_retard).
N_max=T_max/precision;
for k=N_ret+1:1:N_max+N_ret+1
    sol(k)=sol(k-1)+precision*Fonction_base(coef_sys,sol,'cos',(k-1),precision);
end
%on calcul les termes suivant par la méthode d'euler( Y(N)=Y(N-1) +h*Y'(N-1) en prenant ici une
%fonction de retard 'sinusoïdale'.
end
