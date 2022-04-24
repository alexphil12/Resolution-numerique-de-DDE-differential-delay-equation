coef=[-1,0];
t_r=2;
prec=0.0001; %prec est le pas temporelle de la simulation, t_R le temps de retard choisi pour l'initialisation
%On crée ici un polynome quelconque (ses coefs son contenu dans coef voir init retard pour plus de détail) 
% qui sera notre fonction solution entre
%-tr et t=0
[Y,X]=Init_retard(coef,t_r,prec);
[Ysol,Temps]=RK4_retard(Y,prec,t_r,[1,-1,0],3);
[Ysol1,Temps1]=Euler_retard(Y,prec,t_r,[1,-1,0],3);
hold on
plot(Temps,Ysol);
plot(Temps1,Ysol1);
plot(Temps,-exp(-Temps)+1)
legend("Retard RK4", "Retard Euler","sol exacte");
hold off