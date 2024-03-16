% family.pl

% Define parent relationships
parent(john, david).
parent(john, emily).
parent(emma, david).
parent(emma, emily).
parent(peter, anna).
parent(peter, sophia).
parent(sarah, anna).
parent(sarah, sophia).
parent(david, lisa).
parent(david, michael).
parent(lisa, jacob).
parent(lisa, mia).

% Define gender
male(john).
male(peter).
male(david).
male(michael).
male(jacob).

female(emma).
female(sarah).
female(anna).
female(sophia).
female(lisa).
female(mia).
female(emily).

% Define rules for ancestors and siblings
ancestor(X, Y) :-
    parent(X, Y).
ancestor(X, Y) :-
    parent(X, Z),
    ancestor(Z, Y).

sibling(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    X \= Y.

% Define rules for grandparents and grandchildren
grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).

grandchild(X, Y) :-
    grandparent(Y, X).

% Example usage:
% ?- grandparent(john, mia).
% ?- sibling(david, emily).
