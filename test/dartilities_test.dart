import 'package:dartilities/dartilities.dart';
import 'package:test/test.dart';

bool isDragon(String name) => name == "Rand al'Thor" || name == "Lewis Therin";

void main() {
  test('Comparer', () {
    expect("Ishmael".equalityChecker("Shai'tan"), false);
    expect(7.equalityChecker(6), false);
    expect(2.equalityChecker(2.0), true);
  });

  test('Nullify on condition', () {
    expect("Rand al'Thor".nullIf(isDragon), null);
    expect("Logain".nullIf(isDragon), "Logain");
  });

  test('Throws if null', () {
    String? goodSeanchan;
    expect(() => goodSeanchan.throwIfNull(), throwsA(isA<ArgumentError>()));
    goodSeanchan = "Tuon";
    expect(goodSeanchan.throwIfNull(), "Tuon");
  });
}
