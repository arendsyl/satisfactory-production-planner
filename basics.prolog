:- use_module(library(clpfd)).
:- use_module(library(clpq)).

:- [recipes].

% MINING

miner(mk1, [Purity, In], N, Out) :- 
    node(Purity, X),
    {X * N = In},
    {X * N = Out}.
    
miner(mk2, [Purity, In], N, Out) :-
    node(Purity, X),
    {X * N * 2 = In},
    {X * N * 2 = Out}.

mining([Tier, Purity, In, N], Out) :- 
    miner(Tier, [Purity, In], N, Out).

% SMELTING

smelter(Recipe, Variant, In, N, Out) :-
    call(Recipe, Variant, [X|_], [Y|_]),
    {In = N * X},
    {Out = N * Y}.

smelting([Recipe, Variant, In, N], Out) :-
    smelter(Recipe, Variant, In, N, Out).

% CONSTRUCTOR

constructor(Recipe, Variant, In, N, Out) :- 
    call(Recipe, Variant, [X|_], [Y|_]),
    {In = X * N},
    {Out = Y * N}.
