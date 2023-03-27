fatorial(0, 1) :- !.  %regra para verificar o fatorial

fatorial(1, 1) :- !.
fatorial(N, R) :- N1 is N-1,
fatorial(N1, R1),
R is R1 * N.

soma_ate_zero(Soma) :-
    write('Digite um valor: '), %Print
    read(Numero), %recebe o valor na variável Número
    (
        Numero =:= 0 -> Soma = 0;
        soma_ate_zero(SomaAnterior), %Chama novamente o soma_ate_zero
        Soma is Numero + SomaAnterior
    ).
