/* II */

add(X,Y,A):- A is X+Y.

substract(X,Y,S):- S is X-Y.

mult(X,Y,M):- M is X*Y.

div(X,Y,D):- D is X/Y.

/* III */


occ(_,[],0).
occ(A,[A],1).

occ(A, B, O):- 0 is  

longueur([],0).
longueur([X|Xs],N):- longueur(Xs,N1),N is N1 + 1.
