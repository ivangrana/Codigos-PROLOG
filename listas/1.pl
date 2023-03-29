%versão 1
soma(Lista, Resultado) :- soma(Lista, 0, Resultado).
soma([], Resultado, Resultado) :- !.
soma([Head | Tail], Acumulador, Resultado) :- A is Head+Acumulador,
 						soma(Tail, A, Resultado).
            
%versão 2
soma([], 0).
soma([Head | Tail], N) :- soma(Tail, N1), N is N1 + Head.

%Calcular o tamanho de uma lista
