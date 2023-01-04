import 'package:flutter/foundation.dart';

class CounterProvider with ChangeNotifier {
  int counter;

  CounterProvider({this.counter = 0});

  void increment() {
    counter += 1;
    // Notifier
    notifyListeners();
  }
}
