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

smelter([Type, In], N, Out) :-
    ingot(Type, X, Y),
    {In = N * X},
    {Out = N * Y}.

smelting([Type, In, N], Out) :-
    smelter([Type, In], N, Out).
