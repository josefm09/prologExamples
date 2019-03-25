

longitud([],0).
longitud([_|C],Rsp):-  longitud(C,X), Rsp is X + 1.
