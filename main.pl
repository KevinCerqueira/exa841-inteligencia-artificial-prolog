%Fatos
discente(kevin).
discente(joao).
discente(esdras).
discente(moises).
discente(daniel).
discente(lucas).
discente(matheus).
discente(gustavo).
discente(ricardo).
discente(patrick).
discente(rafael).
discente(jorge).


docente(roberto).
docente(duarte).
docente(michelle).
docente(anfranserai).
docente(gabriela).
docente(claudia).
docente(ana_lucia).

estudajunto(kevin, esdras).
estudajunto(kevin, moises).
estudajunto(kevin, joao).
/*Eu acho que assim n?o ia funcionar, por isso mudei. Mas qualquer coisa
 * eu comentei.
turma1(esdras).
turma1(kevin).
turma1(moises).
turma1(roberto).

turma2(joao).
turma2(kevin).
turma2(moises).
turma2(anfranserai).

turma3(joao).
turma3(kevin).
turma3(esdras).
turma3(moises).
turma3(duarte).
*/
/*
odeialinguagemquenaovaiusarnavidaprofissional(Kevin, Esdras).
odeialinguagemquenaovaiusarnavidaprofissional(Kevin, Moises).
odeialinguagemquenaovaiusarnavidaprofissional(Kevin, Joao).
*/
turma(esdras,turma1).
turma(kevin,turma1).
turma(joao,turma1).
turma(moises,turma1).
turma(daniel,turma1).
turma(gustavo,turma1).
turma(esdras,turma2).
turma(kevin,turma2).
turma(joao,turma2).
turma(moises,turma2).
turma(patrick,turma2).
turma(lucas,turma2).
turma(esdras,turma3).
turma(kevin,turma3).
turma(joao,turma3).
turma(moises,turma3).
turma(matheus,turma3).
turma(rafael,turma3).
turma(jorge,turma3).

turma(roberto,turma1).
%turma(gabriela,turma1).
turma(anfranserai,turma2).
%turma(claudia,turma2).
turma(duarte,turma3).
%turma(ana_lucia,turma3).
cursaMateria(turma1, algoritmosII).
cursaMateria(turma2, circuitosDigitais).
cursaMateria(turma3, arquitetura).

%Regras
professorTurma(X,Y) :-
                      turma(Y,X),
                      docente(Y).

alunosTurma(X,Y) :-
                      turma(Y,X),
                      discente(Y).

materiaProfessor(X,Z):-
                      turma(X,Y),
                      docente(X),
                      cursaMateria(Y,Z).

