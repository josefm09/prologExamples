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
lleva(fernando,X):- platillo(X), X\=estofado.
lleva(tina,X):- platillo(X), X\=ensalada.
lleva(Comensal,Platillo):- nombre(Comensal);apellido(Comensal), platillo(Platillo), Comensal\=fernando, Comensal\=rodriguez, Comensal\=barrios.

come(tina,ensalada).
come(barrios,X):- platillo(X), lleva(barrios,X).
come(X,Y):- nombre(X);apellido(X), platillo(Y), X\=barrios, X\=tina.

seLlama(X,Y):- nombre(X), apellido(Y).

diferentes(A,B,C,D):- A\=B,A\=C,A\=D,B\=C,B\=D,C\=D.

nombreComida([Nom1,Ape1,Pla1],[Nom2,Ape2,Pla2],[Nom3,Ape3,Pla3],[Nom4,Ape4,Pla4]):-
    nombre(Nom1),nombre(Nom2),nombre(Nom3),nombre(Nom4),
    apellido(Ape1),apellido(Ape2),apellido(Ape3),apellido(Ape4),
    platillo(Pla1),platillo(Pla2),platillo(Pla3),platillo(Pla4),
    diferentes(Nom1,Nom2,Nom3,Nom4),diferentes(Ape1,Ape2,Ape3,Ape4),diferentes(Pla1,Pla2,Pla3,Pla4),
    lleva(Nom1,Pla1),lleva(Nom2,Pla2),lleva(Nom3,Pla3),lleva(Nom4,Pla4),
    come(Nom1,Pla1),come(Ape1,Pla1),come(Nom2,Pla2),come(Ape2,Pla2),come(Nom3,Pla3),come(Ape3,Pla3),come(Nom4,Pla4),come(Ape4,Pla4),
    seLlama(Nom1,Ape1),seLlama(Nom2,Ape2),seLlama(Nom3,Ape3),seLlama(Nom4,Ape4).
