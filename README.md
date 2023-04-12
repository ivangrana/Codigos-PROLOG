# Codigos-PROLOG
repositório dedicado a disciplina de PROLOG

# Resumo:

## definições:

Cláusulas: são as unidades básicas de Prolog. Elas consistem em uma cabeça e um corpo, separados pelo operador :- (dois pontos e um hífen). A cabeça é composta por um único átomo ou uma estrutura de átomos (um predicado), enquanto o corpo é composto por um conjunto de predicados separados por vírgulas.

Fatos: são cláusulas que afirmam uma relação entre objetos. Eles não possuem corpo.

### exemplo:

filho(joao, maria).


Regras: são cláusulas que possuem uma cabeça e um corpo. A cabeça é um predicado que será verdadeiro se o corpo também for verdadeiro. As regras são usadas para definir relações entre fatos.
### exemplo:

pai(X,Y) :- homem(X), filho(Y,X).

Neste exemplo, "pai(X,Y)" é a cabeça da regra e "homem(X)" e "filho(Y,X)" são os predicados que compõem o corpo da regra. A regra afirma que X é pai de Y se X é homem e Y é filho de X.
