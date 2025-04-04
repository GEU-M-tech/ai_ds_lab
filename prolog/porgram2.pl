% Write a program in prolog to define a rule and verify it.

% Facts
parent(john, mary).      % John is a parent of Mary
parent(john, tom).       % John is a parent of Tom
parent(mary, susan).     % Mary is a parent of Susan
parent(tom, jack).       % Tom is a parent of Jack

% Rule: grandparent(X, Y) means X is a grandparent of Y
grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).
