nombre(pamela).
nombre(tina).
nombre(diego).
nombre(fernando).

apellido(rodriguez).
apellido(barrios).
apellido(bargas).
apellido(rios).

platillo(ravioles).
platillo(estofado).
platillo(ensalada).
platillo(pastel).

lleva(rodriguez,pastel).
lleva(barrios,ensalada).
lleva(tina,estofado).
lleva(fernando,X):- platillo(X), X\=estofado, X\=pastel.
lleva(tina,X):- platillo(X), X\=ensalada, X\=ravioles, X\=pastel.
lleva(pamela,X):- platillo(X), X\=ravioles, X\=pastel.
lleva(rios,X):- platillo(X), X\=estofado.
lleva(diego,X):- platillo(X), X\=estofado.
lleva(Comensal,Platillo):- nombre(Comensal);apellido(Comensal), platillo(Platillo), Comensal\=fernando, Comensal\=rodriguez, Comensal\=barrios.

noEs(diego,rios).
noEs(tina,rodriguez).
noEs(tina,barrios).
noEs(tina,rios).
noEs(fernando,rodriguez).
noEs(fernando,barrios).
noEs(diego,barrios).
noEs(pamela,rodriguez).
seLlama(X,Y):- nombre(X), apellido(Y), not(noEs(X,Y)).

comensal(X,Y,Z):- seLlama(X,Y), platillo(Z), lleva(X,Z), lleva(Y,Z).

diferentes(A,B,C,D):- A\=B,A\=C,A\=D,B\=C,B\=D,C\=D.

nombreComida([Nom1,Ape1,Pla1],[Nom2,Ape2,Pla2],[Nom3,Ape3,Pla3],[Nom4,Ape4,Pla4]):-
    comensal(Nom1,Ape1,Pla1),comensal(Nom2,Ape2,Pla2),comensal(Nom3,Ape3,Pla3),comensal(Nom4,Ape4,Pla4),
    diferentes(Nom1,Nom2,Nom3,Nom4),diferentes(Ape1,Ape2,Ape3,Ape4),diferentes(Pla1,Pla2,Pla3,Pla4).
