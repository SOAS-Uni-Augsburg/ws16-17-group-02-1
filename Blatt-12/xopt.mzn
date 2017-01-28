% Aufgabe2a)

var 0..10: x; var 0..10: n;

%constraint x mod 4 = 0;
constraint x >= n;
constraint x/4 = n;

solve minimize (x - 7) * (x - 7);
output ["x ist: \(x)"]