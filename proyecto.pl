%Base de conocimiento
:-dynamic
    alumno/2,
    materia/4,
    semestre/2,
    lista/1.

%tabaja. semestreActual
alumno(trabajando,semestre).
%nombre, semestre minimo, creditos, prerequisito
materia(calculoDiferencial,1,5,base).
materia(fundamentosProgramacion,1,5,base).
materia(etica,1,4,base).
materia(matematicasDiscretas,1,5,base).
materia(tallerAdministracion,1,4,base).
materia(calculoIntegral,2,5,calculoDiferencial).
materia(poo,2,5,fundamentosProgramacion).
materia(contabilidad,2,4,base).
materia(quimica,2,4,base).
materia(algebraLineal,2,5,base).
materia(calculoVectorial,3,5,calculoIntegral).
materia(estructuraDatos,3,5,poo).
materia(culturaEmpresarial,3,4,base).
materia(investigacionOperaciones,3,4,base).
materia(desarrolloSustentable,3,5,base).
materia(ecuacionesDiferenciales,4,5,calculoVectorial).
materia(metodosNumericos,4,4,estructuraDatos).
materia(topicosProgramacion,4,5,estructuraDatos).
materia(fundamentosBaseDatos,4,5,base).
materia(simulacion,4,5,base).
materia(graficacion,5,4,base).
materia(fundamentosTelecom,5,4,base).
materia(sistemasOperativos,5,4,base).
materia(tallerBaseDatos,5,4,fundamentosBaseDatos).
materia(fundamentosIngSofware,5,4,base).
materia(automatas,6,5,base).
materia(redes,6,5,fundamentosTelecom).
materia(tallerSistemasOperativos,6,4,sistemasOperativos).
materia(administracionBaseDatos,6,5,tallerBaseDatos).
materia(ingSoftware,6,5,fundamentosIngSofware).
materia(automatas2,7,5,base).
materia(conmutacion,7,5,base).
materia(tallerInvestigacion,7,5,base).
materia(getionProyectos,7,5,base).


empieza:-
    write("Bienvenido al sistema de cargas, actualmente te encuentras trabajando? "), read(ResTrabaja),
    validarTrabaja(ResTrabaja,ResAux),
    write("En que semestre vas?"), read(ResSemestre),
    validarSemestre(ResSemestre,ResAux2),
    almacenaSemestre(ResAux2),
    call(alumno(_,_)),
    retract(alumno(_,_)),
    asserta(alumno(ResAux,ResAux2)).


validarSemestre(Res, Res):- Res > 0, Res < 13. 
     
validarSemestre(Res, ResAux):-
    write("Numero de semestre invalido, Recuerda que solo tienes 12 semestres para terminar, teclee otra respuesta por favor:"),
	read(Otro),
    validarSemestre(Otro, ResAux).

validarTrabaja(Res, Res):- (Res == si ; Res == no).

validarTrabaja(Res, ResAux):-
	write("Debe responder con si o no, teclee otra respuesta por favor: "),
	read(Otro),
    validarTrabaja(Otro, ResAux). 

%planCarga(Semestre,[Creditos,[ListaMaterias]]):
almacenaSemestre(SemestreActual):-
    SemestreActual > 0,
    write("Escribe las materias que llevaste en el semestre "),write(SemestreActual),write(" (escribe ""stop"" para capturar el semestre anterior)"),
    read(ResMateria),
    dif(ResMateria,stop) ->
    (
        assertz(semestre(SemestreActual, ResMateria)),
        almacenaSemestre(SemestreActual)    
    ;   
        almacenaSemestreAux(SemestreActual)
    ).
    
    

almacenaSemestreAux(SemestreActual):-    
    SemestreAux is SemestreActual - 1,
    SemestreAux > 0 ->
    (
        almacenaSemestre(SemestreAux)
    ;
        validarRC
    ).

validarRC:-
    findall(X, materia(X,_,_,_), Reticula),
    findall(Y, semestre(_,Y), Materias),
    forall(
        contar(X, Materias, ResMateria),
        ResMateria > 0 ->
        (
            asserta(rc(X))
            ;
            ResMateria > 1 ->
            (
                asserta(especial(X))
                ;
                retract(materia(X,_,_,_))
            )
        ) 
    ).

contar(X,[],0). 
contar(X,[X|L],C):- !,contar(X,L,C1), C is C1+1. 
contar(X,[Y|L],C):- contar(X,L,C).
    

    
