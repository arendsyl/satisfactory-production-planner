:- use_module(library(clpfd)).
:- use_module(library(clpq)).

% MINING

node(impure, 30).
node(normal, 60).
node(pure, 120).

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

ingot(iron, 30, 30).

smelter([Type, In], N, Out) :-
    ingot(Type, X, Y),
    {In = N * X},
    {Out = N * Y}.

smelting([Type, In, N], Out) :-
    smelter([Type, In], N, Out).
