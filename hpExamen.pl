estaAIzq(parvati_patil,lavander_brown).
estaAIzq(lavander_brown,neville_longbottom).
estaAIzq(neville_longbottom,alicia_spinnet).
estaAIzq(alicia_spinnet,fred_weasley).
estaAIzq(fred_weasley,george_weasley).
estaAIzq(george_weasley,lee_jordan).
estaAIzq(lee_jordan,dennis_creevey).
estaAIzq(dennis_creevey,dean_thomas).
estaAIzq(ginny_weasley,dean_thomas).
estaAIzq(angelina_johnson,ginny_weasley).
estaAIzq(seamus_finnigan,angelina_johnson).
estaAIzq(colin_creevey,angelina_johnson).
estaAIzq(harry_potter,colin_creevey).
estaAIzq(hermione_granger,harry_potter).
estaAIzq(ron_weasley,hermione_granger).
estaAIzq(natalie_mcdonald,ron_weasley).
estaAIzq(katie_bell,natalie_mcdonald).
estaAIzq(katie_bell,parvati_patil).

enseguidaDe(X,Y):-estaAIzq(X,Y).

estaEnMesa(X):-estaAIzq(X,_).

enMedioDe(X,Y,Z):-enseguidaDe(X,Z),enseguidaDe(X,Y),Y\=Z.

estaADosLugares(X,Y):-estaAIzq(X,Z),estaAIzq(Z,Y);enseguidaDe(X,Z),enseguidaDe(Z,Y).