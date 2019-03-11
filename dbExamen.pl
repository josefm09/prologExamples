
poder(goten, 600).
poder(trunks, 600).
poder(gohan, 600).
poder(vegeta, 600).
poder(goku, 600).
poder(freezer,1000).
poder(picoro, 2000).
poder(dabura, 2000).
poder(cell, 2000).
poder(majinbuu, 4000).

sayan(goten).
sayan(trunks).
sayan(gohan).
sayan(vegeta).
sayan(goku).

tieneCola(vegeta).
tieneCola(goten).
tieneCola(trunks).

puedeMistico(gohan).

puedeSSJ4(vegeta).

nacioEnTierra(goten).
nacioEnTierra(trunks).

ssj(X):- dynamic(poder/2), sayan(X),retract(poder(X, 600)), assertz(poder(X, 1200)).

ssj2(X):- dynamic(poder/2), ssj(X),retract(poder(X, 1200)), assertz(poder(X, 2400)), not(nacioEnTierra(X)), not(poder(gotenks,_)).

ssj3(X):- dynamic(poder/2), ssj2(X),retract(poder(X, 2400)), assertz(poder(X, 4800)), not(puedeMistico(X)), not(puedeSSJ4(X)), not(nacioEnTierra(X)).

mistico(X):- dynamic(poder/2), ssj2(X), puedeMistico(X), retract(poder(X, 2400)), assertz(poder(X, 6000)).

ssj4(X):- dynamic(poder/2), ssj2(X);ssj(X), sayan(vegeta), tieneCola(X), retract(poder(X, 2400)), assertz(poder(X, 5500)).

fusion(X,Y):- dynamic(poder/2), nacioEnTierra(X), nacioEnTierra(Y), tieneCola(X), tieneCola(Y), retract(poder(X, _)), retract(poder(Y,_)), assertz(poder(gotenks, 600)).

vence(X,Y):- poder(X,A), poder(Y,B), menor(B,A).
menor(P,Q):- P < Q.
