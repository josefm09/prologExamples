

primer([X|_],X).

resto([_|X],X).

ultimoElemento([],0).
ultimoElemento([H|T],Rsp):-

member(X,[X|_]).
member(X,[_|T]):- member(X,T).

elimina(X,[X|R],R).
elimina(X,[R|C],[R|O]):- elimina(X,C,O).

longitud([],0).
longitud([_|C],Rsp):-  longitud(C,X), Rsp is X + 1.
