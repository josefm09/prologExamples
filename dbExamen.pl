vence(majinbuu,cell).
vence(cell,dabura).
vence(dabura,picoro).
venve(picoro,freezer).
vence(freezer,goku).
vence(goku,vegeta).
vence(vegeta,gohan).
vence(gohan,trunks).
vence(trunks,goten).

sayan(goten).
sayan(trunks).
sayan(gohan).
sayan(vegeta).
sayan(goku).

ssj(X):- sayan(X), assertz(vence(X,freezer)).

ssj2(X):- ssj(X), assertz(vence(X,cell)).

ssj3(X):- ssj2(X), assertz(vence(X,majinbuu)).

%ssj4(X):- ssj3(X), assertz(vence("SSJ4"+X,freezer)).
gana(X,Y):- vence(X,Y).
gana(X,Y):- vence(X,Z), gana(Z,Y), X\=Y.


