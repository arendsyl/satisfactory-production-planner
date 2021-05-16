:- [buildings/buildings].
:- [recipes/recipes].
:- [iron_ingots].

plates(In, Out, [Prec, [plate, Variant, N]]) :-
    iron_ingots(In, Ingots, Prec),
    constructing([plate, Variant, Ingots, N], Out).
    