/* Construire une famille :
 jean et marie ont trois enfants : paul, marc et laure.
 paul et sa femme joelle ont un enfant : rosa.
 marc et sa femme yasmine ont un enfant : mehdi.
 laure et son mari yanis ont deux enfants : lisa et samson.*/



/* les faits */

homme(jean).
homme(paul).
homme(marc).
homme(yanis).
homme(mehdi).
homme(samson).



femme(marie).
femme(laure).
femme(joelle).
femme(yasmine).
femme(lisa).
femme(rosa).




/* continuez à donner les prédicats suivant l'énoncé : */

pere(jean, paul).
pere(jean, marc).
pere(jean,laure).

mere(marie, paul).
mere(marie, marc).
mere(marie,laure).







fille(X, Y):- feminin(X), parent(Y, X).

fils(X, Y):- masculin(X), parent(Y, X)

frere(X, Y):- masculin(X), parent(Z, X), parent(Z, Y).

soeur(X, Y):- feminin(X), parent(Z, X), parent(Z, Y).

parent(X,Y) :- mere(X,Y) ; pere(X,Y).     
 
enfant(X, Y) :- parent(Y,X).             
     
grandparent(X, Y):- parent(X, T), parent(T, Y).

oncle(X, Y) :-                                 /* X est l'oncle de Y SI X est le frere de pere(Y) OU de mere(Y) */ ?????????????????

tante(X, Y) :-                                 /* X est la tante  de Y SI X est la soeur de pere(Y) OU de mere(Y) */

cousin(X, Y) :-                                         

different(X, Y):- not(X = Y).

frere/2(X, Y):- masculin(X), parent(Z, X), parent(Z, Y), different(X, Y).















oncle(marc,rosa).
oncle(marc,lisa).
oncle(marc,samson).

oncle(paul,medhi).
oncle(paul,lisa).
oncle(paul,samson).


tante(yasmine,rosa).
tante(yasmine,lisa).
tante(yasmine,samson).

tante(laure,rosa).
tante(laure,medhi).

cousin(paul,medhi).
cousin(paul,lisa).
cousin(paul,samson).

cousin(medhi,rosa).
cousin(medhi,lisa).
cousin(medhi,samson).

cousin(samson,rosa).
cousin(samson,medhi).




