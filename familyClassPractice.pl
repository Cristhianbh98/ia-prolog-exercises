hombre(francisco).
hombre(luis).
hombre(eduardo).
hombre(mario).

mujer(victoria).
mujer(veronica).
mujer(beatriz).
mujer(alicia).

padre(francisco, alicia).
padre(francisco, eduardo).
padre(eduardo, luis).
padre(mario, beatriz).

madre(alicia, beatriz).
madre(victoria, alicia).
madre(victoria, eduardo).
madre(veronica, luis).

esposos(francisco,victoria).
esposos(alicia,mario).
esposos(eduardo,veronica).

hermano(X, Y):- padre(Z, X),padre(Z, Y), hombre(X).
hermana(X, Y):- padre(Z, X),padre(Z, Y), mujer(X).

hijo(X, Y):- (padre(Y,X); madre(Y,X)), hombre(X).
hija(X, Y):- (padre(Y,X); madre(Y,X)), mujer(X).

abuelo(X, Y) :- (padre(Z, Y); madre(W, Y), padre(X, Z); padre(X, W)), hombre(X).
abuela(X, Y) :- (padre(Z, Y); madre(W, Y), madre(X, Z); madre(X, W)), mujer(X).

primo(X, Y) :- padre(A, X), padre(B, Y); madre(A, X), madre(B, Y), padre(Z, A), padre(Z, B), hombre(X).
prima(X, Y) :- padre(A, X), padre(B, Y); madre(A, X), madre(B, Y), padre(Z, A), padre(Z, B), mujer(X).

tio(X, Y) :- (padre(Z, Y) ; madre(Z, Y)), hermano(X, Z).
tia(X, Y) :- (padre(Z, Y) ; madre(Z,Y)), hermana(X, Z).

cls :- write('\e[H\e[2J').

/*
esposos(X, Y) :- padre(X, Z); padre(Y, Z), madre(Y, Z); madre(X, Z).
esposo(francisco, victoria).
esposa(victoria, francisco).
esposo(mario, alicia).
esposa(alicia, mario).
esposo(eduardo, veronica).
esposa(veronica, eduardo).*/

