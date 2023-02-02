import 'package:test/test.dart';
import '../src/boisson.dart';

void main()
{
  test('Boisson default', ()
  {
    var boisson = Boisson.origin();
    expect(boisson.prix, equals(0.0));
    expect(boisson.intitule, equals(""));
  });
}
