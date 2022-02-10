//int a = 1; // un entier (hérite de num)
var a = 1; // un entier
//double b = 2.5; // un nombre à virgule flottante (hérite de num)
var b = 2.5; // un nombre à virgule flottante
//String c = 'hello'; // une chaîne de caractères
var c = 'hello'; // une chaîne de caractères
//bool d = false; // un booléen
var d = false; // un booléen
var fruits = ['pomme', 'banane', 'fraise', 'cerise']; // une liste

main() {
  // afficher une variable :
  print(a);
  print(b);
  print(c);
  print(d);

  // afficher le type d'une variable :
  print(a.runtimeType);
  print(b.runtimeType);
  print(c.runtimeType);
  print(d.runtimeType);

  // tester le type d'une variable :
  //print(isInteger(a));
  print(a is int);
  print(b is double);
  print(c is String);
  print(d is bool);
}
