
estudiante(alejandro).
estudiante(jose).
estudiante(eduardo).
estudiante(matias).
estudiante(jason).

docente(angel).
docente(teofilo).
docente(carlos).
docente(alfredo).
docente(diego).

administrativo(rosario).
administrativo(daniel).
administrativo(pedro).
administrativo(jimmy).
administrativo(jorge).

listarEstudiantes(L) :-
    findall(E, estudiante(E), L).

listarDocentes(L) :-
    findall(D, docente(D), L).

listarAdministrativos(L) :-
    findall(A, administrativo(A), L).

buscarEstudiante(E) :-
    listarEstudiantes(L),
    member(E, L).

buscarDocente(D) :-
    listarDocentes(L),
    member(D, L).

buscarAdministrativo(A) :-
    listarAdministrativos(L),
    member(A, L).

matriculado(patricia).
matriculado(julia).
matriculado(jose).
matriculado(abdel).
matriculado(eduardo).

pago(angel, 1000).
pago(teofilo, 4000).
pago(carlos, 3500).
pago(alfredo, 4500).
pago(diego, 1500).

pagoMayorIgual(D, X) :-
    pago(D, P),
    P >= X.

pagoMayorIgual2000(D) :-
    pago(D, P),
    P >= 2000.

listarPagoMayorIgual(L, X) :-
    findall(D, pagoMayorIgual(D, X), L).

listarPagoMayorIgual2000(L) :-
    findall(D, pagoMayorIgual2000(D), L).

matriculadoUPC(E) :-
    estudiante(E),
    matriculado(E).

listarMatriculadosUPC(L) :-
    findall(E, matriculadoUPC(E), L).

matriculadoNoUPC(E) :-
    matriculado(E),
    not(estudiante(E)).

listarMatriculadosNoUPC(L) :-
    findall(E, matriculadoNoUPC(E), L).



