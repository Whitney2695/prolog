/* Facts */
parent(john, mary).
parent(john, lisa).
parent(mary, anne).
parent(lisa, peter).
parent(lisa, sara).

/* Rules */
ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).

/* Queries */
/*
   ?- ancestor(john, peter).
   This will check if John is an ancestor of Peter.
*/

/*
   ?- parent(john, X).
   This will find all children of John.
*/

/*
   ?- ancestor(mary, peter).
   This will check if Mary is an ancestor of Peter.
*/
