par(X):- X mod 2 =:= 0. %Verifica se o valor X é par

%--------------------------------------------------------

idade(john, 30).
idade(sarah, 25).

comparar_idades(Person1, Person2, Comparison) :- %Comparar idades
    idade(Person1, Age1),
    idade(Person2, Age2),
    (
        Age1 > Age2 -> Comparison = older;
        Age1 < Age2 -> Comparison = younger;
        Comparison = same
    ).
