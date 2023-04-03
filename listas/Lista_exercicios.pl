% Questão 1

contar([], _, 0).
contar([X|T], X, N) :-
    contar(T, X, M),
    N is M + 1.
contar([H|T], X, N) :-
    dif(H, X),
    contar(T, X, N).

% Questão 2

concat([], L, L).
concat([H|T], L, [H|Result]) :-
    concat(T, L, Result).
