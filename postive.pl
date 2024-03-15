% niceness.pl

% List of positive attributes
positive_attribute(positive).
positive_attribute(nice).
positive_attribute(kind).
positive_attribute(friendly).
positive_attribute(helpful).
positive_attribute(caring).

% Define a person
person(alice).
person(bob).
person(charlie).
person(diana).
person(edward).

% Define predicates for expressing niceness
nice(Person) :-
    person(Person),
    positive_attribute(Attribute),
    likes(Person, Attribute).

% Relationships between people
likes(alice, friendly).
likes(alice, caring).
likes(bob, helpful).
likes(charlie, kind).
likes(diana, positive).
likes(edward, nice).

% Example usage:
% ?- nice(Person).
