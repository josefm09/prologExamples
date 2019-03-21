jugador(j1).
jugador(j2).

empieza:-
	write("Con cuantos palitos empezamos? "), read(Palitos),
	write("Que jugador empieza? "), read(Quien),
	nim(Palitos, Quien).

nim(1, Q):- write(Q), write("Ya perdiste :( \n").
nim(N, Q):- N<1, write(Q), write("Ya ganaste :) \n").
nim(N, Q):-
	write("Cuantos palitos quitamos?"), read(Cuantos),
	validar(Cuantos, CuantosAux),
	PalitosQuedan is N -CuantosAux,
	write("Quedan: "), write(PalitosQuedan),
	jugador(Q2), Q2 \= Q,
	nim(PalitosQuedan, Q2).

validar(Cuantos, Cuantos):- Cuantos > 0, Cuantos < 4.
validar(Cuantos, CuantosAux):-
	write("Numero invalido, teclee otro por favor: "),
	read(Otro),
	validar(Otro, CuantosAux).

