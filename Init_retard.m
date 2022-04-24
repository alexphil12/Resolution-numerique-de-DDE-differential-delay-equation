function [polynome_sur_retard,interval_retard]=Init_retard(tab_coeff,temps_de_retard,precission)
%les coeff sont rentrés par ordre décroissant de degré. Il peut y avoir
%autant de coeff que l'on veut et donc n'importe quel degré de polynome.
assert(temps_de_retard>0);
interval_retard=-temps_de_retard:precission:0-precission;
%calcul de l'interval de retard en temporel
polynome_sur_retard=polyval(tab_coeff,interval_retard);
%calcul du poly sur l'interval précédemment calculé.
end


