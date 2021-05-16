:- [buildings/buildings].
:- [recipes/recipes].
:- [iron_ores].

iron_ingots(In, Out, Chain) :-
    iron_ores(In, Ores, Prec),
    append(Prec, [[iron_ingot, Variant, N]], Chain),
    smelting([iron_ingot, Variant, Ores, N], Out).