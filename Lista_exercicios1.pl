%Questão 2

merge([], L, L).
merge(L, [], L).
merge([X|Xs], [Y|Ys], [Z|Zs]) :-
    X =< Y,
    Z = X,
    merge(Xs, [Y|Ys], Zs).
merge([X|Xs], [Y|Ys], [Z|Zs]) :-
    X @> Y,
    Z = Y,
    merge([X|Xs], Ys, Zs).

merge([], L, L, []).
merge(L, [], [], L).
merge([X|Xs], [Y|Ys], [], [X|Zs]) :-
    X =< Y,
    merge(Xs, [Y|Ys], [], Zs).
merge([X|Xs], [Y|Ys], [], [Y|Zs]) :-
    X > Y,
    merge([X|Xs], Ys, [], Zs).


%Questão 3

merge_sort([], []).
merge_sort([X], [X]).
merge_sort(List, Sorted) :-
    length(List, Len),
    Len > 1,
    split(List, Left, Right),
    merge_sort(Left, SortedLeft),
    merge_sort(Right, SortedRight),
    merge(SortedLeft, SortedRight, Sorted).

split(List, Left, Right) :-
    length(List, Len),
    Half is Len // 2,
    length(Left, Half),
    append(Left, Right, List).

merge([], Right, Right).
merge(Left, [], Left).
merge([X|Left], [Y|Right], [X|Sorted]) :-
    X =< Y,
    merge(Left, [Y|Right], Sorted).
merge([X|Left], [Y|Right], [Y|Sorted]) :-
    X > Y,
    merge([X|Left], Right, Sorted).


%Questão 4

is_sorted([]). %Recebe a lista
is_sorted([_]).
is_sorted([X,Y|Cauda]) :- %Divide a lista em cabeça([X,Y]) e cauda
    (   X =< Y, %se o valor do primeiro elemento for menor ou igual ao segundo.
    is_sorted([Y|Cauda])). %Chama recursivamente
    
%Questão 5

insert(Elem, [], [Elem]). %Caso a lista esteja vazia, o elemento é inserido no começo
insert(Elem, [X|Xs], [Elem,X|Xs]) :-
    Elem =< X.
insert(Elem, [X|Xs], [X|Zs]) :-
    Elem > X,
    insert(Elem, Xs, Zs).

%Questão 6

insertion_sort([], []). %Se a lista for vazia,não tem o que ordenar
insertion_sort([X|Xs], Sorted) :-
    insertion_sort(Xs, PartiallySorted),
    insert(X, PartiallySorted, Sorted).


%Questão 7

concat(Nome, Telefone, Resultado) :-
    string_concat("Nome: ", Nome, Parte1), %concatena com o nome fornecido para criar a Parte1
    string_concat(Parte1, " - Telefone: ", Parte2), %concatena com o telefone fornecido para criar a Parte2
    string_concat(Parte2, Telefone, Resultado).

%Questão 10

hamming([], 0). %Se a lista estiver vazia, a distância de Hamming é zero
hamming([X|Xs], Distancia) :- %recebe uma lista como primeiro termo e retorna a distância de Hamming como segundo
    hamming(Xs, D0),
    (X = 1 -> Distancia is D0 + 1 ; Distancia = D0).

%Questão 13
slice(Lista, Indice_inicial, Indice_final, Sliced) :-
    length(Lista, Length),
    Indice_final =< Length,
    Indice_inicial =< Indice_final,
    length(Sliced, SliceLength),
    SlicingStart is Indice_inicial - 1,
    _SlicingEnd is Indice_final - 1,
    length(Prefix, SlicingStart),
    append(Prefix, SlicedPrefix, Lista),
    length(SlicedPrefix, SliceLength),
    append(Sliced, _, SlicedPrefix),
    length(Sliced, SliceLength).
