dentro(irina,natasha).
dentro(natasha,olga).
dentro(olga,katarina).

estaDentro(X,Y):- dentro(X,Y).
estaDentro(X,Y):- dentro(X,Z), estaDentro(Z,Y).
