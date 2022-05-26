import 'package:dartilities/dartilities.dart';

challengeDestiny(String? fool) {
  print(
    fool == null
        ? "No one was fool enough to challenge that which can't be challenged."
        : "$fool tried to challenge destiny, and died.",
  );
}

main() {
  final wiseMan = "Euripides";
  challengeDestiny(wiseMan.nullIf("Euripides".equalityChecker));
  try {
    String? fool;
    fool.throwIfNull("There's always a fool");
  } on ArgumentError catch (e) {
    print(e.message);
  }
}
