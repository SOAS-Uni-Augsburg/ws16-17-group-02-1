% Aufgabe1c)2

% Ritter entspricht true und Schurke false

var bool: A; var bool: B; var bool: C;

constraint A <-> (A -> not B /\ not C) /\ (B -> not A /\ not C) /\ (C -> not A /\ not B);
constraint B <-> (not A -> B /\ C) /\ (not B -> A /\ C) /\ (not C -> A /\ B);
constraint C <-> A /\ B /\ C;

solve satisfy;