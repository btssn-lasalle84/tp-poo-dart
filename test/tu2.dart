import 'package:test/test.dart';
import '../src/boisson.dart';

void main()
{
  test('Boisson accesseurs', ()
  {
    var cafe = Boisson("Café", 0.35);
    expect(cafe.prix, equals(0.35));
    expect(cafe.intitule, equals("Café"));
  });
}
