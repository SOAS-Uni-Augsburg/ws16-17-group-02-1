% Aufgabe2b)
include "increasing.mzn";

int: n = 9;

array[1..n] of var 0..9: numbers;

constraint increasing(numbers);
constraint sum(numbers) = product(numbers);

solve satisfy;