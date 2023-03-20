fatorial(0, 1) :- !.  %regra para verificar o fatorial

fatorial(1, 1) :- !.
fatorial(N, R) :- N1 is N-1,
fatorial(N1, R1),
R is R1 * N.
