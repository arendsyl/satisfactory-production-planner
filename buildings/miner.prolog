:- use_module(library(clpfd)).
:- use_module(library(clpq)).

:- ['./recipes/raw/mineral'].

miner(mk1, [Purity, In], N, Out) :- 
    node(Purity, X),
    {X * N = In},
    {X * N = Out}.
    
miner(mk2, [Purity, In], N, Out) :-
    node(Purity, X),
    {X * N * 2 = In},
    {X * N * 2 = Out}.