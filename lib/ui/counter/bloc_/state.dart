import 'package:flutter/foundation.dart'; // Correction de l'import

@immutable // Annotation pour indiquer que les classes sont immuables
abstract class CounterStates { 
  const CounterStates(); // Constructeur constant pour immutabilité
}

class InitialCounterState extends CounterStates { 
  const InitialCounterState(); // Constructeur constant pour l'état initial
}

class SuccessCounterState extends CounterStates { 
  final int counterValue;

  const SuccessCounterState(this.counterValue); // Constructeur constant pour l'état de succès avec une valeur

  @override
  String toString() => 'SuccessCounterState(counterValue: $counterValue)'; // Méthode toString pour faciliter le débogage
}
