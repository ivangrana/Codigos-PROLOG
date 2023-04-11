connected(1,2).
connected(3,4).
connected(5,6).
connected(7,8).
connected(9,10).
connected(12,13).
connected(13,14).
connected(15,16).
connected(17,18).
connected(19,20).
connected(4,1).
connected(6,3).
connected(4,7).
connected(6,11).
connected(14,9).
connected(11,15).
connected(16,12).
connected(14,17).
connected(16,19).

aresta(X, Y) :- connected(X, Y); connected(Y, X). %Regra para verificar se existe conexão
contem(V, [V | _]) :- !.
contem(V, [H | T]) :- V \== H, contem(V, T). %verifica se o caminho já está na lista

dfs(X, Y, Visitados) :- aresta(X, Z), %regra da busca em profundidade
\+ contem(Z, Visitados), %condição de que o caminho ainda não está na lista de visitados...
(Y = Z; dfs(Z, Y, [X | Visitados])).
path(X, Y) :- dfs(X, Y, []). %chama recursivamente a busca em profundidade
