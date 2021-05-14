% MINING

% Node
node(impure, 30).
node(normal, 60).
node(pure, 120).

% INGOTS

% Iron
iron_ingot(base, [30|_], [30|_]).

% BASE MAT

% Screws
screws(cast_screw, [12.5|_], [50|_]).
screws(base, [15|_], [60|_]).

% Plates
plate(base, [30|_], [20|_]).
