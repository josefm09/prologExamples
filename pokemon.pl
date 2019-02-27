evoluciona(huevo,bulbasaur).
evoluciona(bulbasaur,ivysaur).
evoluciona(ivysaur,venasaur).

esEvolucion(X,Y):- evoluciona(X,Y).
esEvolucion(X,Y):- evoluciona(X,Z), esEvolucion(Z,Y).

