/* II */

add(X,Y,A):- A is X+Y.

substract(X,Y,S):- S is X-Y.

mult(X,Y,M):- M is X*Y.

div(X,Y,D):- D is X/Y.

/* III */

occ(A,[],0).
occ(A, [A|Xs], C) :- occurence(A, Xs, C1), C is C1+1.
occ(A, [_|Xs], C) :- occurence(A, Xs, C). 

longueur_liste([], 0).
longueur_liste([X|Xs],N):- longueur_liste(Xs,N1), N is N1+1.

append([], Y, Y).
append([X|Xs], Y, [X, Z]) :- append(X,Y,Z).

n_eme(1, [X|Xs], N).
n_eme(X, [_|Xs], N) :- X1 is X-1, n_eme(X1, Xs, N).
