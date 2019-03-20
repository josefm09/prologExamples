member(X,[X|_]).
member(X,[_|T]):- member(X,T).

elimina(X,[X|R],R).
elimina(X,[R|C],[R|O]):- elimina(X,C,O).

