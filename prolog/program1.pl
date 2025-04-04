% Write a program in prolog to declare some facts and verify them.

% Facts
likes(alice, apple).
likes(bob, banana).
likes(charlie, mango).
likes(alice, mango).
likes(david, apple).

% Rule
friends_with_common_taste(X, Y) :-
    likes(X, Fruit),
    likes(Y, Fruit),
    X \= Y.

% Another Rule: checks if someone likes a specific fruit
likes_fruit(Person, Fruit) :-
    likes(Person, Fruit).
