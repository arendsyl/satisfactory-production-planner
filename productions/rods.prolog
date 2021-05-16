:- [buildings/buildings].
:- [recipes/recipes].
:- [iron_ingots].

iron_rods(In, Out, Chain) :-
    iron_ingots(In, Ingots, Prec),
    append(Prec, [[iron_ingot, Variant, N]], Chain),
    constructing([iron_rod, Variant, Ingots, N], Out).