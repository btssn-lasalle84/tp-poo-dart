// Future en action
// alternative à async/await

// then() se déclenche s'il est invoqué sur un Future qui se termine par une valeur
// Lien : https://dart.dev/guides/libraries/futures-error-handling

Future<String> commanderBoisson() {
  // cf. accès fichier, base de données, réseau ...
  return Future.delayed(const Duration(seconds: 2), () => 'Café expresso');
  // ou une exception
  /*return Future.delayed(
      const Duration(seconds: 2), () => throw Exception('Plus de gobelet !'));*/
}

void main() {
  commanderBoisson()
      .then((boisson) => print('Boisson : $boisson'))
      .catchError((e) {
    print('$e');
  }).whenComplete(() => print('Terminé'));
  print('En attente d\'une commande ...');
}
