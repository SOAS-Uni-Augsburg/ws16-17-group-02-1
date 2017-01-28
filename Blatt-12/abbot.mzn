% Aufgabe1a)

var 0..100: anzMaenner; var 0..100: anzFrauen; var 0..100: anzKinder;

constraint anzMaenner + anzFrauen + anzKinder = 100;
constraint 3 * anzMaenner + 2 * anzFrauen + 0.5 * anzKinder = 100;
constraint 5 * anzMaenner = anzFrauen;

solve satisfy;