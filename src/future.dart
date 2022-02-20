// Future en action

Future<void> commanderBoisson() {
  // cf. accès fichier, base de données, réseau ...
  return Future.delayed(
      const Duration(seconds: 2), () => print('Café expresso'));
  // ou une exception
  /*return Future.delayed(
      const Duration(seconds: 2), () => throw Exception('Plus de gobelet !'));*/
}

void main() {
  commanderBoisson();
  print('En attente d\'une commande ...');
}
