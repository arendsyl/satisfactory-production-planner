:- [buildings/buildings].
:- [recipes/recipes].
:- [iron_ores].

iron_ingots(In, Out, [Prec, [iron_ingot, Variant, N]]) :-
    iron_ores(In, Ores, Prec),
    smelting([iron_ingot, Variant, Ores, N], Out).