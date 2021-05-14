:- use_module(library(clpfd)).
:- use_module(library(clpq)).

constructor(Recipe, Variant, In, N, Out) :- 
    call(Recipe, Variant, [X|_], [Y|_]),
    {In = X * N},
    {Out = Y * N}.