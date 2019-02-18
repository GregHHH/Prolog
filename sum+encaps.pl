/*Grégory Haton 18910030 */
sum_list([], 0).

sum_list([X|Xs],Total) :- sum_list(Xs,T), Total is T + X.


encaps([], _).
encaps([X|Xs], E):- E1 is [[, X, ]].

