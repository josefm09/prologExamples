ciudad(roma,1000).
ciudad(londres,1500).
ciudad(tunez,1300).

acomodo(hotel,900).
acomodo(hostal,600).
acomodo(camping,300).

viaje(C,A,S,P):- ciudad(C,X), acomodo(A,Y), sumar(X,Y,Z), multiplicar(Z,S,Q), P is Q.

viajeEconomico(C,A,S,P,PMax):- ciudad(C,P), acomodo(A,P), viaje(C,A,S,P), menor(P,PMax).

multiplicar(P,N,Q):- Q is P * N.

sumar(P,N,Q):- Q is P + N.

menor(P,Q):- P < Q.