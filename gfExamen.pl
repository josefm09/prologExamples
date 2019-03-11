estaAIzq(stanleyPines,soos).
estaAIzq(soos,wendy).
estaAIzq(wendy,tioStan).
estaAIzq(tioStan,dipper).
estaAIzq(dipper,gideon).
estaAIzq(gideon,diarios).
estaAIzq(diarios,pacifica).
estaAIzq(pacifica,mabel).
estaAIzq(mabel,robie).
estaAIzq(robie,stanleyPines).

enseguidaDe(X,Y):-estaAIzq(Y,X).

estaEnRueda(X):-estaAIzq(X,_).

estaADosLugares(X,Y):-estaAIzq(X,Z),estaAIzq(Z,Y);enseguidaDe(X,Z),enseguidaDe(Z,Y).

enMedioDe(X,Y,Z):-enseguidaDe(X,Z),estaAIzq(X,Y),Y\=Z.