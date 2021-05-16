:- [buildings/buildings].
:- [recipes/recipes].
:- [iron_ingots].

plates(In, Out, Chain) :-
    iron_ingots(In, Ingots, Prec),
    append(Prec, [[plate, Variant, N]], Chain),
    constructing([plate, Variant, Ingots, N], Out).
    