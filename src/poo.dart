// Importe la bibliothèque mathématique (math) pour la fonction sqrt
import 'dart:math' as math;

class Point {
  //final num x, y; // final -> constant
  num x, y;

  // Un constructeur avec deux paramètres obligatoires
  Point(this.x, this.y);

  // Un constructeur nommé avec une liste d'initialisation
  Point.origin()
      : x = 0,
        y = 0;

  affiche() {
    print("[${x},${y}]");
  }

  num distance(Point p) {
    var dx = x - p.x;
    var dy = y - p.y;
    return math.sqrt(dx * dx + dy * dy);
  }

  Point operator +(Point p) => Point(x + p.x, y + p.y);
}

void main() {
  var p1 = Point(2, 5); // new est un mot optionnel
  //print(p1.x); print(p1.y);
  p1.affiche();
  var p2 = Point.origin();
  var distance = p1.distance(p2);
  print(distance);
}
