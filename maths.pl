puiss(1,_,1).
puiss(_,0,1).
puiss(0,_,0).

puiss(X,Y,P):- P is X^Y.

add(X,Y,A):- A is X+Y.

substract(X,Y,S):- S is X-Y.

mult(X,Y,M):- M is X*Y.

div(X,Y,D):- D is X/Y.


