#Problem 1 sum-up-numbers-simple(L, N)
sum-up-numbers-simple([],0).
sum-up-numbers-simple([A|B], N):-
    number(A), 
    sum-up-numbers-simple(B, R), 
    N is B + R

sum-up-numbers-simple([_|B], N):-
    sum-up-numbers-simple(B, N). 
