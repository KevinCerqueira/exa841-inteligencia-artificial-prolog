:- dynamic sim/1,nao/1.

/*  Programa  */

go:- possibilidade(Animal),
      write('O animal que voce pensou e um(a): '),
      write(Animal),
      nl,
      limpa_base.


/* Possibilidades */

possibilidade(leopardo):- leopardo, !.
possibilidade(tigre):- tigre, !.
possibilidade(girafa):- girafa, !.
possibilidade(zebra):- zebra, !.
possibilidade(avestruz):- avestruz, !.
possibilidade(pinguim):- pinguim, !.
possibilidade(pelicano):- pelicano, !.
possibilidade(gato):- gato, !.
possibilidade(cachorro):- cachorro, !.
possibilidade(desconhecido).


/* Regras (caracteristicas) */

gato:- carnivoro,
           verifica(tem_pelos),
           verifica(ronrona),
           verifica(se_auto_limpa).

cachorro:- carnivoro,
           verifica(tem_pelos),
           verifica(melhor_amigo).

tigre:- carnivoro,
        verifica(tem_cor_amarelo_tostado),
        verifica(tem_listras_pretas).

girafa:- casco_herbivoro,
         verifica(tem_pernas_longas),
         verifica(tem_pescoco_comprido),
         verifica(tem_cor_amarelo_tostado),
         verifica(tem_manchas_escuras).

leopardo:- carnivoro,
	   verifica(tem_cor_amarelo_tostado),
	   verifica(tem_manchas_escuras).

zebra:- casco_herbivoro,
        verifica(tem_cor_branca),
        verifica(tem_listras_pretas).

avestruz:- ave,
           verifica(tem_pernas_longas),
           verifica(tem_pescoco_comprido),
           verifica(tem_cor_preta_branca).

pinguim:- ave, 
          verifica(nao_voa), 
          verifica(nada),
          verifica(tem_cor_preta_branca).

pelicano:- ave,
           verifica(e_um_bom_voador).


/* Regras (classificacoes) */

mamifero:- verifica(tem_pelos), !.
mamifero:- verifica(da_leite).

ave:- verifica(tem_penas), !.
ave:- verifica(voa), 
            verifica(bota_ovos).

carnivoro:- mamifero,
	    verifica(come_carne), !.
carnivoro:- mamifero,
	    verifica(tem_dentes_pontudos), 
            verifica(tem_garras),
            verifica(tem_olhos_frontais).

casco_herbivoro:- mamifero, 
           verifica(tem_casco), !.
casco_herbivoro:- mamifero, 
           verifica(rumina),
	   verifica(tem_dedos_pares).


/* Perguntas */

pergunta(X):-
         write('O animal tem o seguinte atributo: '),
         write(X),
         write('? '),
         read(Resp),
         nl,
         ( (Resp == sim ; Resp == s)
           ->
            assert(sim(X)) ;
            assert(nao(X)), fail).


/* Verificacao */

verifica(S):-
        (sim(S) 
         ->
         true ;
         (nao(S)
          ->
          fail ;
          pergunta(S))).


/* Desfaz todos os sim/1 e nao/1  */

limpa_base:- retract(sim(_)),fail. 
limpa_base:- retract(nao(_)),fail.
limpa_base.
