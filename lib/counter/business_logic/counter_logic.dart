import 'package:flutter/material.dart';

class Counter extends ChangeNotifier {
  int count = 0;

  increment() {
    count += 1;
    notifyListeners();
  }

  decrement() {
    if (count > 0) {
      count -= 1;
      notifyListeners();
    }
  }
}
