% Aufgabe1b)

var bool: tick; var bool: trick; var bool: track;

constraint trick <-> track;
constraint not tick -> not trick;
constraint not (not trick /\ not track);   

solve satisfy;