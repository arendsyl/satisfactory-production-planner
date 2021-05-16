:- [buildings/buildings].
:- [recipes/recipes].
:- [iron_ingots].

iron_rods(In, Out, [Prec, [iron_rod, Variant, N]]) :-
    iron_ingots(In, Ingots, Prec),
    constructing([iron_rod, Variant, Ingots, N], Out).