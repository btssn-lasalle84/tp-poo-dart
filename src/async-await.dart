// fonction asynchrone en action

Future<void> afficherCommande() async {
  /*print('En attente d\'une commande ...');
  var commande = await commanderBoisson();
  print('Vous avez commandé : $commande');*/
  try {
    print('En attente d\'une commande ...');
    var commande = await commanderBoisson();
    print('Vous avez commandé : $commande');
  } catch (e) {
    print('Exception : $e');
  }
}

Future<String> commanderBoisson() {
  // cf. accès fichier, base de données, réseau ...
  return Future.delayed(const Duration(seconds: 4), () => 'Café expresso');
  //return Future.delayed(const Duration(seconds: 4), () => throw 'Plus de gobelet !');
}

void main() async {
  attendre(4);
  await afficherCommande();
}

void attendre(int s) {
  for (var i = 1; i <= s; i++) {
    Future.delayed(Duration(seconds: i), () => print(i));
  }
}
