:- [buildings/buildings].
:- [recipes/recipes].

iron_ores(In, Out, [[iron_ore, Tier, Purity, N]]) :- 
    mining([Tier, Purity, In, N], Out).