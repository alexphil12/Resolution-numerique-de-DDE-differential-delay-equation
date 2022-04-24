function [Y]=Fonction_base(coef,F,fonction_ret,t,precision)
% On créée ici le système 1D Tel que F'=coef(1) +coef(2)*F(t)+coef(3)*F(t-h(t))
assert(length(coef)==3);
ret=round(1*abs(feval(fonction_ret,pi*2*t*precision))/precision);%la fonction ici peut être presque n'importe laquelle
Y=coef(1)+coef(2)*F(t)+coef(3)*F(t-ret);                     %tant qu'elle est positive. en l'occurence on choisit un retard constant
% concernant ret, il est à valeur dans t et utilise t . On recoit en variable t/precision=k d'où le fois precision.
% le résultat est en seconde reconvertie en indicice par la divison par précision.
end