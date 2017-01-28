% Aufgabe1c)1

% Ritter entspricht true und Schurke false

var bool: A; var bool: B; var bool: C;

constraint A <-> (not A -> B /\ C) /\ (not B -> A /\ C) /\ (not C -> A /\ B);
constraint B <-> (A -> not B /\ not C) /\ (B -> not A /\ not C) /\ (C -> not A /\ not B);
constraint C <-> not A /\ not B /\ not C;

solve satisfy;