// Un raccourci de syntaxe : l'expression =>

class Rectangle {
  final num longueur, largeur;

  Rectangle(this.longueur, this.largeur);

  /*
  affiche() {
    print("[$longueur x $largeur]");
  }

  num aire() {
    return longueur * largeur;
  }

  void affichePerimetre() {
    var perimetre = 2 * (longueur * largeur);
    print('Périmètre : $perimetre');
  }
  */

  // flat arrow
  // L'expression => expr est un raccourci de syntaxe pour { return expr; }. Une seule expression expr est possible.
  affiche() => print("[$longueur x $largeur]");

  num aire() => longueur * largeur;

  void affichePerimetre() => print('Périmètre : ${2 * (longueur * largeur)}');
}

void main() {
  var r1 = Rectangle(5, 5);

  r1.affiche();

  print(r1.aire());
  r1.affichePerimetre();
}
