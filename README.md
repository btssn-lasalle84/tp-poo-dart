<img alt="points bar" align="right" height="36" src="../../blob/badges/.github/badges/points-bar.svg" />

![](https://img.shields.io/badge/Github-Classroom-green.svg) ![Dart Badge](https://img.shields.io/badge/Dart-0175C2?logo=dart&logoColor=fff&style=plastic)

# TP POO : DART

- [TP POO : DART](#tp-poo--dart)
  - [Le langage Dart](#le-langage-dart)
    - [Présentation](#présentation)
    - [Le typage](#le-typage)
    - [La syntaxe](#la-syntaxe)
    - [Interprétation de code POO](#interprétation-de-code-poo)
  - [Travaux pratiques](#travaux-pratiques)
    - [Pré-requis](#pré-requis)
    - [Travail demandé](#travail-demandé)
  - [Voir aussi](#voir-aussi)
    - [Dart](#dart)
    - [Flutter](#flutter)
  - [Tests unitaires](#tests-unitaires)
  - [Bac à sable et développement en ligne](#bac-à-sable-et-développement-en-ligne)

Les objectifs de ce TP sont de s’initier à la programmation Dart en transférant ses connaissances de la programmation orientée objet.

> Pour les enseignants, ceci est un "petit" devoir pour [Github Classroom](https://btssn-lasalle84.github.io/guides-developpement-logiciel/guide-classroom.html). Il montre l'utilisation des tests unitaires en Dart, la notation automatique et l'insertion d'un badge pour l'affichage de la note.

## Le langage Dart

Cette partie présente les éléments essentiels à connaître sur Dart. Évidemment, cela ne remplace pas un cours ou la documentation officielle du langage.

### Présentation

**Dart** est un langage de programmation optimisé pour les applications sur plusieurs plateformes. Il est développé par Google et est utilisé pour créer des applications mobiles, de bureau, de serveur et web.

[Dart](https://fr.wikipedia.org/wiki/Dart_(langage)) est un langage orienté objet, basé sur la classe, récupérateur de mémoire avec une syntaxe de type C. Dart peut se compiler en code natif ou en JavaScript (compilateur `dart2js`).

Le kit de développement logiciel (SDK) Dart est livré avec une VM Dart autonome, permettant au code Dart de s'exécuter dans un environnement d'interface de ligne de commande.

Ces outils comprennent le compilateur `dart2js` et un gestionnaire de packages appelé `pub`. Dart est livré avec une bibliothèque standard complète permettant aux utilisateurs d'écrire des applications système entièrement fonctionnelles, telles que des serveurs web personnalisés.

> Le projet a été fondé par Lars Bak et Kasper Lund. Dart 1.0 est sorti le 14 novembre 2013. Dart 2.6 a introduit une nouvelle extension : `dart2native`. Cette fonction étend la compilation native aux plates-formes de bureau Linux, macOS et Windows.

Ressources :

- Site officiel : https://dart.dev/
- Installation : https://dart.dev/get-dart
- Présentation du langage : https://dart.dev/guides/language/language-tour et https://dart.dev/samples

> Le classement de Dart à l'indice TIOBE : https://www.tiobe.com/tiobe-index/

### Le typage

Tous les langages de programmation permettent de manipuler des valeurs avec des variables.

Le typage d’une variable consiste à associer à son nom un « type » de donnée.

Pour rappel, le « type » est la convention d’interprétation (codage) de la séquence de bits qui constitue la variable. Le type de la variable spécifie aussi la longueur de cette séquence (8 bits, 32 bits, 64 bits, ...).

Suivant les langages de programmation, il existe plusieurs manières de considérer le typage :

- Typage statique : il consiste à demander au programmeur de déclarer expressément chaque variable en indiquant son type. Exemples de langage à typage statique : C, C++, Java, C#
- Typage dynamique : il consiste à laisser l’interpréteur réaliser cette opération de typage « à la volée » lors de l’exécution du code. C’est la valeur affectée à la variable qui précisera son type. Exemples de langage à typage dynamique : PHP, Perl, Python, Javascript, bash (_shell_ Linux)
- Typage fort : Un langage de programmation est dit fortement typé lorsqu’il garantit que les types de données employés décrivent correctement les données manipulées. Exemples de langage fortement typé : C++, Java, C#, Python
- Typage faible : Un langage de programmation est dit faiblement typé lorsqu’il ne considère pas comme une erreur les changements de types. Exemples de langage faiblement typé : PHP, Javascript, C (car il accepte les transtypages implicites comme `int` vers `short`)

Le langage Dart est doté d’un **typage fort**.

> Dans Dart, tout est objet. Ils héritent tous de la classe `Object`. Une variable stocke une référence sur un objet.

Exemple d’utilisation des types en Dart (`type.dart`) :

```dart
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

  // cast voir l'opérateur as
}
```

> Un programme Dart doit posséder une fonction `main()`.

### La syntaxe

Le langage Dart utilise la syntaxe du langage C.

> La partie POO emprunte des notions à Java.

### Interprétation de code POO

Soit le programme `poo.dart` :

```dart
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
```

> Contrairement à d'autres langages POO, Dart ne possède pas les visibilités `public`, `private` ou `protected`. Par contre, il est possible de préfixer les variables membres (attribut) avec un '`_`' pour la déclarer privée. Attention, ici privé ne signifie pas que le membre est disponible uniquement pour la classe dans lequel il se trouve, mais qu'il est accessible dans le fichier (et non accessible aux autres fichiers).

Question 1. Qu’est-ce que `Point` ?

Question 2. Qu’est-ce que `p1` ?

Question 3. Qu’est-ce que `x` ?

Question 4. Qu’est-ce que `distance()` ?

Question 5. Qu’est-ce que fait `affiche()` ?

Question 6. Qu’est-ce que `Point()` ?

> A compléter dans le fichier `compte-rendu.md` (au format Markdown) fourni.

## Travaux pratiques

### Pré-requis

Lien : https://dart.dev/get-dart

Installation sous GNU/Linux Ubuntu :

```sh
$ sudo wget -qO /etc/apt/trusted.gpg.d/dart_linux_signing_key.asc https://dl-ssl.google.com/linux/linux_signing_key.pub
$ sudo wget -qO /etc/apt/sources.list.d/dart_stable.list https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list

$ sudo apt update
$ sudo apt install -y dart
```

Version de Dart :

```sh
$ dart --version
Dart SDK version: 2.16.1 (stable) (Unknown timestamp) on "linux_x64"
```

Le programme `helloworld.dart` :

```dart
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
```

### Travail demandé

Pour l’écriture d’un programme orientée objet en Dart, on désire disposer du concept de `Boisson`.

Une `Boisson` doit posséder un intitulé et un prix. Il est possible d’obtenir l'intitulé ainsi que le prix de cette solde. Lorsque l’on crée une boisson, il est possible de préciser son intitulé et son prix sinon elle aura des valeurs nulles par défaut (`''` pour l'intitulé).

Fournir un programme `boisson.dart` qui permet de répondre aux questions suivantes :

Question 7. Implémenter la classe `Boisson`.

Question 8. Instancier un objet `boisson` en utilisant le constructeur par défaut et un objet `cafe` dont l'intitulé est "Café" et le prix fixé à `0.35`.

Question 9. Donner l’instruction qui permet d’afficher simplement le prix et l'intitulé du `cafe`.

Question 10. Afficher `boisson` et `cafe` avec la méthode `affiche()`.

## Voir aussi

### Dart

- Les bases du langage : https://dart.dev/guides/language/language-tour

- Particularités du langage : https://dart.dev/codelabs/dart-cheatsheet

Exemple : [fat-arrow-shorthand.dart](src/fat-arrow-shorthand.dart)

- Fonction anonyme (_anonymous_, parfois nommée _lambda_ ou _closure_)

```dart
([[Type] param1[, …]]) {
  codeBlock;
};
```

Exemple : [anonymous.dart](src/anonymous.dart)

- Programmation asynchrone : https://dart.dev/codelabs/async-await

  - opération synchrone : une opération synchrone empêche les autres opérations de s'exécuter jusqu'à ce qu'elle se termine.
  - fonction synchrone : une fonction synchrone n'exécute que des opérations synchrones.
  - opération asynchrone : une fois lancée, une opération asynchrone permet à d'autres opérations de s'exécuter avant qu'elle ne se termine.
  - fonction asynchrone : une fonction asynchrone effectue au moins une opération asynchrone et peut également effectuer des opérations synchrones.

Dart fournit une classe `Future` qui représente le résultat d'une opération asynchrone. Le résultat peut avoir deux états : complet (l'opération asynchrone s'est terminée avec succès et a retourné une valeur ou a généré une erreur) ou incomplet (en attente que l'opération asynchrone se termine ou génère une erreur).

Le type `T` de la valeur retournée est indiqué comme ceci : `Future<T>` ou `Future<void>` s'il n'y a pas de valeur.

Pour définir une fonction asynchrone, il faut placer le mot clé `async` devant le corps de la fonction :

```dart
void foo() async { ··· }
```

Il est possible d'utiliser le mot clé `await` pour obtenir le résultat complété d'une fonction asynchrone :

```dart
print(await foo());
```

Exemples : [future.dart](src/future.dart), [async-await.dart](src/async-await.dart) et [future-then.dart](src/future-then.dart)

### Flutter

Google a introduit **Flutter** pour le développement d'applications mobiles natives sur Android et iOS. Flutter est un SDK d'application mobile, complet avec un cadre de travail, des _widgets_ et des outils, qui donne aux développeurs un moyen de construire et de déployer des applications mobiles, écrites en **Dart**.

> Flutter fonctionne avec Firebase et d'autres SDK d'applications mobiles et est open source.

Installation : https://docs.flutter.dev/get-started/install/

```sh
$ sudo snap install flutter --classic

$ flutter sdk-path
/home/tv/snap/flutter/common/flutter

$ flutter doctor
Doctor summary (to see all details, run flutter doctor -v):
[✓] Flutter (Channel stable, 2.10.0, on Ubuntu 20.04.3 LTS 5.4.0-96-generic, locale fr_FR.UTF-8)
[✓] Android toolchain - develop for Android devices (Android SDK version 30.0.3)
[✓] Chrome - develop for the web
[✓] Android Studio (version 3.6)
[✓] Android Studio (version 2021.1)
[✓] VS Code (version 1.64.0)
[✓] Connected device (1 available)
[✓] HTTP Host Availability

• No issues found!

$ which flutter dart
/snap/bin/flutter
/usr/bin/dart
```

> Avec VSCode : https://docs.flutter.dev/get-started/editor?tab=vscode

Documentation : https://docs.flutter.dev/

## Tests unitaires

Installation :

```sh
$ cat pubspec.yaml
```sh
```yaml
name: tu
description: ...

environment:
  sdk: '>=2.12.0 <3.0.0'

dependencies: {test: ^1.21.4}
```

```sh
$ dart pub get
```

Lancement des tests :

```sh
$ dart test/tu1.dart
$ dart test/tu2.dart
```

## Bac à sable et développement en ligne

Il est souvent nécessaire de passer par un "bac à sable".

> En informatique, le bac à sable (sandbox) est une zone d'essai permettant d'exécuter des programmes en phase de test ou dans lesquels la confiance est incertaine. C'est notamment très utilisé en sécurité informatique pour sa notion d'isolation.

Il existe de nombreux sites web qui fournissent des EDI (Environnement de Développement Intégré) en ligne pour tester du code ou des services : un espace d'apprentissage séparé. Ils permettent aussi d'échanger des exemples.

Quelques sites :

- DartPad : https://dartpad.dev/
- Coding Ground For Developers : https://www.tutorialspoint.com/codingground.htm pour tout !
  - Dart : https://www.tutorialspoint.com/execute_dart_online.php
  - Markdown : https://www.tutorialspoint.com/online_markdown_editor.php
- Visual Studio Code Online : https://vscode.dev/
- Codeanywhere (Cloud IDE) : https://codeanywhere.com/

---
Thierry Vaira : **[thierry(dot)vaira(at)gmail(dot)com](mailto:thierry.vaira@gmail.com)**
