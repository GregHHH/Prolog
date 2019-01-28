succ(0).
succ(s(X)):- succ(X).

/* l'addition */

plus(X, 0, X).
plus(0, X, X).
plus(s(X),Y,s(Z)):- plus(X,Y,Z).

/* ceci donne : */
/* ?- plus(s(s(s(s(0)))), s(s(s(0))), X). */
/* X = s(s(s(s(s(s(s(0))))))). */
