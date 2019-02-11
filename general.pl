longueur([],0).
longueur([X|Xs],N):- longueur(Xs,N1),N is N1 + 1.

add(X,L,[X|L]).


append_([], []).
append_([X|Xs], N):- append(X,Y,N), append_(Xs, Y).
