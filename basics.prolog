:- use_module(library(clpfd)).
:- use_module(library(clpq)).

:- [buildings/buildings].
:- [recipes/recipes].

% MINING
mining([Tier, Purity, In, N], Out) :- 
    miner(Tier, [Purity, In], N, Out).

% SMELTING

smelting([Recipe, Variant, In, N], Out) :-
    smelter(Recipe, Variant, In, N, Out).

% CONSTRUCTOR

constructing([Recipe, Variant, In, N], Out) :-
    constructor(Recipe, Variant, In, N, Out).

