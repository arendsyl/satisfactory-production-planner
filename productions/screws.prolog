:- [iron_rods].
:- [iron_ingots].
:- [buildings/buildings].
:- [recipes/recipes].

screws(In, Out, Chain) :- 
    iron_ingots(In, Ingots, Prec),
    append(Prec, [[screw, cast_screw, N]], Chain),
    constructing([screw, cast_screw, Ingots, N], Out).

screws(In, Out, Chain) :- 
    iron_rods(In, Rods, Prec),
    append(Prec, [[screw, base, N]], Chain),
    constructing([screw, base, Rods, N], Out).