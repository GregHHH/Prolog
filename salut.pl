salut :- write('Quel est ton prénom ?'), nl, read(X), write('Bonjour '), write(X).


% ?- consult('salut.pl').
% salut.pl compiled 0.00 sec, 2 clauses
% true.

% ?- salut.
% Quel est ton prénom ?
% |: anna.
% Bonjour anna
% true.


bonjour(anna) :- write('c\'est super de te voir !'), nl, write('à bientôt !').
bonjour(kevin) :- write('salut !').


bonjour(X) :- write('Bonjour '), write(X), write(' comment ça va ?'), nl, read(Y), write('c\'est cool que tu vas '), write(Y).


% ?- bonjour(anna).
% c est super de te voir !
% à bientôt !
% true ;
% Bonjour, comment ça va ?
% |: bien.
% c est cool que tu vas bien
% true.


% ?- bonjour(toto).
% Bonjour, toto comment ça va ?
% |: bien.
% c est cool que tu vas bien
% true.

/* Observez ce qui suit :*/

% ?- bonjour(X).
% c est super de te voir !
% à bientôt !
% X = anna ;
% salut !
% X = kevin ;
% Bonjour _G3370 comment ça va ?
% |: bien.
% c est cool que tu vas bien
% true.


aime(toto, titi).
aime(titi, toto). 
aime(X, Y) :- aime(Y, X).

% ?- aime(X, Y).
% X = toto,
% Y = titi ;
% X = titi,
% Y = toto.

/* Mais ... */

% ?- aime(toto,X).
% X = titi ;
% X = titi ;
% X = titi ;
% X = titi .




