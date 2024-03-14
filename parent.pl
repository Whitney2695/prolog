/* Facts */
parent(john, mary).
parent(john, adam).
parent(eve, mary).
parent(eve, adam).
parent(mary, peter).
parent(adam, lisa).
male(john).
male(adam).
male(peter).
female(eve).
female(mary).
female(lisa).

/* Rules */
father(Father, Child) :-
    parent(Father, Child),
    male(Father).

mother(Mother, Child) :-
    parent(Mother, Child),
    female(Mother).

sibling(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    X \= Y.

grandparent(Grandparent, Grandchild) :-
    parent(Grandparent, Parent),
    parent(Parent, Grandchild).
