import 'dart:io';

// Le programme
main() {
  print("Quelle est votre langue (fr, ...) ? ");
  // saisie d'une chaîne de caractères
  String? langue = stdin.readLineSync();
  var message = '';

  // une instruction conditionnelle
  if (langue == 'fr') // test de la valeur
  {
    message = 'Bonjour le monde';
  } else {
    message = 'Hello world';
  }

  // saisie d'un entier
  print("Donnez un nombre : ");
  int? nb = int.parse(stdin.readLineSync()!);

  var i = 0;
  // une boucle
  while (i < nb) {
    print("${message} ${i + 1} fois");
    i += 1;
  }
}
