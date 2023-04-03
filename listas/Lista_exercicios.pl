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
    
 
    
% Questão 5

 ultimo(X,[X]).
 Ultimo(X,[_|Z]) :- Ultimo(X,Z)


% Questão 7 

reverse([],Z,Z).
reverse([H|T],Z,Acc) :- reverse(T,Z,[H|Acc]).

% Questão 8

member(X,[X,_]).
member(X,[_,T]) :- member(X,T).

% Questão 9

repeated(L) :-
    sort(L, S),
    length(L, X),
    length(S, Y),
    X > Y.

% QUestão 10

remove_duplicates([], []).

remove_duplicates([Head | Tail], Result) :-
    member(Head, Tail), !,
    remove_duplicates(Tail, Result).

remove_duplicates([Head | Tail], [Head | Result]) :-
    remove_duplicates(Tail, Result).
