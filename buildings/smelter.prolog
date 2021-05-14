:- use_module(library(clpfd)).
:- use_module(library(clpq)).

smelter(Recipe, Variant, In, N, Out) :-
    call(Recipe, Variant, [X|_], [Y|_]),
    {In = N * X},
    {Out = N * Y}.