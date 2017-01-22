% Blatt12Aufgabe1b
include "alldifferent.mzn";

int: A = 1; int: B = 2; int: C = 3; int: D = 4; int: E = 5; int: F = 6; int: G = 7; int: H = 8;

set of int: Nodes = {A, B, C, D, E, F, G, H};
set of int: Digits = 1..8;
array[Nodes] of var Digits: value;

constraint alldifferent(value);
constraint value[A] != value[C]+1 /\ value[A] != value[D]+1 /\ value[A] != value[B]+1;
constraint value[B] != value[A]+1 /\ value[B] != value[E]+1 /\ value[B] != value[F]+1 /\ value[B] != value[C]+1;
constraint value[C] != value[A]+1 /\ value[C] != value[B]+1 /\ value[C] != value[F]+1 /\ value[C] != value[E]+1 /\ value[C] != value[G]+1 /\ value[C] != value[D]+1;
constraint value[D] != value[C]+1 /\ value[D] != value[A]+1 /\ value[D] != value[F]+1 /\ value[D] != value[G]+1;
constraint value[E] != value[C]+1 /\ value[E] != value[B]+1 /\ value[E] != value[F]+1 /\ value[E] != value[H]+1;
constraint value[F] != value[C]+1 /\ value[F] != value[B]+1 /\ value[F] != value[D]+1 /\ value[F] != value[E]+1 /\ value[F] != value[H]+1 /\ value[F] != value[G]+1;
constraint value[G] != value[C]+1 /\ value[G] != value[D]+1 /\ value[G] != value[F]+1 /\ value[G] != value[H]+1;
constraint value[H] != value[E]+1 /\ value[H] != value[F]+1 /\ value[H] != value[G]+1;
solve satisfy;