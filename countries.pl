% countries_and_capitals.pl

% Define some facts about countries and their capitals
capital(paris, france).
capital(berlin, germany).
capital(london, uk).
capital(rome, italy).
capital(madrid, spain).

% Define rules for checking if a city is a capital
is_capital(City) :-
    capital(City, _).

% Define a rule for finding the country given a capital
country(Capital, Country) :-
    capital(Capital, Country).

% Example usage:
% ?- is_capital(london).
% ?- country(paris, Country).
