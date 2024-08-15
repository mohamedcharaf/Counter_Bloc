import 'package:flutter/foundation.dart'; // Correction de l'import

@immutable // Ajout de l'annotation @immutable
abstract class CounterEvents { 
  const CounterEvents(); // Constructeur constant pour immutabilité
}

class IncrementCounterValue extends CounterEvents { 
  const IncrementCounterValue(); // Constructeur constant pour l'événement d'incrémentation
}

class DecrementCounterValue extends CounterEvents { 
  const DecrementCounterValue(); // Constructeur constant pour l'événement de décrémentation
}
