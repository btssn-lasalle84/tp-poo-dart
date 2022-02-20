// fonctions anonymes en action

var carre = (int a) {
  return a * a;
};

Function multiplie(int n) {
  return (int i) => n * i;
}

afficheResultat(fabrique) {
  int valeur = fabrique();
  print('Résultat : $valeur');
}

void main() {
  print("Exemple 1");
  print(carre(2));
  print(carre(3));
  print(carre(4));

  print("Exemple 2");
  var multiplie2 = multiplie(2);
  var multiplie3 = multiplie(3);
  print(multiplie2(5));
  print(multiplie3(5));

  print("Exemple 3");
  afficheResultat(() {
    // plusieurs expressions
    int valeur1 = 40;
    int valeur2 = 2;
    int somme = valeur1 + valeur2;
    return somme;
  });
  afficheResultat(() => 2 + 2); // une seule expression

  print("Exemple 4");
  const fruits = ['pomme', 'banane', 'fraise', 'cerise'];
  fruits.forEach((fruit) {
    print('${fruits.indexOf(fruit)} : $fruit');
  });
}
