% Define some movies with their genres
movie_genre(avengers, action).
movie_genre(inception, thriller).
movie_genre(the_matrix, action).
movie_genre(interstellar, sci_fi).
movie_genre(the_dark_knight, action).
movie_genre(the_shawshank_redemption, drama).
movie_genre(fight_club, drama).
movie_genre(forest_gump, drama).

% Define some user preferences
user_preference(john, action).
user_preference(john, sci_fi).
user_preference(mary, drama).
user_preference(mary, thriller).

% Recommendation predicate
recommendation(User, Movie) :-
    user_preference(User, Genre),
    movie_genre(Movie, Genre).

% Example query:
% recommendation(john, X).
% This query will return all movies recommended for user John based on his preferences.
